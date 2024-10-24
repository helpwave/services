package room

import (
	"common"
	"context"
	"hwdb"
	"hwutil"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"tasks-svc/internal/tracking"
	"tasks-svc/repos/room_repo"

	pb "gen/services/tasks_svc/v1"
	zlog "github.com/rs/zerolog/log"
)

type ServiceServer struct {
	pb.UnimplementedRoomServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateRoom(ctx context.Context, req *pb.CreateRoomRequest) (*pb.CreateRoomResponse, error) {
	log := zlog.Ctx(ctx)
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth
	wardID, err := uuid.Parse(req.GetWardId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

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

	return &pb.CreateRoomResponse{
		Id:          roomID.String(),
		Consistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (ServiceServer) GetRoom(ctx context.Context, req *pb.GetRoomRequest) (*pb.GetRoomResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

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

func (ServiceServer) UpdateRoom(ctx context.Context, req *pb.UpdateRoomRequest) (*pb.UpdateRoomResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth

	patientID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	consistency, err := roomRepo.UpdateRoom(ctx, room_repo.UpdateRoomParams{
		ID:   patientID,
		Name: req.Name,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.UpdateRoomResponse{
		Conflict:    nil,                                           // TODO
		Consistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (ServiceServer) GetRooms(ctx context.Context, req *pb.GetRoomsRequest) (*pb.GetRoomsResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth
	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := roomRepo.GetRoomsWithBeds(ctx, wardID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	processedRooms := make(map[uuid.UUID]bool)

	roomsResponse := hwutil.FlatMap(rows, func(roomRow room_repo.GetRoomsWithBedsRow) **pb.GetRoomsResponse_Room {
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

	return &pb.GetRoomsResponse{
		Rooms: roomsResponse,
	}, nil
}

func (ServiceServer) DeleteRoom(ctx context.Context, req *pb.DeleteRoomRequest) (*pb.DeleteRoomResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = roomRepo.DeleteRoom(ctx, id)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// TODO: Handle beds

	return &pb.DeleteRoomResponse{}, nil
}

func (ServiceServer) GetRoomOverviewsByWard(
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

	roomsResponse := hwutil.FlatMap(rows,
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
		Rooms: roomsResponse,
	}, nil
}
