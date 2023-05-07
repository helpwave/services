package room

import (
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"task-svc/internal/room/models"
)

type ServiceServer struct {
	pb.UnimplementedRoomServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateRoom(ctx context.Context, req *pb.CreateRoomRequest) (*pb.CreateRoomResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	room := models.Room{
		Base: models.Base{
			Name: req.Name,
		},
	}

	if err := db.Create(&room).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("roomId", room.ID.String()).
		Int("beds", len(room.Beds)).
		Msg("room created")

	return &pb.CreateRoomResponse{
		Id: room.ID.String(),
	}, nil
}

func (ServiceServer) GetRoom(ctx context.Context, req *pb.GetRoomRequest) (*pb.GetRoomResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := models.Room{ID: id}

	if err := db.Preload("Beds").First(&room).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetRoomResponse{
		Id:   room.ID.String(),
		Name: room.Name,
	}, nil
}

func (ServiceServer) UpdateRoom(ctx context.Context, req *pb.UpdateRoomRequest) (*pb.UpdateRoomResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := models.Room{ID: id}
	updates := req.UpdatesMap()

	if err := db.Model(&room).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateRoomResponse{}, nil
}
