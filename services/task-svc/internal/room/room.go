package room

import (
	"common/auth"
	"context"
	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwdb"
	"hwutil"
	"task-svc/internal/tracking"
	"task-svc/repos/room_repo"

	pb "gen/services/task_svc/v1"
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

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	roomID, err := roomRepo.CreateRoom(ctx, room_repo.CreateRoomParams{
		Name:           req.Name,
		OrganizationID: organizationID,
		WardID:         wardId,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("roomID", roomID.String()).
		Msg("room created")

	return &pb.CreateRoomResponse{
		Id: roomID.String(),
	}, nil
}

func (ServiceServer) GetRoom(ctx context.Context, req *pb.GetRoomRequest) (*pb.GetRoomResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
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
			Id:   row.BedID.UUID.String(),
			Name: *row.BedName,
		}
		return &val
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
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth

	patientID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = roomRepo.UpdateRoom(ctx, room_repo.UpdateRoomParams{
		ID:   patientID,
		Name: req.Name,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.UpdateRoomResponse{}, nil
}

func (ServiceServer) GetRooms(ctx context.Context, _ *pb.GetRoomsRequest) (*pb.GetRoomsResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	// TODO: Auth

	rows, err := roomRepo.GetRoomsWithBedsForOrganization(ctx, room_repo.GetRoomsWithBedsForOrganizationParams{
		OrganizationID: organizationID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	processedRooms := make(map[uuid.UUID]bool)

	roomsResponse := hwutil.FlatMap(rows, func(roomRow room_repo.GetRoomsWithBedsForOrganizationRow) **pb.GetRoomsResponse_Room {
		room := roomRow.Room
		if _, processed := processedRooms[room.ID]; processed {
			return nil
		}
		processedRooms[room.ID] = true
		beds := hwutil.FlatMap(rows, func(bedRow room_repo.GetRoomsWithBedsForOrganizationRow) **pb.GetRoomsResponse_Room_Bed {
			if !bedRow.BedID.Valid || bedRow.Room.ID != room.ID {
				return nil
			}
			val := &pb.GetRoomsResponse_Room_Bed{
				Id:   bedRow.BedID.UUID.String(),
				Name: *bedRow.BedName,
			}
			return &val
		})
		val := &pb.GetRoomsResponse_Room{
			Id:             room.ID.String(),
			Name:           room.Name,
			Beds:           beds,
			OrganizationId: room.OrganizationID.String(),
			WardId:         room.WardID.String(),
		}
		return &val
	})

	return &pb.GetRoomsResponse{
		Rooms: roomsResponse,
	}, nil
}

func (ServiceServer) GetRoomsByWard(ctx context.Context, req *pb.GetRoomsByWardRequest) (*pb.GetRoomsByWardResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	// TODO: Auth

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := roomRepo.GetRoomsWithBedsForOrganization(ctx, room_repo.GetRoomsWithBedsForOrganizationParams{
		OrganizationID: organizationID,
		WardID:         uuid.NullUUID{UUID: wardId, Valid: true},
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	processedRooms := make(map[uuid.UUID]bool)

	roomsResponse := hwutil.FlatMap(rows, func(roomRow room_repo.GetRoomsWithBedsForOrganizationRow) **pb.GetRoomsByWardResponse_Room {
		room := roomRow.Room
		if _, processed := processedRooms[room.ID]; processed {
			return nil
		}
		processedRooms[room.ID] = true
		beds := hwutil.FlatMap(rows, func(bedRow room_repo.GetRoomsWithBedsForOrganizationRow) **pb.GetRoomsByWardResponse_Room_Bed {
			if !bedRow.BedID.Valid || bedRow.Room.ID != room.ID {
				return nil
			}
			val := &pb.GetRoomsByWardResponse_Room_Bed{
				Id:   bedRow.BedID.UUID.String(),
				Name: *bedRow.BedName,
			}
			return &val
		})
		val := &pb.GetRoomsByWardResponse_Room{
			Id:             room.ID.String(),
			Name:           room.Name,
			Beds:           beds,
			OrganizationId: room.OrganizationID.String(),
			WardId:         room.WardID.String(),
		}
		return &val
	})

	return &pb.GetRoomsByWardResponse{
		Rooms: roomsResponse,
	}, nil
}

func (ServiceServer) DeleteRoom(ctx context.Context, req *pb.DeleteRoomRequest) (*pb.DeleteRoomResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
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

func (ServiceServer) GetRoomOverviewsByWard(ctx context.Context, req *pb.GetRoomOverviewsByWardRequest) (*pb.GetRoomOverviewsByWardResponse, error) {
	roomRepo := room_repo.New(hwdb.GetDB())

	wardId, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	rows, err := roomRepo.GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganization(ctx,
		room_repo.GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationParams{
			TodoStatus:       int32(pb.TaskStatus_TASK_STATUS_TODO),
			InProgressStatus: int32(pb.TaskStatus_TASK_STATUS_IN_PROGRESS),
			DoneStatus:       int32(pb.TaskStatus_TASK_STATUS_DONE),
			WardID:           wardId,
			OrganizationID:   organizationID,
		})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	processedRooms := make(map[uuid.UUID]bool)

	roomsResponse := hwutil.FlatMap(rows,
		func(roomRow room_repo.GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationRow) **pb.GetRoomOverviewsByWardResponse_Room {
			if _, roomProcessed := processedRooms[roomRow.RoomID]; roomProcessed {
				return nil
			}
			processedRooms[roomRow.RoomID] = true
			beds := hwutil.FlatMap(rows,
				func(bedRow room_repo.GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationRow) **pb.GetRoomOverviewsByWardResponse_Room_Bed {
					if !bedRow.BedID.Valid || bedRow.RoomID != roomRow.RoomID {
						return nil
					}

					patient := hwutil.MapIf(bedRow.PatientID.Valid, bedRow,
						func(bedRow room_repo.GetRoomsWithBedsAndPatientsAndTasksCountByWardForOrganizationRow) pb.GetRoomOverviewsByWardResponse_Room_Bed_Patient {
							return pb.GetRoomOverviewsByWardResponse_Room_Bed_Patient{
								Id:                      bedRow.PatientID.UUID.String(),
								HumanReadableIdentifier: *bedRow.PatientHumanReadableIdentifier,
								TasksUnscheduled:        uint32(bedRow.TodoTasksCount),
								TasksInProgress:         uint32(bedRow.InProgressTasksCount),
								TasksDone:               uint32(bedRow.DoneTasksCount),
							}
						})

					val := &pb.GetRoomOverviewsByWardResponse_Room_Bed{
						Id:      bedRow.BedID.UUID.String(),
						Name:    *bedRow.BedName,
						Patient: patient,
					}
					return &val
				})
			val := &pb.GetRoomOverviewsByWardResponse_Room{
				Id:   roomRow.RoomID.String(),
				Name: roomRow.RoomName,
				Beds: beds,
			}
			return &val
		})

	tracking.AddWardToRecentActivity(ctx, wardId.String())

	return &pb.GetRoomOverviewsByWardResponse{
		Rooms: roomsResponse,
	}, nil
}
