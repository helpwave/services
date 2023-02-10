package main

import (
	"common"
	"context"
	"emergency-room-svc/api"
	"emergency-room-svc/models"
	"github.com/google/uuid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
	"hwgorm"
	"hwutil"
	"logging"

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

	common.StartNewGRPCServer(addr, func(server *grpc.Server) {
		api.RegisterEmergencyRoomServiceServer(server, &emergencyRoomServiceServer{})
	})
}

//
// Handlers
//

type emergencyRoomServiceServer struct {
	api.UnimplementedEmergencyRoomServiceServer
}

func (emergencyRoomServiceServer) CreateER(ctx context.Context, req *api.CreateERRequest) (*api.GetSingleERResponse, error) {
	log := zlog.Ctx(ctx)

	// TODO: Auth

	deps, err := models.StringsToUUIDs(req.Departments)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	emergencyRoom := models.EmergencyRoom{
		EmergencyRoomBase: models.EmergencyRoomBase{
			Name: req.Name,
			Location: hwgorm.Point{
				Lat:  req.Location.Lat,
				Long: req.Location.Long,
			},
			DisplayableAddress: req.DisplayableAddress,
			Open:               req.Open,
			Utilization:        req.Utilization,
		},
		Departments: models.UUIDsToDepartments(deps),
	}
	log.Debug().Str("model", logging.Formatted(emergencyRoom)).Send()

	db := hwgorm.GetDB(ctx)
	db = db.Omit("Departments.*") // do not attempt to upsert Departments, they have to exist already

	result := db.Create(&emergencyRoom)
	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	return &api.GetSingleERResponse{
		Id:                 emergencyRoom.ID.String(),
		Name:               emergencyRoom.Name,
		Location:           api.FromGormPoint(&emergencyRoom.Location),
		DisplayableAddress: emergencyRoom.DisplayableAddress,
		Open:               emergencyRoom.Open,
		Utilization:        emergencyRoom.Utilization,
		Departments:        models.DepartmentsToBases(emergencyRoom.Departments),
	}, nil
}

func (emergencyRoomServiceServer) GetER(ctx context.Context, req *api.GetSingleERRequest) (*api.GetSingleERResponse, error) {
	log := zlog.Ctx(ctx)

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Get
	emergencyRoom := models.EmergencyRoom{
		ID: id,
	}
	log.Debug().Str("model", logging.Formatted(emergencyRoom)).Send()

	db := hwgorm.GetDB(ctx)

	result := db.First(&emergencyRoom)

	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	log.Debug().Msgf("result = %v", result)

	return &api.GetSingleERResponse{
		Id:                 emergencyRoom.ID.String(),
		Name:               emergencyRoom.Name,
		Location:           api.FromGormPoint(&emergencyRoom.Location),
		DisplayableAddress: emergencyRoom.DisplayableAddress,
		Open:               emergencyRoom.Open,
		Utilization:        emergencyRoom.Utilization,
		Departments:        models.DepartmentsToBases(emergencyRoom.Departments),
	}, nil

}

func (emergencyRoomServiceServer) GetERs(ctx context.Context, req *api.GetERsRequest) (*api.GetERsResponse, error) {
	log := zlog.Ctx(ctx)

	db := hwgorm.GetDB(ctx)
	db = db.Where(whereClausesForERsQuery(db, req))

	pageReq := api.ToGormPagedRequest(req.PagedRequest)

	pageInfo, err := hwgorm.GetPageInfo(db, &pageReq, models.EmergencyRoom{})
	if err != nil {
		log.Warn().Err(err).Msg("database error when fetching page information")
		return nil, status.Error(codes.Internal, err.Error())
	}

	var emergencyRooms []models.EmergencyRoom
	tx := db.Scopes(hwgorm.Paginate(pageInfo)).
		Preload("Departments").
		Find(&emergencyRooms)

	if err := tx.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Response
	responses := make([]*api.GetSingleERResponse, len(emergencyRooms))
	for i, emergencyRoom := range emergencyRooms {
		responses[i] = &api.GetSingleERResponse{
			Id:                 emergencyRoom.ID.String(),
			Name:               emergencyRoom.Name,
			Location:           api.FromGormPoint(&emergencyRoom.Location),
			DisplayableAddress: emergencyRoom.DisplayableAddress,
			Open:               emergencyRoom.Open,
			Utilization:        emergencyRoom.Utilization,
			Departments:        models.DepartmentsToBases(emergencyRoom.Departments),
		}
	}

	return &api.GetERsResponse{
		PageInfo: &api.PageInfo{
			Page:      int32(pageInfo.Page),
			PageSize:  int32(pageInfo.PageSize),
			TotalSize: pageInfo.TotalSize,
			LastPage:  pageInfo.LastPage,
		},
		EmergencyRooms: responses,
	}, nil
}

