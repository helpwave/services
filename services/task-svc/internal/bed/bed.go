package bed

import (
	"common/auth"
	"common/hwerr"
	"context"
	"hwdb"
	"hwlocale"
	"hwutil"

	"github.com/jackc/pgx/v5/pgconn"
	"google.golang.org/genproto/googleapis/rpc/errdetails"

	"task-svc/locale"
	"task-svc/repos/bed_repo"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pb "gen/services/task_svc/v1"
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

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	roomId, err := uuid.Parse(req.GetRoomId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed, err := bedRepo.CreateBed(ctx, bed_repo.CreateBedParams{
		RoomID:         roomId,
		OrganizationID: organizationID,
		Name:           req.GetName(),
	})
	err = hwdb.Error(ctx, err,
		hwdb.WithOnFKViolation("beds_room_id_fkey", func(pgErr *pgconn.PgError) error {
			return hwerr.NewStatusError(ctx,
				codes.InvalidArgument,
				pgErr.Error(),
				locale.InvalidRoomIdError(ctx),
				&errdetails.BadRequest{
					FieldViolations: []*errdetails.BadRequest_FieldViolation{
						{
							Field:       "room_id",
							Description: hwlocale.Localize(ctx, locale.InvalidRoomIdError(ctx)),
						},
					},
				})
		}))
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("bedID", bed.ID.String()).
		Str("roomID", req.GetRoomId()).
		Str("name", bed.Name).
		Msg("bed created")

	return &pb.CreateBedResponse{
		Id: bed.ID.String(),
	}, nil
}

func (ServiceServer) GetBed(ctx context.Context, req *pb.GetBedRequest) (*pb.GetBedResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed, err := hwdb.Optional(bedRepo.GetBedByIdForOrganization)(ctx, bed_repo.GetBedByIdForOrganizationParams{
		ID:             id,
		OrganizationID: organizationID,
	})
	if bed == nil {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.GetBedResponse{
		Id:     bed.ID.String(),
		RoomId: bed.RoomID.String(),
		Name:   bed.Name,
	}, nil
}

func (ServiceServer) GetBedByPatient(
	ctx context.Context,
	req *pb.GetBedByPatientRequest,
) (*pb.GetBedByPatientResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	// TODO: Auth

	patientId, err := uuid.Parse(req.GetPatientId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	result, err := hwdb.Optional(bedRepo.GetBedWithRoomByPatientForOrganization)(ctx, patientId)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.GetBedByPatientResponse{
		Room: hwutil.MapNillable(result,
			func(res bed_repo.GetBedWithRoomByPatientForOrganizationRow) pb.GetBedByPatientResponse_Room {
				return pb.GetBedByPatientResponse_Room{
					Id:     res.RoomID.String(),
					Name:   res.RoomName,
					WardId: res.WardID.String(),
				}
			}),
		Bed: hwutil.MapNillable(result,
			func(res bed_repo.GetBedWithRoomByPatientForOrganizationRow) pb.GetBedByPatientResponse_Bed {
				return pb.GetBedByPatientResponse_Bed{Id: res.BedID.String(), Name: res.BedName}
			}),
	}, nil
}

func (ServiceServer) GetBeds(ctx context.Context, _ *pb.GetBedsRequest) (*pb.GetBedsResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	beds, err := bedRepo.GetBedsForOrganization(ctx, bed_repo.GetBedsForOrganizationParams{
		OrganizationID: organizationID,
	})
	if err != nil {
		return nil, hwdb.Error(ctx, err)
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

func (ServiceServer) GetBedsByRoom(
	ctx context.Context,
	req *pb.GetBedsByRoomRequest,
) (*pb.GetBedsByRoomResponse, error) {
	roomID, err := uuid.Parse(req.GetRoomId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	bedRepo := bed_repo.New(hwdb.GetDB())

	beds, err := bedRepo.GetBedsForOrganization(ctx, bed_repo.GetBedsForOrganizationParams{
		OrganizationID: organizationID,
		RoomID: uuid.NullUUID{
			UUID:  roomID,
			Valid: true,
		},
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	bedID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	roomId, err := hwutil.ParseNullUUID(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = bedRepo.UpdateBed(ctx, bed_repo.UpdateBedParams{
		ID:     bedID,
		Name:   req.Name,
		RoomID: roomId,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.UpdateBedResponse{}, nil
}

func (ServiceServer) DeleteBed(ctx context.Context, req *pb.DeleteBedRequest) (*pb.DeleteBedResponse, error) {
	log := zlog.Ctx(ctx)
	bedRepo := bed_repo.New(hwdb.GetDB())

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	bedID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	exists, err := bedRepo.ExistsBedInOrganization(ctx, bed_repo.ExistsBedInOrganizationParams{
		ID:             bedID,
		OrganizationID: organizationID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	} else if !exists {
		// skip delete
		return &pb.DeleteBedResponse{}, err
	}

	err = bedRepo.DeleteBed(ctx, bedID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("bedID", bedID.String()).
		Msg("bed deleted")

	return &pb.DeleteBedResponse{}, err
}
