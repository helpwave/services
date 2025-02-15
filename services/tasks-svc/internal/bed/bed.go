package bed

import (
	"common"
	"common/hwerr"
	"context"
	"fmt"
	pbEventsV1 "gen/libs/events/v1"
	"hwauthz"
	"hwauthz/commonperm"
	"hwdb"
	"hwes"
	"hwes/eventstoredb"
	"hwlocale"
	"hwutil"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"

	"tasks-svc/internal/bed/perm"
	patientPerm "tasks-svc/internal/patient/perm"
	roomPerm "tasks-svc/internal/room/perm"

	"github.com/jackc/pgx/v5/pgconn"
	"google.golang.org/genproto/googleapis/rpc/errdetails"

	"tasks-svc/locale"
	"tasks-svc/repos/bed-repo"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pb "gen/services/tasks_svc/v1"
	zlog "github.com/rs/zerolog/log"
)

const BedAggregateType = eventstoredb.EntityEventPrefix + "bed"

type BedAggregate struct {
	*hwes.AggregateBase
}

func NewBedAggregate(id uuid.UUID) *BedAggregate {
	aggregate := &BedAggregate{}
	aggregate.AggregateBase = hwes.NewAggregateBase(BedAggregateType, id)
	return aggregate
}

type ServiceServer struct {
	pb.UnimplementedBedServiceServer
	authz hwauthz.AuthZ
	es    *esdb.Client
}

func NewServiceServer(authz hwauthz.AuthZ, es *esdb.Client) *ServiceServer {
	return &ServiceServer{
		UnimplementedBedServiceServer: pb.UnimplementedBedServiceServer{},
		authz:                         authz,
		es:                            es,
	}
}

