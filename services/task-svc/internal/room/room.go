package room

import (
	"common"
	"context"
	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"hwutil"
	"task-svc/internal/models"
	"task-svc/internal/repositories"
	"task-svc/internal/tracking"

	pb "gen/proto/services/task_svc/v1"
	zlog "github.com/rs/zerolog/log"
	pbhelpers "proto_helpers/task_svc/v1"
)

type ServiceServer struct {
	pb.UnimplementedRoomServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateRoom(ctx context.Context, req *pb.CreateRoomRequest) (*pb.CreateRoomResponse, error) {
	log := zlog.Ctx(ctx)
	roomRepo := repositories.RoomRepo(ctx)

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room, err := roomRepo.CreateRoom(&models.Room{
		RoomBase: models.RoomBase{
			Name: req.Name,
		},
		OrganizationID: organizationID,
		WardID:         wardId,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("roomId", room.ID.String()).
		Int("beds", len(room.Beds)).
		Msg("room created")

	return &pb.CreateRoomResponse{
		Id: room.ID.String(),
	}, nil
}

func (ServiceServer) GetRoom(ctx context.Context, req *pb.GetRoomRequest) (*pb.GetRoomResponse, error) {
	roomRepo := repositories.RoomRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room, err := roomRepo.GetRoomWithBedsById(id)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	beds := hwutil.Map(room.Beds, func(bed models.Bed) *pb.GetRoomResponse_Bed {
		return &pb.GetRoomResponse_Bed{
			Id:   bed.ID.String(),
			Name: bed.Name,
		}
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
	roomRepo := repositories.RoomRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	updates := pbhelpers.UpdatesMapForUpdateRoomRequest(req)
	_, err = roomRepo.UpdateRoom(id, updates)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateRoomResponse{}, nil
}

func (ServiceServer) GetRooms(ctx context.Context, _ *pb.GetRoomsRequest) (*pb.GetRoomsResponse, error) {
	roomRepo := repositories.RoomRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	// TODO: Auth

	rooms, err := roomRepo.GetRoomsWithBedsForOrganization(organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	roomsResponse := hwutil.Map(rooms, func(room models.Room) *pb.GetRoomsResponse_Room {
		beds := hwutil.Map(room.Beds, func(bed models.Bed) *pb.GetRoomsResponse_Room_Bed {
			return &pb.GetRoomsResponse_Room_Bed{
				Id:   bed.ID.String(),
				Name: bed.Name,
			}
		})
		return &pb.GetRoomsResponse_Room{
			Id:             room.ID.String(),
			Name:           room.Name,
			Beds:           beds,
			OrganizationId: room.OrganizationID.String(),
			WardId:         room.WardID.String(),
		}
	})

	return &pb.GetRoomsResponse{
		Rooms: roomsResponse,
	}, nil
}

func (ServiceServer) GetRoomsByWard(ctx context.Context, req *pb.GetRoomsByWardRequest) (*pb.GetRoomsByWardResponse, error) {
	roomRepo := repositories.RoomRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	// TODO: Auth

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rooms, err := roomRepo.GetRoomsWithBedsByWardForOrganization(wardId, organizationID)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	roomsResponse := hwutil.Map(rooms, func(room models.Room) *pb.GetRoomsByWardResponse_Room {
		beds := hwutil.Map(room.Beds, func(bed models.Bed) *pb.GetRoomsByWardResponse_Room_Bed {
			return &pb.GetRoomsByWardResponse_Room_Bed{
				Id:   bed.ID.String(),
				Name: bed.Name,
			}
		})
		return &pb.GetRoomsByWardResponse_Room{
			Id:             room.ID.String(),
			Name:           room.Name,
			Beds:           beds,
			OrganizationId: room.OrganizationID.String(),
			WardId:         room.WardID.String(),
		}
	})

	return &pb.GetRoomsByWardResponse{
		Rooms: roomsResponse,
	}, nil
}

func (ServiceServer) DeleteRoom(ctx context.Context, req *pb.DeleteRoomRequest) (*pb.DeleteRoomResponse, error) {
	roomRepo := repositories.RoomRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := roomRepo.DeleteRoom(id); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// TODO: Handle beds

	return &pb.DeleteRoomResponse{}, nil
}

func (ServiceServer) GetRoomOverviewsByWard(ctx context.Context, req *pb.GetRoomOverviewsByWardRequest) (*pb.GetRoomOverviewsByWardResponse, error) {
	roomRepo := repositories.RoomRepo(ctx)

	wardId, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	rooms, err := roomRepo.GetRoomsWithBedsAndPatientsAndTasksByWardForOrganization(wardId, organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	roomsResponse, err := hwutil.MapWithErr(rooms, func(room models.Room) (*pb.GetRoomOverviewsByWardResponse_Room, error) {
		beds, err := hwutil.MapWithErr(room.Beds, func(bed models.Bed) (*pb.GetRoomOverviewsByWardResponse_Room_Bed, error) {
			var patient *pb.GetRoomOverviewsByWardResponse_Room_Bed_Patient
			if bed.Patient != nil {
				patient = &pb.GetRoomOverviewsByWardResponse_Room_Bed_Patient{
					Id:                      bed.Patient.ID.String(),
					HumanReadableIdentifier: bed.Patient.HumanReadableIdentifier,
					TasksUnscheduled: uint32(hwutil.CountElements(bed.Patient.Tasks, func(task models.Task) bool {
						return task.Status == pb.TaskStatus_TASK_STATUS_TODO
					})),
					TasksInProgress: uint32(hwutil.CountElements(bed.Patient.Tasks, func(task models.Task) bool {
						return task.Status == pb.TaskStatus_TASK_STATUS_IN_PROGRESS
					})),
					TasksDone: uint32(hwutil.CountElements(bed.Patient.Tasks, func(task models.Task) bool {
						return task.Status == pb.TaskStatus_TASK_STATUS_DONE
					})),
				}
			}

			return &pb.GetRoomOverviewsByWardResponse_Room_Bed{
				Id:      bed.ID.String(),
				Name:    bed.Name,
				Patient: patient,
			}, nil
		})
		if err != nil {
			return nil, err
		}
		return &pb.GetRoomOverviewsByWardResponse_Room{
			Id:   room.ID.String(),
			Name: room.Name,
			Beds: beds,
		}, nil
	})
	if err != nil {
		return nil, err
	}

	tracking.AddWardToRecentActivity(ctx, wardId.String())

	return &pb.GetRoomOverviewsByWardResponse{
		Rooms: roomsResponse,
	}, nil
}
