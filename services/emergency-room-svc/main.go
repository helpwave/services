package main

import (
	"common"
	"context"
	"emergency-room-svc/api"
	"emergency-room-svc/models"
	"gorm.io/gorm"
	"hwgorm"
	"hwutil"
	"logging"

	daprcmn "github.com/dapr/go-sdk/service/common"
	zlog "github.com/rs/zerolog/log"
)

const ServiceName = "emergency-room-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, false)

	hwgorm.SetupDatabase(
		hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
		hwutil.GetEnvOr("POSTGRES_USER", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PASSWORD", "postgres"),
		hwutil.GetEnvOr("POSTGRES_DB", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PORT", "5432"),
	)

	addr := ":" + hwutil.GetEnvOr("PORT", "8080")
	service := common.NewDaprService(addr)

	common.MustAddServiceInvocationHandler(service, "create-emergency-room", createERHandler)
	common.MustAddServiceInvocationHandler(service, "get-emergency-room", getERHandler)
	common.MustAddServiceInvocationHandler(service, "get-emergency-rooms", getERsHandler)
	common.MustAddServiceInvocationHandler(service, "update-emergency-room", updateERHandler)
	common.MustAddServiceInvocationHandler(service, "delete-emergency-room", deleteERHandler)

	zlog.Info().Str("addr", addr).Msg("starting dapr service")
	common.MustStartService(service)
}

//
// Handlers
//

func createERHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*daprcmn.Content, error) {
	log, logCtx := common.GetHandlerLogger("createERHandler", ctx)

	// TODO: Auth

	// Parse
	request := api.CreateERRequestV1{}
	if err := hwutil.ParseValidJson(in.Data, &request); err != nil {
		log.Warn().Err(err).Msg("invalid input")
		return nil, err
	}
	log.Debug().Str("body", logging.Formatted(request)).Send()

	// Insert
	emergencyRoom := models.EmergencyRoom{
		EmergencyRoomBase: request.EmergencyRoomBase,
		Departments:       models.UUIDsToDepartments(request.Departments),
	}
	log.Debug().Str("model", logging.Formatted(emergencyRoom)).Send()

	db := hwgorm.GetDB(logCtx)
	db = db.Omit("Departments.*") // do not attempt to upsert Departments, they have to exist already

	result := db.Create(&emergencyRoom)
	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, err
	}

	// Response
	response := api.GetSingleERResponseV1{
		ID:                emergencyRoom.ID,
		EmergencyRoomBase: emergencyRoom.EmergencyRoomBase,
		Departments:       models.DepartmentsToBases(emergencyRoom.Departments),
	}

	out, err := response.ToContent()
	if err != nil {
		log.Error().Err(err).Msg("could not marshall response")
		return nil, err
	}

	return out, nil
}

func getERHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*daprcmn.Content, error) {
	log, logCtx := common.GetHandlerLogger("getERHandler", ctx)

	// TODO: Auth

	// Parse
	request := api.GetSingleERRequestV1{}
	if err := hwutil.ParseValidJson(in.Data, &request); err != nil {
		log.Warn().Err(err).Msg("invalid input")
		return nil, err
	}
	log.Debug().Str("body", logging.Formatted(request)).Send()

	// Get
	emergencyRoom := models.EmergencyRoom{
		ID: request.ID,
	}
	log.Debug().Str("model", logging.Formatted(emergencyRoom)).Send()

	db := hwgorm.GetDB(logCtx)

	result := db.First(&emergencyRoom)

	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, err
	}

	log.Debug().Msgf("result = %v", result)

	// Response
	response := api.GetSingleERResponseV1{
		ID:                emergencyRoom.ID,
		EmergencyRoomBase: emergencyRoom.EmergencyRoomBase,
		Departments:       models.DepartmentsToBases(emergencyRoom.Departments),
	}

	out, err := response.ToContent()
	if err != nil {
		log.Error().Err(err).Msg("could not marshall response")
		return nil, err
	}

	return out, nil
}

func getERsHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*daprcmn.Content, error) {
	log, logCtx := common.GetHandlerLogger("getERsHandler", ctx)

	// TODO: Auth

	// Parse
	request := api.GetERsRequestV1{}
	if err := hwutil.ParseValidJson(in.Data, &request); err != nil {
		log.Warn().Err(err).Msg("invalid input")
		return nil, err
	}
	log.Debug().Str("body", logging.Formatted(request)).Send()

	// Get
	db := hwgorm.GetDB(logCtx)
	db = db.Where(whereClausesForERsQuery(db, &request))

	pageInfo, err := hwgorm.GetPageInfo(db, request.PagedRequest, models.EmergencyRoom{})
	if err != nil {
		log.Warn().Err(err).Msg("database error when fetching page information")
		return nil, err
	}

	var emergencyRooms []models.EmergencyRoom
	tx := db.Scopes(hwgorm.Paginate(pageInfo)).
		Preload("Departments").
		Find(&emergencyRooms)

	if err := tx.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, err
	}

	// Response
	responses := make([]api.GetSingleERResponseV1, len(emergencyRooms))
	for i, emergencyRoom := range emergencyRooms {
		responses[i] = api.GetSingleERResponseV1{
			ID:                emergencyRoom.ID,
			EmergencyRoomBase: emergencyRoom.EmergencyRoomBase,
			Departments:       models.DepartmentsToBases(emergencyRoom.Departments),
		}
	}

	response := api.GetERsResponseV1{
		PageInfo:       pageInfo,
		EmergencyRooms: responses,
	}

	out, err := response.ToContent()
	if err != nil {
		log.Error().Err(err).Msg("could not marshall response")
		return nil, err
	}

	return out, nil
}

func whereClausesForERsQuery(db *gorm.DB, request *api.GetERsRequestV1) *gorm.DB {
	if request.Open != nil {
		db = db.Where("is_open = ?", *request.Open)
	}
	if request.Utilization != nil {
		interval := *request.Utilization
		if interval.Min != nil {
			db = db.Where("utilization >= ?", *interval.Min)
		}
		if interval.Max != nil {
			db = db.Where("utilization <= ?", *interval.Max)
		}
	}
	if request.Location != nil {
		location := *request.Location
		radius := hwgorm.MetersToMiles(100_000) // 100 km radius

		// `<@>` is posgresql's earthdistance operator
		db = db.Where("(location <@> point(?, ?)) < ?", location.Long, location.Lat, radius)
	}
	return db
}
func updateERHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*daprcmn.Content, error) {
	log, logCtx := common.GetHandlerLogger("updateERHandler", ctx)

	// TODO: Auth

	// Parse
	request := api.UpdateERRequestV1{}
	if err := hwutil.ParseValidJson(in.Data, &request); err != nil {
		log.Warn().Err(err).Msg("invalid input")
		return nil, err
	}
	log.Debug().Str("body", logging.Formatted(request)).Send()

	// Update
	db := hwgorm.GetDB(logCtx)

	emergencyRoom := models.EmergencyRoom{
		ID: request.ID,
	}

	updateMap := updatesMap(&request)
	log.Debug().Msg(logging.Formatted(updateMap))

	appendDepartments := models.UUIDsToDepartments(request.AddDepartments)
	log.Debug().Msgf("appendDepartments: %s", logging.Formatted(appendDepartments))

	deleteDepartments := models.UUIDsToDepartments(request.RemoveDepartments)
	log.Debug().Msgf("deleteDepartments: %s", logging.Formatted(deleteDepartments))

	err := db.Transaction(func(tx *gorm.DB) error {

		if err := db.Model(&emergencyRoom).Updates(updateMap).Error; err != nil {
			return err
		}

		departments := db.Model(&emergencyRoom).Association("Departments")

		if err := departments.Append(appendDepartments); err != nil {
			return err
		}

		if len(deleteDepartments) > 0 {
			if err := departments.Delete(deleteDepartments); err != nil {
				return err
			}
		}

		return nil
	})

	if err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, err
	}

	return nil, nil
}

func updatesMap(request *api.UpdateERRequestV1) map[string]interface{} {
	m := make(map[string]interface{})

	if request.Name != nil {
		m["name"] = *request.Name
	}
	if request.Location != nil {
		m["location"] = *request.Location
	}
	if request.DisplayableAddress != nil {
		m["displayable_address"] = *request.DisplayableAddress
	}
	if request.Open != nil {
		m["open"] = *request.Open
	}
	if request.Utilization != nil {
		m["utilization"] = *request.Utilization
	}

	return m
}

func deleteERHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*daprcmn.Content, error) {
	log, logCtx := common.GetHandlerLogger("deleteERHandler", ctx)

	// TODO: Auth

	// Parse
	request := api.DeleteERRequestV1{}
	if err := hwutil.ParseValidJson(in.Data, &request); err != nil {
		log.Warn().Err(err).Msg("invalid input")
		return nil, err
	}
	log.Debug().Str("body", logging.Formatted(request)).Send()

	// Delete
	emergencyRoom := models.EmergencyRoom{
		ID: request.ID,
	}
	log.Debug().Str("model", logging.Formatted(emergencyRoom)).Send()

	db := hwgorm.GetDB(logCtx)

	result := db.Delete(&emergencyRoom)

	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, err
	}

	log.Debug().Msgf("result = %v", result)

	return nil, nil
}
