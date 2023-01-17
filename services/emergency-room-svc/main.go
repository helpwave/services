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

	common.MustAddHWInvocationHandler(service, "create-emergency-room", createERHandler)
	common.MustAddHWInvocationHandler(service, "get-emergency-room", getERHandler)
	common.MustAddHWInvocationHandler(service, "get-emergency-rooms", getERsHandler)
	common.MustAddHWInvocationHandler(service, "delete-emergency-room", deleteERHandler)

	zlog.Info().Str("addr", addr).Msg("starting dapr service")
	common.MustStartService(service)
}

//
// Handlers
//

func createERHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*common.Response, error) {
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
	var response common.Response
	response = api.GetSingleERResponseV1{
		ID:                emergencyRoom.ID,
		EmergencyRoomBase: emergencyRoom.EmergencyRoomBase,
		Departments:       models.DepartmentsToBases(emergencyRoom.Departments),
	}

	return &response, nil
}

func getERHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*common.Response, error) {
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
	var response common.Response
	response = api.GetSingleERResponseV1{
		ID:                emergencyRoom.ID,
		EmergencyRoomBase: emergencyRoom.EmergencyRoomBase,
		Departments:       models.DepartmentsToBases(emergencyRoom.Departments),
	}

	return &response, nil
}

func getERsHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*common.Response, error) {
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

	var response common.Response
	response = api.GetERsResponseV1{
		PageInfo:       pageInfo,
		EmergencyRooms: responses,
	}

	return &response, nil
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

func deleteERHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*common.Response, error) {
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