func (s ServiceServer) CreateBed(ctx context.Context, req *pb.CreateBedRequest) (*pb.CreateBedResponse, error) {
	log := zlog.Ctx(ctx)
	bedRepo := bedrepo.New(hwdb.GetDB())

	// parse inputs
	roomID, err := uuid.Parse(req.GetRoomId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, roomPerm.RoomCanUserCreateBed, roomPerm.Room(roomID))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	bed, err := bedRepo.CreateBed(ctx, bedrepo.CreateBedParams{
		RoomID: roomID,
		Name:   req.GetName(),
	})
	err = hwdb.Error(ctx, err,
		hwdb.WithOnFKViolation("beds_room_id_fkey", func(pgErr *pgconn.PgError) error {
			return hwerr.NewStatusError(ctx,
				codes.InvalidArgument,
				pgErr.Error(),
				locale.InvalidRoomIDError(ctx),
				&errdetails.BadRequest{
					FieldViolations: []*errdetails.BadRequest_FieldViolation{
						{
							Field:       "room_id",
							Description: hwlocale.Localize(ctx, locale.InvalidRoomIDError(ctx)),
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

	// update permission graph
	relationship := hwauthz.NewRelationship(
		roomPerm.Room(roomID),
		perm.BedRoom,
		perm.Bed(bed.ID),
	)
	_, err = s.authz.
		Create(relationship).
		Commit(ctx)
	if err != nil {
		return nil, fmt.Errorf("could not create spice relationship %s: %w", relationship.String(), err)
	}

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewBedAggregate(bed.ID),
		&pbEventsV1.BedCreatedEvent{
			Id: bed.ID.String(),
		},
	); err != nil {
		return nil, err
	}

	// return
	return &pb.CreateBedResponse{
		Id:          bed.ID.String(),
		Consistency: common.ConsistencyToken(bed.Consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) GetBed(ctx context.Context, req *pb.GetBedRequest) (*pb.GetBedResponse, error) {
	bedRepo := bedrepo.New(hwdb.GetDB())

	// parse inputs
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, perm.BedCanUserGet, perm.Bed(id))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	bed, err := hwdb.Optional(bedRepo.GetBedById)(ctx, id)
	if bed == nil {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// return
	return &pb.GetBedResponse{
		Id:          bed.ID.String(),
		RoomId:      bed.RoomID.String(),
		Name:        bed.Name,
		Consistency: common.ConsistencyToken(bed.Consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) GetBedByPatient(
	ctx context.Context,
	req *pb.GetBedByPatientRequest,
) (*pb.GetBedByPatientResponse, error) {
	bedRepo := bedrepo.New(hwdb.GetDB())

	patientID, err := uuid.Parse(req.GetPatientId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	result, err := hwdb.Optional(bedRepo.GetBedWithRoomByPatient)(ctx, patientID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	checks := make([]hwauthz.PermissionCheck, 0)
	checks = append(checks,
		hwauthz.NewPermissionCheck(user, patientPerm.PatientCanUserGet, patientPerm.Patient(patientID)))

	if result != nil {
		checks = append(checks,
			hwauthz.NewPermissionCheck(user, perm.BedCanUserGet, perm.Bed(result.BedID)),
			hwauthz.NewPermissionCheck(user, roomPerm.RoomCanUserGet, roomPerm.Room(result.RoomID)),
		)
	}
	if err := s.authz.BulkMust(ctx, checks...); err != nil {
		return nil, err
	}

	return &pb.GetBedByPatientResponse{
		Room: hwutil.MapNillable(result, func(res bedrepo.GetBedWithRoomByPatientRow) pb.GetBedByPatientResponse_Room {
			return pb.GetBedByPatientResponse_Room{
				Id:          res.RoomID.String(),
				Name:        res.RoomName,
				WardId:      res.WardID.String(),
				Consistency: common.ConsistencyToken(res.RoomConsistency).String(), //nolint:gosec
			}
		}),
		Bed: hwutil.MapNillable(result, func(res bedrepo.GetBedWithRoomByPatientRow) pb.GetBedByPatientResponse_Bed {
			return pb.GetBedByPatientResponse_Bed{
				Id:          res.BedID.String(),
				Name:        res.BedName,
				Consistency: common.ConsistencyToken(res.BedConsistency).String(), //nolint:gosec
			}
		}),
	}, nil
}

func (s ServiceServer) GetBeds(ctx context.Context, req *pb.GetBedsRequest) (*pb.GetBedsResponse, error) {
	roomID, err := hwutil.ParseNullUUID(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bedRepo := bedrepo.New(hwdb.GetDB())

	beds, err := bedRepo.GetBeds(ctx, roomID)
	if err != nil {
		return nil, hwdb.Error(ctx, err)
	}

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	checks := hwutil.Map(beds, func(b bedrepo.Bed) hwauthz.PermissionCheck {
		return hwauthz.NewPermissionCheck(user, perm.BedCanUserGet, perm.Bed(b.ID))
	})
	canGet, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}
	beds = hwutil.Filter(beds, func(i int, _ bedrepo.Bed) bool {
		return canGet[i]
	})

	return &pb.GetBedsResponse{
		Beds: hwutil.Map(beds, func(bed bedrepo.Bed) *pb.GetBedsResponse_Bed {
			return &pb.GetBedsResponse_Bed{
				Id:          bed.ID.String(),
				RoomId:      bed.RoomID.String(),
				Name:        bed.Name,
				Consistency: common.ConsistencyToken(bed.Consistency).String(), //nolint:gosec
			}
		}),
	}, nil
}

func (s ServiceServer) GetBedsByRoom(
	ctx context.Context,
	req *pb.GetBedsByRoomRequest,
) (*pb.GetBedsByRoomResponse, error) {
	roomID, err := uuid.Parse(req.GetRoomId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	bedRepo := bedrepo.New(hwdb.GetDB())

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

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	checks := hwutil.Map(beds, func(b bedrepo.Bed) hwauthz.PermissionCheck {
		return hwauthz.NewPermissionCheck(user, perm.BedCanUserGet, perm.Bed(b.ID))
	})
	canGet, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}
	beds = hwutil.Filter(beds, func(i int, _ bedrepo.Bed) bool {
		return canGet[i]
	})

	for _, bed := range beds {
		res.Beds = append(res.Beds, &pb.GetBedsByRoomResponse_Bed{
			Id:          bed.ID.String(),
			Name:        bed.Name,
			Consistency: common.ConsistencyToken(bed.Consistency).String(), //nolint:gosec
		})
	}

	return &res, nil
}

func (s ServiceServer) UpdateBed(ctx context.Context, req *pb.UpdateBedRequest) (*pb.UpdateBedResponse, error) {
	bedRepo := bedrepo.New(hwdb.GetDB())

	// parse inputs
	bedID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	roomID, err := hwutil.ParseNullUUID(req.RoomId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, perm.BedCanUserUpdate, perm.Bed(bedID))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	consistency, err := bedRepo.UpdateBed(ctx, bedrepo.UpdateBedParams{
		ID:     bedID,
		Name:   req.Name,
		RoomID: roomID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewBedAggregate(bedID),
		&pbEventsV1.BedUpdatedEvent{
			Id:     bedID.String(),
			Name:   req.GetName(),
			RoomId: hwutil.NullUUIDToStringPtr(roomID),
		},
	); err != nil {
		return nil, err
	}

	// return
	return &pb.UpdateBedResponse{
		Conflict:    nil,                                           // TODO
		Consistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) DeleteBed(ctx context.Context, req *pb.DeleteBedRequest) (*pb.DeleteBedResponse, error) {
	log := zlog.Ctx(ctx)
	bedRepo := bedrepo.New(hwdb.GetDB())

	// parse inputs
	bedID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, perm.BedCanUserDelete, perm.Bed(bedID))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// query exists
	exists, err := bedRepo.ExistsBed(ctx, bedID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	} else if !exists {
		// skip delete
		return &pb.DeleteBedResponse{}, err
	}

	// do delete
	err = bedRepo.DeleteBed(ctx, bedID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// delete from permission graph
	if err := s.authz.DeleteObject(ctx, perm.Bed(bedID)); err != nil {
		return nil, fmt.Errorf("could not delete bed from spicedb: %w", err)
	}

	log.Info().
		Str("bedID", bedID.String()).
		Msg("bed deleted")

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewBedAggregate(bedID),
		&pbEventsV1.BedDeletedEvent{
			Id: bedID.String(),
		},
	); err != nil {
		return nil, err
	}

	// return
	return &pb.DeleteBedResponse{}, err
}
