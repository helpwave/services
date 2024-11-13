package room

import (
	"common"
	"context"
	"fmt"
	pbEventsV1 "gen/libs/events/v1"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwdb"
	"hwes"
	"hwes/eventstoredb"
	"hwutil"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"

	"tasks-svc/internal/room/perm"
	wardPerm "tasks-svc/internal/ward/perm"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"tasks-svc/internal/tracking"
	"tasks-svc/repos/room_repo"

	pb "gen/services/tasks_svc/v1"
	zlog "github.com/rs/zerolog/log"
)

const RoomAggregateType = eventstoredb.EntityEventPrefix + "room"

type RoomAggregate struct {
	*hwes.AggregateBase
}

func NewRoomAggregate(id uuid.UUID) *RoomAggregate {
	aggregate := &RoomAggregate{}
	aggregate.AggregateBase = hwes.NewAggregateBase(RoomAggregateType, id)
	return aggregate
}

type ServiceServer struct {
	pb.UnimplementedRoomServiceServer
	authz hwauthz.AuthZ
	es    *esdb.Client
}

func NewServiceServer(authz hwauthz.AuthZ, es *esdb.Client) *ServiceServer {
	return &ServiceServer{
		UnimplementedRoomServiceServer: pb.UnimplementedRoomServiceServer{},
		authz:                          authz,
		es:                             es,
	}
}

