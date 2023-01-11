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
	db = prepareGetERsQuery(db, &request)

	pageInfo, err := hwgorm.GetPageInfo(db, request.PagedRequest, models.EmergencyRoom{})
	if err != nil {
		log.Warn().Err(err).Msg("database error when fetching page information")
		return nil, err
	}

	var emergencyRooms []models.EmergencyRoom
	tx := db.Scopes(hwgorm.Paginate(pageInfo)).Find(&emergencyRooms)

	log.Debug().Msgf("tx = %v", logging.Formatted(tx))

	if err := tx.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, err
	}

	// Response
	response := api.GetERsResponseV1{
		pageInfo,
		responses,
	}

	out, err := response.ToContent()
	if err != nil {
		log.Error().Err(err).Msg("could not marshall response")
		return nil, err
	}

	return out, nil
}

func prepareGetERsQuery(db *gorm.DB, request *api.GetERsRequestV1) *gorm.DB {
	if request.Open != nil {
		db = db.Where("open = ?", *request.Open)
	}
	if request.Utilization != nil {
		interval := *request.Utilization
		if interval.Min != nil {
			db = db.Where("utilization >= ?", *interval.Min)
		}
		if interval.Max != nil {
			db = db.Where("utilization < ?", *interval.Max)
		}
	}
	if request.Location != nil {
		// TODO
	}
	if request.Departments != nil {
		// TODO
	}
	return db
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
