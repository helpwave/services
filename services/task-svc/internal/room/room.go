package room

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

type Room struct {
	Base
	ID   uuid.UUID `gorm:"column:id"`
	Beds []Bed     `gorm:"foreignKey:RoomID"`
}

type Bed struct {
	ID     uuid.UUID `gorm:"column:id"`
	RoomID uuid.UUID `gorm:"column:room_id"`
}

type ServiceServer struct {
	api.UnimplementedRoomServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateRoom(ctx context.Context, req *api.CreateRoomRequest) (*api.CreateRoomResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	room := Room{
		Base: Base{
			Name: req.Name,
		},
		Beds: make([]Bed, req.AmountOfBeds),
	}

	if err := db.Create(&room).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("roomId", room.ID.String()).
		Int("beds", len(room.Beds)).
		Msg("room created")

	return &api.CreateRoomResponse{
		Id: room.ID.String(),
	}, nil
}

func (ServiceServer) GetRoom(ctx context.Context, req *api.GetRoomRequest) (*api.GetRoomResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := Room{ID: id}

	if err := db.Preload("Beds").First(&room).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			log.Warn().Err(err).Msg("database error")
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &api.GetRoomResponse{
		Id:   room.ID.String(),
		Name: room.Name,
		Beds: BedsToBedsOfRoom(room.Beds),
	}, nil
}

func BedsToBedsOfRoom(beds []Bed) []*api.BedOfRoom {
	var bedsOfRoom []*api.BedOfRoom
	for _, bed := range beds {
		bedsOfRoom = append(bedsOfRoom, &api.BedOfRoom{Id: bed.ID.String()})
	}
	return bedsOfRoom
}

func (ServiceServer) UpdateRoom(ctx context.Context, req *api.UpdateRoomRequest) (*api.UpdateRoomResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := Room{ID: id}
	updates := req.UpdatesMap()

	if err := db.Model(&room).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &api.UpdateRoomResponse{}, nil
}

func (ServiceServer) AddBedsToRoom(ctx context.Context, req *api.AddBedsToRoomRequest) (*api.AddBedsToRoomResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := Room{ID: id}
	beds := make([]Bed, req.AmountOfBeds)

	if err := db.Model(&room).Association("Beds").Append(&beds); err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("roomId", room.ID.String()).
		Int("beds", len(beds)).
		Msg("beds added")

	return &api.AddBedsToRoomResponse{}, err
}
