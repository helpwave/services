package bed

import (
	"common"
	"context"
	"hwdb"
	"hwgorm"
	"hwutil"
	"task-svc/repos/bed_repo"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pb "gen/proto/services/task_svc/v1"
	zlog "github.com/rs/zerolog/log"
)

type ServiceServer struct {
	pb.UnimplementedBedServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateBed(ctx context.Context, req *pb.CreateBedRequest) (*pb.CreateBedResponse, error) {
	log := zlog.Ctx(ctx)
	bedRepo := bed_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	roomId, err := uuid.Parse(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed, err := bedRepo.CreateBed(ctx, bed_repo.CreateBedParams{
		RoomID:         roomId,
		OrganizationID: organizationID,
		Name:           req.Name,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("bedID", bed.ID.String()).
		Str("roomID", req.RoomId).
		Str("name", bed.Name).
		Msg("bed created")

	return &pb.CreateBedResponse{
		Id: bed.ID.String(),
	}, nil
}

func (ServiceServer) GetBed(ctx context.Context, req *pb.GetBedRequest) (*pb.GetBedResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed, err := hwdb.Optional(bedRepo.GetBedByIdForOrganization)(ctx, bed_repo.GetBedByIdForOrganizationParams{
		ID:             id,
		OrganizationID: organizationID,
	})
	if bed == nil {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	} else if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.GetBedResponse{
		Id:     bed.ID.String(),
		RoomId: bed.RoomID.String(),
		Name:   bed.Name,
	}, nil
}

func (ServiceServer) GetBedByPatient(ctx context.Context, req *pb.GetBedByPatientRequest) (*pb.GetBedByPatientResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	// TODO: Auth

	patientId, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	result, err := hwdb.Optional(bedRepo.GetBedWithRoomByPatientForOrganization)(ctx, patientId)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return &pb.GetBedByPatientResponse{}, nil // no bed or room found
		}
	}

	return &pb.GetBedByPatientResponse{
		Room: hwutil.MapNillable(result, func(res bed_repo.GetBedWithRoomByPatientForOrganizationRow) pb.GetBedByPatientResponse_Room {
			return pb.GetBedByPatientResponse_Room{Id: res.RoomID.String(), Name: res.RoomName, WardId: res.WardID.String()}
		}),
		Bed: hwutil.MapNillable(result, func(res bed_repo.GetBedWithRoomByPatientForOrganizationRow) pb.GetBedByPatientResponse_Bed {
			return pb.GetBedByPatientResponse_Bed{Id: res.BedID.String(), Name: res.BedName}
		}),
	}, nil
}

func (ServiceServer) GetBeds(ctx context.Context, _ *pb.GetBedsRequest) (*pb.GetBedsResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	beds, err := bedRepo.GetBedsForOrganization(ctx, organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetBedsResponse{
		Beds: hwutil.Map(beds, func(bed bed_repo.Bed) *pb.GetBedsResponse_Bed {
			return &pb.GetBedsResponse_Bed{
				Id:     bed.ID.String(),
				RoomId: bed.RoomID.String(),
				Name:   bed.Name,
			}
		}),
	}, nil
}

func (ServiceServer) GetBedsByRoom(ctx context.Context, req *pb.GetBedsByRoomRequest) (*pb.GetBedsByRoomResponse, error) {
	roomID, err := uuid.Parse(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	bedRepo := bed_repo.New(hwdb.GetDB())

	beds, err := bedRepo.GetBedsByRoomForOrganization(ctx, bed_repo.GetBedsByRoomForOrganizationParams{
		OrganizationID: organizationID,
		RoomID:         roomID,
	})
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
			Id:   bed.ID.String(),
			Name: bed.Name,
		})
	}

	return &res, nil
}

func (ServiceServer) UpdateBed(ctx context.Context, req *pb.UpdateBedRequest) (*pb.UpdateBedResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	bedID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	roomId, err := hwutil.ParseNullUUID(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := bedRepo.UpdateBed(ctx, bed_repo.UpdateBedParams{
		ID:     bedID,
		Name:   req.Name,
		RoomID: roomId,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateBedResponse{}, nil
}

func (ServiceServer) DeleteBed(ctx context.Context, req *pb.DeleteBedRequest) (*pb.DeleteBedResponse, error) {
	log := zlog.Ctx(ctx)
	bedRepo := bed_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	bedID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	exists, err := bedRepo.ExistsBedInOrganization(ctx, bed_repo.ExistsBedInOrganizationParams{
		ID:             bedID,
		OrganizationID: organizationID,
	})
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	} else if !exists {
		// skip delete
		return &pb.DeleteBedResponse{}, err
	}

	err = bedRepo.DeleteBed(ctx, bedID)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "roomID not found")
		}
	}

	log.Info().
		Str("bedID", bedID.String()).
		Msg("bed deleted")

	return &pb.DeleteBedResponse{}, err
}
