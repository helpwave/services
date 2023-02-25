package ward

import (
	"context"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"task-svc/api"
)

type Base struct {
	Name string `gorm:"column:name"`
}

type Ward struct {
	Base
	ID uuid.UUID `gorm:"column:id"`
}

type ServiceServer struct {
	api.UnimplementedWardServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateWard(ctx context.Context, req *api.CreateWardRequest) (*api.CreateWardResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	ward := Ward{
		Base: Base{
			Name: req.GetName(),
		},
	}

	if err := db.Create(&ward).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("wardId", ward.ID.String()).
		Msg("ward created")

	return &api.CreateWardResponse{
		Id:   ward.ID.String(),
		Name: ward.Name,
	}, nil
}

func (ServiceServer) GetWard(ctx context.Context, req *api.GetWardRequest) (*api.GetWardResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward := Ward{ID: id}
	if err := db.First(&ward).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &api.GetWardResponse{
		Id:   ward.ID.String(),
		Name: ward.Name,
	}, nil
}

func (ServiceServer) UpdateWard(ctx context.Context, req *api.UpdateWardRequest) (*api.UpdateWardResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward := Ward{ID: id}
	updates := req.UpdatesMap()

	if err := db.Model(&ward).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &api.UpdateWardResponse{}, nil
}
