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

// GetRoomsWithBedsAndPatientsAndTasksByWardForOrganization
// TODO: Move into repository
func GetRoomsWithBedsAndPatientsAndTasksByWardForOrganization(ctx context.Context, wardID uuid.UUID) ([]models.Room, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var rooms []models.Room
	query := db.
		Scopes(repositories.PreloadBedsSorted).
		Preload("Beds.Patient").
		Preload("Beds.Patient.Tasks").
		Where("organization_id = ? AND ward_id = ?", organizationID.String(), wardID.String()).
		Find(&rooms)

	if err := query.Error; err != nil {
		return nil, err
	}

	return rooms, nil
}

func (ServiceServer) CreateRoom(ctx context.Context, req *pb.CreateRoomRequest) (*pb.CreateRoomResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := models.Room{
		RoomBase: models.RoomBase{
			Name: req.Name,
		},
		OrganizationID: organizationID,
		WardID:         wardId,
	}

	if err := db.Create(&room).Error; err != nil {
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
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := models.Room{ID: id}
	if err := db.Scopes(repositories.PreloadBedsSorted).First(&room).Error; err != nil {
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
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := models.Room{ID: id}
	updates := pbhelpers.UpdatesMapForUpdateRoomRequest(req)

	if err := db.Model(&room).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateRoomResponse{}, nil
}

func (ServiceServer) GetRooms(ctx context.Context, _ *pb.GetRoomsRequest) (*pb.GetRoomsResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	var rooms []models.Room
	if err := db.Scopes(repositories.PreloadBedsSorted).Find(&rooms).Error; err != nil {
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
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	var rooms []models.Room
	if err := db.Scopes(repositories.PreloadBedsSorted).Find(&rooms, "ward_id = ?", wardId).Error; err != nil {
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
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	room := models.Room{ID: id}

	if err := db.Delete(&room).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// TODO: Handle beds

	return &pb.DeleteRoomResponse{}, nil
}

func (ServiceServer) GetRoomOverviewsByWard(ctx context.Context, req *pb.GetRoomOverviewsByWardRequest) (*pb.GetRoomOverviewsByWardResponse, error) {
	wardId, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rooms, err := GetRoomsWithBedsAndPatientsAndTasksByWardForOrganization(ctx, wardId)
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

	return &pb.GetRoomOverviewsByWardResponse{
		Rooms: roomsResponse,
	}, nil
}
