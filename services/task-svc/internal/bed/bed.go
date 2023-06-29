package bed

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	pbhelpers "proto_helpers/task_svc/v1"
	"task-svc/internal/room/models"
)

type ServiceServer struct {
	pb.UnimplementedBedServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

type Base struct {
	/* Empty for later extension and use */
}

type Bed struct {
	Base
	ID             uuid.UUID `gorm:"column:id"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
	RoomID         uuid.UUID `gorm:"column:room_id"`
}

// GetBedsByRoomForOrganization
// TODO: Move into repository
func GetBedsByRoomForOrganization(ctx context.Context, roomID uuid.UUID) ([]Bed, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var beds []Bed
	if err := db.Where("organization_id = ? AND room_id = ?", organizationID.String(), roomID.String()).Find(&beds).Error; err != nil {
		return nil, err
	}

	return beds, nil
}

func (ServiceServer) CreateBed(ctx context.Context, req *pb.CreateBedRequest) (*pb.CreateBedResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)
	roomRepository := models.NewRoomRepositoryWithDB(db)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

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

	bed := Bed{RoomID: roomID, OrganizationID: organizationID}
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
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed := Bed{ID: id}
	if err := db.Where("organization_id = ?", organizationID).First(&bed).Error; err != nil {
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

func (ServiceServer) GetBeds(ctx context.Context, _ *pb.GetBedsRequest) (*pb.GetBedsResponse, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var beds []Bed
	if err := db.Where("organization_id = ?", organizationID.String()).Find(&beds).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	res := pb.GetBedsResponse{
		Beds: []*pb.GetBedsResponse_Bed{},
	}

	for _, bed := range beds {
		res.Beds = append(res.Beds, &pb.GetBedsResponse_Bed{
			Id:     bed.ID.String(),
			RoomId: bed.RoomID.String(),
		})
	}

	return &res, nil
}

func (ServiceServer) GetBedsByRoom(ctx context.Context, req *pb.GetBedsByRoomRequest) (*pb.GetBedsByRoomResponse, error) {
	roomID, err := uuid.Parse(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	beds, err := GetBedsByRoomForOrganization(ctx, roomID)
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

	for _, bed := range beds {
		res.Beds = append(res.Beds, &pb.GetBedsByRoomResponse_Bed{
			Id: bed.ID.String(),
		})
	}

	return &res, nil
}

func (ServiceServer) UpdateBed(ctx context.Context, req *pb.UpdateBedRequest) (*pb.UpdateBedResponse, error) {
	db := hwgorm.GetDB(ctx)

	bedID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed := models.Bed{ID: bedID}
	updates := pbhelpers.UpdatesMapForUpdateBedRequest(req)
	// TODO: respect req.RoomID in this or another method

	if err := db.Model(&bed).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateBedResponse{}, nil
}

func (ServiceServer) DeleteBed(ctx context.Context, req *pb.DeleteBedRequest) (*pb.DeleteBedResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	bedID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed := Bed{ID: bedID}
	if err := db.Where("organization_id = ?", organizationID).First(&bed).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			// Probably already deleted
			return &pb.DeleteBedResponse{}, err
		}
	}

	if err := db.Delete(bed).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "roomID not found")
		}
	}

	log.Info().
		Str("bedId", bedID.String()).
		Msg("bed deleted")

	return &pb.DeleteBedResponse{}, err
}
