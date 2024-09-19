package bed

import (
	"common"
	"context"
	"github.com/jackc/pgx/v5/pgconn"
	"google.golang.org/genproto/googleapis/rpc/errdetails"
	"hwdb"
	"hwlocale"
	"hwutil"
	"strconv"
	"tasks-svc/locale"
	"tasks-svc/repos/bed_repo"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pb "gen/services/tasks_svc/v1"
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

	roomId, err := uuid.Parse(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed, err := bedRepo.CreateBed(ctx, bed_repo.CreateBedParams{
		RoomID: roomId,
		Name:   req.Name,
	})
	err = hwdb.Error(ctx, err,
		hwdb.WithOnFKViolation("beds_room_id_fkey", func(pgErr *pgconn.PgError) error {
			return common.NewStatusError(ctx,
				codes.InvalidArgument,
				pgErr.Error(),
				locale.InvalidRoomIdError(ctx),
				&errdetails.BadRequest{
					FieldViolations: []*errdetails.BadRequest_FieldViolation{
						{
							Field:       "room_id",
							Description: hwlocale.Localize(ctx, locale.InvalidRoomIdError(ctx)),
						},
					}})
		}))
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("bedID", bed.ID.String()).
		Str("roomID", req.RoomId).
		Str("name", bed.Name).
		Msg("bed created")

	return &pb.CreateBedResponse{
		Id:          bed.ID.String(),
		Consistency: strconv.FormatUint(uint64(bed.Consistency), 10),
	}, nil
}

func (ServiceServer) GetBed(ctx context.Context, req *pb.GetBedRequest) (*pb.GetBedResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bed, err := hwdb.Optional(bedRepo.GetBedById)(ctx, id)
	if bed == nil {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.GetBedResponse{
		Id:          bed.ID.String(),
		RoomId:      bed.RoomID.String(),
		Name:        bed.Name,
		Consistency: strconv.FormatUint(uint64(bed.Consistency), 10),
	}, nil
}

func (ServiceServer) GetBedByPatient(ctx context.Context, req *pb.GetBedByPatientRequest) (*pb.GetBedByPatientResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	// TODO: Auth

	patientId, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	result, err := hwdb.Optional(bedRepo.GetBedWithRoomByPatient)(ctx, patientId)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.GetBedByPatientResponse{
		Room: hwutil.MapNillable(result, func(res bed_repo.GetBedWithRoomByPatientRow) pb.GetBedByPatientResponse_Room {
			return pb.GetBedByPatientResponse_Room{
				Id:          res.RoomID.String(),
				Name:        res.RoomName,
				WardId:      res.WardID.String(),
				Consistency: strconv.FormatUint(uint64(res.RoomConsistency), 10),
			}
		}),
		Bed: hwutil.MapNillable(result, func(res bed_repo.GetBedWithRoomByPatientRow) pb.GetBedByPatientResponse_Bed {
			return pb.GetBedByPatientResponse_Bed{
				Id:          res.BedID.String(),
				Name:        res.BedName,
				Consistency: strconv.FormatUint(uint64(res.BedConsistency), 10),
			}
		}),
	}, nil
}

func (ServiceServer) GetBeds(ctx context.Context, _ *pb.GetBedsRequest) (*pb.GetBedsResponse, error) {
	bedRepo := bed_repo.New(hwdb.GetDB())

	beds, err := bedRepo.GetBeds(ctx, uuid.NullUUID{UUID: uuid.Nil, Valid: false})
	if err != nil {
		return nil, hwdb.Error(ctx, err)
	}

	return &pb.GetBedsResponse{
		Beds: hwutil.Map(beds, func(bed bed_repo.Bed) *pb.GetBedsResponse_Bed {
			return &pb.GetBedsResponse_Bed{
				Id:          bed.ID.String(),
				RoomId:      bed.RoomID.String(),
				Name:        bed.Name,
				Consistency: strconv.FormatUint(uint64(bed.Consistency), 10),
			}
		}),
	}, nil
}

func (ServiceServer) GetBedsByRoom(ctx context.Context, req *pb.GetBedsByRoomRequest) (*pb.GetBedsByRoomResponse, error) {
	roomID, err := uuid.Parse(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bedRepo := bed_repo.New(hwdb.GetDB())

	beds, err := bedRepo.GetBeds(ctx,
		uuid.NullUUID{
			UUID:  roomID,
			Valid: true,
		},
	)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	res := pb.GetBedsByRoomResponse{
		Beds: []*pb.GetBedsByRoomResponse_Bed{},
	}

	for _, bed := range beds {
		res.Beds = append(res.Beds, &pb.GetBedsByRoomResponse_Bed{
			Id:          bed.ID.String(),
			Name:        bed.Name,
			Consistency: strconv.FormatUint(uint64(bed.Consistency), 10),
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

	consistency, err := bedRepo.UpdateBed(ctx, bed_repo.UpdateBedParams{
		ID:     bedID,
		Name:   req.Name,
		RoomID: roomId,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.UpdateBedResponse{
		Conflict:    nil, // TODO
		Consistency: strconv.FormatUint(uint64(consistency), 10),
	}, nil
}

func (ServiceServer) DeleteBed(ctx context.Context, req *pb.DeleteBedRequest) (*pb.DeleteBedResponse, error) {
	log := zlog.Ctx(ctx)
	bedRepo := bed_repo.New(hwdb.GetDB())

	bedID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	exists, err := bedRepo.ExistsBed(ctx, bedID)
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
