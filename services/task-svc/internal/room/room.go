package room

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	"hwgorm"
	"hwutil"
	"task-svc/internal/room/models"

	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
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

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := models.Room{
		Base: models.Base{
			Name: req.Name,
		},
		OrganizationID: organizationID,
		WardID:         wardId,
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

	beds := hwutil.Map(room.Beds, func(bed models.Bed) *pb.GetRoomResponse_Bed {
		return &pb.GetRoomResponse_Bed{
			Id: bed.ID.String(),
		}
	})

	return &pb.GetRoomResponse{
		Id:             room.ID.String(),
		Name:           room.Name,
		Beds:           beds,
		OrganizationId: room.OrganizationID.String(),
		WardId:         room.WardID.String(),
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

func (ServiceServer) GetRooms(ctx context.Context, req *pb.GetRoomsRequest) (*pb.GetRoomsResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	var rooms []models.Room
	if err := db.Preload("Beds").Find(&rooms).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	roomsResponse := hwutil.Map(rooms, func(room models.Room) *pb.GetRoomsResponse_Room {
		beds := hwutil.Map(room.Beds, func(bed models.Bed) *pb.GetRoomsResponse_Room_Bed {
			return &pb.GetRoomsResponse_Room_Bed{
				Id: bed.ID.String(),
			}
		})
		return &pb.GetRoomsResponse_Room{
			Id:             room.ID.String(),
			Name:           room.Name,
			Beds:           beds,
			OrganizationId: room.OrganizationID.String(),
			WardId:         room.WardID.String(),
		}
	})

	return &pb.GetRoomsResponse{
		Rooms: roomsResponse,
	}, nil
}

func (ServiceServer) GetRoomsByWard(ctx context.Context, req *pb.GetRoomsByWardRequest) (*pb.GetRoomsByWardResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	var rooms []models.Room
	if err := db.Preload("Beds").Find(&rooms, "ward_id = ?", wardId).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	roomsResponse := hwutil.Map(rooms, func(room models.Room) *pb.GetRoomsByWardResponse_Room {
		beds := hwutil.Map(room.Beds, func(bed models.Bed) *pb.GetRoomsByWardResponse_Room_Bed {
			return &pb.GetRoomsByWardResponse_Room_Bed{
				Id: bed.ID.String(),
			}
		})
		return &pb.GetRoomsByWardResponse_Room{
			Id:             room.ID.String(),
			Name:           room.Name,
			Beds:           beds,
			OrganizationId: room.OrganizationID.String(),
			WardId:         room.WardID.String(),
		}
	})

	return &pb.GetRoomsByWardResponse{
		Rooms: roomsResponse,
	}, nil
}

func (ServiceServer) DeleteRoom(ctx context.Context, req *pb.DeleteRoomRequest) (*pb.DeleteRoomResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := models.Room{ID: id}

	if err := db.Delete(&room).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	// TODO: Handle beds

	return &pb.DeleteRoomResponse{}, nil
}
