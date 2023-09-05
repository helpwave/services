package ward

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"hwutil"
	pbhelpers "proto_helpers/task_svc/v1"
	"task-svc/internal/models"
	"task-svc/internal/repositories"
	"task-svc/internal/tracking"
)

type ServiceServer struct {
	pb.UnimplementedWardServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateWard(ctx context.Context, req *pb.CreateWardRequest) (*pb.CreateWardResponse, error) {
	log := zlog.Ctx(ctx)
	wardRepo := repositories.WardRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward, err := wardRepo.CreateWard(&models.Ward{
		WardBase: models.WardBase{
			Name: req.GetName(),
		},
		OrganizationID: organizationID,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("wardId", ward.ID.String()).
		Msg("ward created")

	tracking.AddWardToRecentActivity(ctx, ward.ID.String())

	return &pb.CreateWardResponse{
		Id: ward.ID.String(),
	}, nil
}

func (ServiceServer) GetWard(ctx context.Context, req *pb.GetWardRequest) (*pb.GetWardResponse, error) {
	wardRepo := repositories.WardRepo(ctx)

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward, err := wardRepo.GetWardByIdForOrganization(id, organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return &pb.GetWardResponse{
		Id:             ward.ID.String(),
		Name:           ward.Name,
		OrganizationId: ward.OrganizationID.String(),
	}, nil
}

func (ServiceServer) GetWards(ctx context.Context, req *pb.GetWardsRequest) (*pb.GetWardsResponse, error) {
	wardRepo := repositories.WardRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wards, err := wardRepo.GetWardsForOrganization(organizationID)

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
	wardRepo := repositories.WardRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	updates := pbhelpers.UpdatesMapForUpdateWardRequest(req)
	_, err = wardRepo.UpdateWard(id, updates)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	tracking.AddWardToRecentActivity(ctx, id.String())

	return &pb.UpdateWardResponse{}, nil
}

func (ServiceServer) DeleteWard(ctx context.Context, req *pb.DeleteWardRequest) (*pb.DeleteWardResponse, error) {
	wardRepo := repositories.WardRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward, err := wardRepo.GetWardByIdForOrganization(id, organizationID)
	if err != nil {
		return nil, err
	}

	if err := wardRepo.DeleteWard(ward.ID); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	tracking.RemoveWardFromRecentActivity(ctx, id.String())

	return &pb.DeleteWardResponse{}, nil
}

func (s ServiceServer) GetWardOverviews(ctx context.Context, _ *pb.GetWardOverviewsRequest) (*pb.GetWardOverviewsResponse, error) {
	wardRepo := repositories.WardRepo(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wards, err := wardRepo.GetWardOverviewsForOrganization(organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	resWards := hwutil.Map(wards, func(ward *models.Ward) *pb.GetWardOverviewsResponse_Ward {
		rooms := ward.Rooms

		var bedCount uint32
		var tasksTodo uint32
		var tasksInProgress uint32
		var tasksDone uint32

		for _, room := range rooms {
			beds := room.Beds
			bedCount += uint32(len(beds))

			for _, bed := range beds {
				if bed.Patient != nil {
					tasks := bed.Patient.Tasks

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
			}
		}

		return &pb.GetWardOverviewsResponse_Ward{
			Id:              ward.ID.String(),
			Name:            ward.Name,
			BedCount:        bedCount,
			TasksTodo:       tasksTodo,
			TasksInProgress: tasksInProgress,
			TasksDone:       tasksDone,
		}
	})

	return &pb.GetWardOverviewsResponse{Wards: resWards}, err
}

func (ServiceServer) GetWardDetails(ctx context.Context, req *pb.GetWardDetailsRequest) (*pb.GetWardDetailsResponse, error) {
	wardRepo := repositories.WardRepo(ctx)
	roomRepo := repositories.RoomRepo(ctx)
	bedRepo := repositories.BedRepo(ctx)
	templateRepo := repositories.TemplateRepo(ctx)

	wardID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward, err := wardRepo.GetWardById(wardID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	rooms, err := roomRepo.GetRoomsByWard(wardID)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	mappedRooms, err := hwutil.MapWithErr(rooms, func(room models.Room) (*pb.GetWardDetailsResponse_Room, error) {
		// FIXME: this is a sin and need to be refactored! (#345)
		// FIXME: don't make network requests in loops, like ever
		beds, err := bedRepo.GetBedsByRoom(room.ID)
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

	taskTemplates, err := templateRepo.GetTaskTemplatesByWard(wardID)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	mappedTaskTemplates, err := hwutil.MapWithErr(taskTemplates, func(taskTemplate models.TaskTemplate) (*pb.GetWardDetailsResponse_TaskTemplate, error) {
		// FIXME: #345
		taskTemplateSubtasks, err := templateRepo.GetSubTasksForTaskTemplate(taskTemplate.ID)

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
