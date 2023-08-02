package ward

import (
	"common"
	"context"
	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"hwutil"
	"task-svc/internal/bed"
	"task-svc/internal/models"
	"task-svc/internal/patient"
	"task-svc/internal/repositories"
	"task-svc/internal/task"

	pb "gen/proto/services/task_svc/v1"
	zlog "github.com/rs/zerolog/log"
	pbhelpers "proto_helpers/task_svc/v1"
)

type ServiceServer struct {
	pb.UnimplementedWardServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateWard(ctx context.Context, req *pb.CreateWardRequest) (*pb.CreateWardResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward := models.Ward{
		WardBase: models.WardBase{
			Name: req.GetName(),
		},
		OrganizationID: organizationID,
	}

	if err := db.Create(&ward).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("wardId", ward.ID.String()).
		Msg("ward created")

	return &pb.CreateWardResponse{
		Id: ward.ID.String(),
	}, nil
}

func (ServiceServer) GetWard(ctx context.Context, req *pb.GetWardRequest) (*pb.GetWardResponse, error) {
	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	wardRepository := repositories.NewWardRepositoryWithDB(hwgorm.GetDB(ctx))
	ward, err := wardRepository.GetWardByIdForOrganization(ctx, id)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetWardResponse{
		Id:   ward.ID.String(),
		Name: ward.Name,
	}, nil
}

func (ServiceServer) GetWards(ctx context.Context, req *pb.GetWardsRequest) (*pb.GetWardsResponse, error) {
	wardRepository := repositories.NewWardRepositoryWithDB(hwgorm.GetDB(ctx))
	wards, err := wardRepository.GetWardsForOrganization(ctx)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetWardsResponse{
		Wards: hwutil.Map(wards, func(ward *models.Ward) *pb.GetWardsResponse_Ward {
			return &pb.GetWardsResponse_Ward{
				Id:   ward.ID.String(),
				Name: ward.Name,
			}
		}),
	}, nil
}

func (ServiceServer) UpdateWard(ctx context.Context, req *pb.UpdateWardRequest) (*pb.UpdateWardResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward := models.Ward{ID: id}
	updates := pbhelpers.UpdatesMapForUpdateWardRequest(req)

	if err := db.Model(&ward).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateWardResponse{}, nil
}

func (ServiceServer) DeleteWard(ctx context.Context, req *pb.DeleteWardRequest) (*pb.DeleteWardResponse, error) {
	db := hwgorm.GetDB(ctx)

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	wardRepository := repositories.NewWardRepositoryWithDB(hwgorm.GetDB(ctx))
	ward, err := wardRepository.GetWardByIdForOrganization(ctx, id)
	if err != nil {
		return nil, err
	}

	if err := db.Delete(ward).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.DeleteWardResponse{}, nil
}

func (s ServiceServer) GetWardOverviews(ctx context.Context, _ *pb.GetWardOverviewsRequest) (*pb.GetWardOverviewsResponse, error) {
	wardRepository := repositories.NewWardRepositoryWithDB(hwgorm.GetDB(ctx))
	wards, err := wardRepository.GetWardsForOrganization(ctx)
	if err != nil {
		return nil, err
	}

	resWards, err := hwutil.MapWithErr(wards, func(ward *models.Ward) (*pb.GetWardOverviewsResponse_Ward, error) {
		roomRepository := repositories.NewRoomRepositoryWithDB(hwgorm.GetDB(ctx))
		rooms, err := roomRepository.GetByWardForOrganization(ctx, ward.ID)
		if err != nil {
			return nil, err
		}

		var bedCount uint32
		for _, room := range rooms {
			beds, err := bed.GetBedsByRoomForOrganization(ctx, room.ID)
			if err != nil {
				return nil, err
			}
			bedCount += uint32(len(beds))
		}

		patients, err := patient.GetPatientsByWardForOrganization(ctx, ward.ID)
		if err != nil {
			return nil, err
		}

		var tasksTodo uint32
		var tasksInProgress uint32
		var tasksDone uint32
		for _, p := range patients {
			tasks, err := task.GetTasksByPatientForOrganization(ctx, p.ID)
			if err != nil {
				return nil, err
			}

			for _, t := range tasks {
				switch t.Status {
				case pb.TaskStatus_TASK_STATUS_TODO:
					tasksTodo++
				case pb.TaskStatus_TASK_STATUS_IN_PROGRESS:
					tasksInProgress++
				case pb.TaskStatus_TASK_STATUS_DONE:
					tasksDone++
				}
			}
		}

		return &pb.GetWardOverviewsResponse_Ward{
			Id:              ward.ID.String(),
			Name:            ward.Name,
			BedCount:        bedCount,
			TasksTodo:       tasksTodo,
			TasksInProgress: tasksInProgress,
			TasksDone:       tasksDone,
		}, nil
	})

	return &pb.GetWardOverviewsResponse{Wards: resWards}, err

}

func (ServiceServer) GetWardDetails(ctx context.Context, req *pb.GetWardDetailsRequest) (*pb.GetWardDetailsResponse, error) {
	wardID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	wardRepository := repositories.NewWardRepositoryWithDB(hwgorm.GetDB(ctx))
	ward, err := wardRepository.GetWardById(wardID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	roomRepository := repositories.NewRoomRepositoryWithDB(hwgorm.GetDB(ctx))
	rooms, err := roomRepository.GetRoomByWard(wardID)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	bedRepository := repositories.NewBedRepositoryWithDB(hwgorm.GetDB(ctx))
	mappedRooms, err := hwutil.MapWithErr(rooms, func(room models.Room) (*pb.GetWardDetailsResponse_Room, error) {
		beds, err := bedRepository.GetBedsByRoom(room.ID)
		if err != nil {
			return nil, err

		}
		var mappedBeds = hwutil.Map(beds, func(bed models.Bed) *pb.GetWardDetailsResponse_Bed {
			return &pb.GetWardDetailsResponse_Bed{
				Id:   bed.ID.String(),
				Name: bed.Name,
			}
		})

		return &pb.GetWardDetailsResponse_Room{
			Id:   room.ID.String(),
			Name: room.Name,
			Beds: mappedBeds,
		}, nil
	})

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	templateRepository := repositories.NewTemplateRepositoryWithDB(hwgorm.GetDB(ctx))
	taskTemplates, err := templateRepository.GetTemplateByWard(wardID)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	mappedTaskTemplates, err := hwutil.MapWithErr(taskTemplates, func(taskTemplate models.TaskTemplate) (*pb.GetWardDetailsResponse_TaskTemplate, error) {
		taskTemplateSubtasks, err := templateRepository.GetSubTasksByTemplate(taskTemplate.ID)

		if err != nil {
			return nil, err
		}

		var mappedSubtasks = hwutil.Map(taskTemplateSubtasks, func(taskTemplateSubtask models.TaskTemplateSubtask) *pb.GetWardDetailsResponse_Subtask {
			return &pb.GetWardDetailsResponse_Subtask{
				Name: taskTemplateSubtask.Name,
				Id:   taskTemplateSubtask.ID.String(),
			}
		})

		return &pb.GetWardDetailsResponse_TaskTemplate{
			Id:       taskTemplate.ID.String(),
			Name:     taskTemplate.Name,
			Subtasks: mappedSubtasks,
		}, nil
	})

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	return &pb.GetWardDetailsResponse{
		Id:            ward.ID.String(),
		Name:          ward.Name,
		Rooms:         mappedRooms,
		TaskTemplates: mappedTaskTemplates,
	}, nil
}