func (s ServiceServer) CreateRoom(ctx context.Context, req *pb.CreateRoomRequest) (*pb.CreateRoomResponse, error) {
	log := zlog.Ctx(ctx)
	roomRepo := room_repo.New(hwdb.GetDB())

	// parse input
	wardID, err := uuid.Parse(req.GetWardId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permission
	user := commonPerm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, wardPerm.WardCanUserCreateRoom, wardPerm.Ward(wardID))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	row, err := roomRepo.CreateRoom(ctx, room_repo.CreateRoomParams{
		Name:   req.GetName(),
		WardID: wardID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	roomID := row.ID
	consistency := row.Consistency

	log.Info().
		Str("roomID", roomID.String()).
		Msg("room created")

	// write relationship to permission graph
	relationship := hwauthz.NewRelationship(
		wardPerm.Ward(wardID),
		perm.RoomWard,
		perm.Room(roomID),
	)
	_, err = s.authz.
		Create(relationship).
		Commit(ctx)
	if err != nil {
		return nil, fmt.Errorf("could not create spice relationship %s: %w", relationship.DebugString(), err)
	}

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewRoomAggregate(roomID),
		&pbEventsV1.RoomCreatedEvent{
			Id: roomID.String(),
		},
	); err != nil {
		return nil, err
	}

	// return
	return &pb.CreateRoomResponse{
		Id:          roomID.String(),
		Consistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) GetRoom(ctx context.Context, req *pb.GetRoomRequest) (*pb.GetRoomResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// parse inputs
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permission
	user := commonPerm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, perm.RoomCanUserGet, perm.Room(id))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	rows, err := roomRepo.GetRoomWithBedsById(ctx, id)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	if len(rows) == 0 {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}

	room := rows[0].Room

	beds := hwutil.FlatMap(rows, func(row room_repo.GetRoomWithBedsByIdRow) **pb.GetRoomResponse_Bed {
		if !row.BedID.Valid {
			return nil
		}

		val := &pb.GetRoomResponse_Bed{
			Id:          row.BedID.UUID.String(),
			Name:        *row.BedName,
			Consistency: common.ConsistencyToken(*row.BedConsistency).String(), //nolint:gosec
		}
		return &val
	})

	return &pb.GetRoomResponse{
		Id:          room.ID.String(),
		Name:        room.Name,
		Beds:        beds,
		WardId:      room.WardID.String(),
		Consistency: common.ConsistencyToken(room.Consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) UpdateRoom(ctx context.Context, req *pb.UpdateRoomRequest) (*pb.UpdateRoomResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// parse inputs
	roomID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permission
	user := commonPerm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, perm.RoomCanUserUpdate, perm.Room(roomID))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	consistency, err := roomRepo.UpdateRoom(ctx, room_repo.UpdateRoomParams{
		ID:   roomID,
		Name: req.Name,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewRoomAggregate(roomID),
		&pbEventsV1.RoomUpdatedEvent{
			Id:   roomID.String(),
			Name: req.GetName(),
		},
	); err != nil {
		return nil, err
	}

	// return
	return &pb.UpdateRoomResponse{
		Conflict:    nil,                                           // TODO
		Consistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) GetRooms(ctx context.Context, req *pb.GetRoomsRequest) (*pb.GetRoomsResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// parse inputs
	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// do query
	rows, err := roomRepo.GetRoomsWithBeds(ctx, wardID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// re-structure rows
	processedRooms := make(map[uuid.UUID]bool)

	rooms := hwutil.FlatMap(rows, func(roomRow room_repo.GetRoomsWithBedsRow) **pb.GetRoomsResponse_Room {
		room := roomRow.Room
		if _, processed := processedRooms[room.ID]; processed {
			return nil
		}
		processedRooms[room.ID] = true
		beds := hwutil.FlatMap(rows, func(bedRow room_repo.GetRoomsWithBedsRow) **pb.GetRoomsResponse_Room_Bed {
			if !bedRow.BedID.Valid || bedRow.Room.ID != room.ID {
				return nil
			}
			val := &pb.GetRoomsResponse_Room_Bed{
				Id:          bedRow.BedID.UUID.String(),
				Name:        *bedRow.BedName,
				Consistency: common.ConsistencyToken(*bedRow.BedConsistency).String(), //nolint:gosec
			}
			return &val
		})
		val := &pb.GetRoomsResponse_Room{
			Id:          room.ID.String(),
			Name:        room.Name,
			Beds:        beds,
			WardId:      room.WardID.String(),
			Consistency: common.ConsistencyToken(room.Consistency).String(), //nolint:gosec
		}
		return &val
	})

	// check permissions
	user := commonPerm.UserFromCtx(ctx)
	checks := hwutil.Map(rooms, func(r *pb.GetRoomsResponse_Room) hwauthz.PermissionCheck {
		return hwauthz.NewPermissionCheck(user, perm.RoomCanUserGet, perm.Room(uuid.MustParse(r.Id)))
	})
	canGet, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}
	rooms = hwutil.Filter(rooms, func(i int, _ *pb.GetRoomsResponse_Room) bool {
		return canGet[i]
	})

	// return
	return &pb.GetRoomsResponse{
		Rooms: rooms,
	}, nil
}

func (s ServiceServer) DeleteRoom(ctx context.Context, req *pb.DeleteRoomRequest) (*pb.DeleteRoomResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// parse inputs
	roomID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// check permission
	user := commonPerm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(user, perm.RoomCanUserDelete, perm.Room(roomID))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	// do query
	err = roomRepo.DeleteRoom(ctx, roomID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// TODO: Handle beds

	// TODO: remove from spice (also beds)

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewRoomAggregate(roomID),
		&pbEventsV1.RoomDeletedEvent{
			Id: roomID.String(),
		},
	); err != nil {
		return nil, err
	}

	// return
	return &pb.DeleteRoomResponse{}, nil
}

func (s ServiceServer) GetRoomOverviewsByWard(
	ctx context.Context,
	req *pb.GetRoomOverviewsByWardRequest,
) (*pb.GetRoomOverviewsByWardResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	wardID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := roomRepo.GetRoomsWithBedsAndPatientsAndTasksCountByWard(ctx,
		room_repo.GetRoomsWithBedsAndPatientsAndTasksCountByWardParams{
			TodoStatus:       int32(pb.TaskStatus_TASK_STATUS_TODO),
			InProgressStatus: int32(pb.TaskStatus_TASK_STATUS_IN_PROGRESS),
			DoneStatus:       int32(pb.TaskStatus_TASK_STATUS_DONE),
			WardID:           wardID,
		})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	processedRooms := make(map[uuid.UUID]bool)

	type rowType = room_repo.GetRoomsWithBedsAndPatientsAndTasksCountByWardRow

	rooms := hwutil.FlatMap(rows,
		func(roomRow rowType) **pb.GetRoomOverviewsByWardResponse_Room {
			if _, roomProcessed := processedRooms[roomRow.RoomID]; roomProcessed {
				return nil
			}
			processedRooms[roomRow.RoomID] = true
			beds := hwutil.FlatMap(rows,
				func(bedRow rowType) **pb.GetRoomOverviewsByWardResponse_Room_Bed {
					if !bedRow.BedID.Valid || bedRow.RoomID != roomRow.RoomID {
						return nil
					}

					patient := hwutil.MapIf(bedRow.PatientID.Valid, bedRow,
						func(bedRow rowType) pb.GetRoomOverviewsByWardResponse_Room_Bed_Patient {
							return pb.GetRoomOverviewsByWardResponse_Room_Bed_Patient{
								Id:                      bedRow.PatientID.UUID.String(),
								HumanReadableIdentifier: *bedRow.PatientHumanReadableIdentifier,
								TasksUnscheduled:        uint32(bedRow.TodoTasksCount),                                //nolint:gosec
								TasksInProgress:         uint32(bedRow.InProgressTasksCount),                          //nolint:gosec
								TasksDone:               uint32(bedRow.DoneTasksCount),                                //nolint:gosec
								Consistency:             common.ConsistencyToken(*bedRow.PatientConsistency).String(), //nolint:gosec
							}
						})

					val := &pb.GetRoomOverviewsByWardResponse_Room_Bed{
						Id:          bedRow.BedID.UUID.String(),
						Name:        *bedRow.BedName,
						Patient:     patient,
						Consistency: common.ConsistencyToken(*bedRow.BedConsistency).String(), //nolint:gosec
					}
					return &val
				})
			val := &pb.GetRoomOverviewsByWardResponse_Room{
				Id:          roomRow.RoomID.String(),
				Name:        roomRow.RoomName,
				Beds:        beds,
				Consistency: common.ConsistencyToken(roomRow.RoomConsistency).String(), //nolint:gosec
			}
			return &val
		})

	tracking.AddWardToRecentActivity(ctx, wardID.String())

	return &pb.GetRoomOverviewsByWardResponse{
		Rooms: rooms,
	}, nil
}