func whereClausesForERsQuery(db *gorm.DB, request *api.GetERsRequest) *gorm.DB {
	if request.Open != nil {
		db = db.Where("is_open = ?", *request.Open)
	}
	if request.Utilization != nil {
		interval := request.Utilization
		if interval.Min != nil {
			db = db.Where("utilization >= ?", *interval.Min)
		}
		if interval.Max != nil {
			db = db.Where("utilization <= ?", *interval.Max)
		}
	}
	if request.Location != nil {
		location := request.Location
		radius := hwgorm.MetersToMiles(100_000) // 100 km radius

		// `<@>` is posgresql's earthdistance operator
		db = db.Where("(location <@> point(?, ?)) < ?", location.Long, location.Lat, radius)
	}
	return db
}

func (emergencyRoomServiceServer) UpdateER(ctx context.Context, req *api.UpdateERRequest) (*api.UpdateERResponse, error) {
	log := zlog.Ctx(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Update
	db := hwgorm.GetDB(ctx)

	emergencyRoom := models.EmergencyRoom{
		ID: id,
	}

	updatesMap := req.UpdatesMap()
	log.Debug().Msg(logging.Formatted(updatesMap))

	if err := db.Model(&emergencyRoom).Updates(updatesMap).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	return &api.UpdateERResponse{}, nil
}

func (emergencyRoomServiceServer) AddDepartmentsToER(ctx context.Context, req *api.AddDepartmentsToERRequest) (*api.AddDepartmentsToERResponse, error) {
	log := zlog.Ctx(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Update
	db := hwgorm.GetDB(ctx)

	emergencyRoom := models.EmergencyRoom{
		ID: id,
	}

	deps, err := models.StringsToUUIDs(req.Departments)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}
	departmentsToAdd := models.UUIDsToDepartments(deps)
	log.Debug().Msgf("departmentsToAdd: %s", logging.Formatted(departmentsToAdd))

	if err := db.Model(&emergencyRoom).Association("Departments").Append(departmentsToAdd); err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	return &api.AddDepartmentsToERResponse{}, nil
}

func (emergencyRoomServiceServer) RemoveDepartmentsFromER(ctx context.Context, req *api.RemoveDepartmentsFromERRequest) (*api.RemoveDepartmentsFromERResponse, error) {
	log := zlog.Ctx(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Update
	db := hwgorm.GetDB(ctx)

	emergencyRoom := models.EmergencyRoom{
		ID: id,
	}

	deps, err := models.StringsToUUIDs(req.Departments)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}
	departmentsToRemove := models.UUIDsToDepartments(deps)
	log.Debug().Msgf("departmentsToRemove: %s", logging.Formatted(departmentsToRemove))

	if len(departmentsToRemove) == 0 {
		return &api.RemoveDepartmentsFromERResponse{}, nil
	}

	if err := db.Model(&emergencyRoom).Association("Departments").Delete(departmentsToRemove); err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	return &api.RemoveDepartmentsFromERResponse{}, nil
}

func (emergencyRoomServiceServer) DeleteER(ctx context.Context, req *api.DeleteERRequest) (*api.DeleteERResponse, error) {
	log := zlog.Ctx(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Delete
	emergencyRoom := models.EmergencyRoom{
		ID: id,
	}
	log.Debug().Str("model", logging.Formatted(emergencyRoom)).Send()

	db := hwgorm.GetDB(ctx)

	result := db.Delete(&emergencyRoom)

	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	log.Debug().Msgf("result = %v", result)

	return &api.DeleteERResponse{}, nil
}
