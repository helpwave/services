package bed

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

type Base struct{}

type Bed struct {
	Base
	ID             uuid.UUID `gorm:"column:id"`
	OrganizationID uuid.UUID `gorm:"organization_id"`
	RoomID         uuid.UUID `gorm:"column:room_id"`
}

type ServiceServer struct {
	pb.UnimplementedBedServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateBed(ctx context.Context, req *pb.CreateBedRequest) (*pb.CreateBedResponse, error) {
	// TODO: Get organizationID via middleware
	tempOrganizationID := uuid.MustParse("3b25c6f5-4705-4074-9fc6-a50c28eba406")

	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)
	roomRepository := models.
		NewRoomRepositoryWithDB(db).
		SetOrganization(tempOrganizationID)

	roomID, err := uuid.Parse(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room, err := roomRepository.GetById(roomID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "roomID not found")
		}
	}

	bed := Bed{RoomID: roomID, OrganizationID: tempOrganizationID}
	if err := db.Create(&bed).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("bedId", bed.ID.String()).
		Str("roomId", room.ID.String()).
		Msg("bed created")

	return &pb.CreateBedResponse{
		Id: bed.ID.String(),
	}, nil
}

func (ServiceServer) GetBed(ctx context.Context, req *pb.GetBedRequest) (*pb.GetBedResponse, error) {
	// TODO: Get organizationID via middleware
	tempOrganizationID := uuid.MustParse("3b25c6f5-4705-4074-9fc6-a50c28eba406")

	db := hwgorm.GetDB(ctx)
	repository := NewBedRepositoryWithDB(db).SetOrganization(tempOrganizationID)

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed, err := repository.GetById(id)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetBedResponse{
		Id:     bed.ID.String(),
		RoomId: bed.RoomID.String(),
	}, nil
}

func (ServiceServer) GetBeds(ctx context.Context, req *pb.GetBedsResponse) (*pb.GetBedsResponse, error) {
	// TODO: Get organizationID via middleware
	tempOrganizationID := uuid.MustParse("3b25c6f5-4705-4074-9fc6-a50c28eba406")

	db := hwgorm.GetDB(ctx)
	repository := NewBedRepositoryWithDB(db).SetOrganization(tempOrganizationID)

	beds, err := repository.GetAll()
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	res := pb.GetBedsResponse{
		Beds: []*pb.GetBedsResponse_Bed{},
	}

	for _, bed := range *beds {
		res.Beds = append(res.Beds, &pb.GetBedsResponse_Bed{
			Id:     bed.ID.String(),
			RoomId: bed.RoomID.String(),
		})
	}

	return &res, nil
}

func (ServiceServer) GetBedsByRoom(ctx context.Context, req *pb.GetBedsByRoomRequest) (*pb.GetBedsByRoomResponse, error) {
	// TODO: Get organizationID via middleware
	tempOrganizationID := uuid.MustParse("3b25c6f5-4705-4074-9fc6-a50c28eba406")

	db := hwgorm.GetDB(ctx)
	repository := NewBedRepositoryWithDB(db).SetOrganization(tempOrganizationID)

	roomID, err := uuid.Parse(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	beds, err := repository.GetByRoom(roomID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "roomID not found")
		}
	}

	res := pb.GetBedsByRoomResponse{
		Beds: []*pb.GetBedsByRoomResponse_Bed{},
	}

	for _, bed := range *beds {
		res.Beds = append(res.Beds, &pb.GetBedsByRoomResponse_Bed{
			Id: bed.ID.String(),
		})
	}

	return &res, nil
}
