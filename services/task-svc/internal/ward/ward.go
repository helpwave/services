package ward

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwdb"
	"hwgorm"
	"hwutil"
	pbhelpers "proto_helpers/task_svc/v1"
	"task-svc/internal/models"
	"task-svc/internal/repositories"
	"task-svc/internal/tracking"
	"task-svc/repos/ward_repo"
)

type ServiceServer struct {
	pb.UnimplementedWardServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateWard(ctx context.Context, req *pb.CreateWardRequest) (*pb.CreateWardResponse, error) {
	log := zlog.Ctx(ctx)
	wardRepo := ward_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	wardID, err := wardRepo.CreateWard(ctx, ward_repo.CreateWardParams{
		Name:           req.Name,
		OrganizationID: organizationID,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("wardID", wardID.String()).
		Msg("wardID created")

	tracking.AddWardToRecentActivity(ctx, wardID.String())

	return &pb.CreateWardResponse{
		Id: wardID.String(),
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

func (ServiceServer) GetRecentWards(ctx context.Context, req *pb.GetRecentWardsRequest) (*pb.GetRecentWardsResponse, error) {
	wardRepo := repositories.WardRepo(ctx)
	log := zlog.Ctx(ctx)

	// TODO: Auth

	recentWardIDsStr, err := tracking.GetRecentWardsForUser(ctx)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// parse all valid uuids into an array
	recentWardIDs := hwutil.FlatMap(recentWardIDsStr, func(s string) *uuid.UUID {
		parsedUUID, err := uuid.Parse(s)
		if err != nil {
			log.Warn().Str("uuid", s).Msg("GetRecentWardsForUser returned invalid uuid")
			return nil
		}
		return &parsedUUID
	})

	recentWards, err := wardRepo.GetWardsByIDs(recentWardIDs)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	bedCounts, err := wardRepo.CountBedsForWards(recentWardIDs)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	taskCounts, err := wardRepo.CountTasksWithStatusForWards(recentWardIDs)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	response := hwutil.Map(recentWards, func(ward models.Ward) *pb.GetRecentWardsResponse_Ward {
		return &pb.GetRecentWardsResponse_Ward{
			Id:              ward.ID.String(),
			Name:            ward.Name,
			BedCount:        uint32(bedCounts[ward.ID]),
			TasksTodo:       uint32(taskCounts[ward.ID][pb.TaskStatus_TASK_STATUS_TODO]),
			TasksInProgress: uint32(taskCounts[ward.ID][pb.TaskStatus_TASK_STATUS_IN_PROGRESS]),
			TasksDone:       uint32(taskCounts[ward.ID][pb.TaskStatus_TASK_STATUS_DONE]),
		}
	})

	return &pb.GetRecentWardsResponse{Wards: response}, nil
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

	wards, err := wardRepo.GetWardsForOrganizationFullyLoaded(organizationID)
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
	templateRepo := repositories.TemplateRepo(ctx)

	wardID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward, err := wardRepo.GetWardByIdWithPreloadedRoomsAndBeds(wardID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	mappedRooms := hwutil.Map(ward.Rooms, func(room models.Room) *pb.GetWardDetailsResponse_Room {
		var mappedBeds = hwutil.Map(room.Beds, func(bed models.Bed) *pb.GetWardDetailsResponse_Bed {
			return &pb.GetWardDetailsResponse_Bed{
				Id:   bed.ID.String(),
				Name: bed.Name,
			}
		})

		return &pb.GetWardDetailsResponse_Room{
			Id:   room.ID.String(),
			Name: room.Name,
			Beds: mappedBeds,
		}
	})

	taskTemplates, err := templateRepo.GetTaskTemplatesByWardWithSubtasks(wardID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	mappedTaskTemplates := hwutil.Map(taskTemplates, func(taskTemplate models.TaskTemplate) *pb.GetWardDetailsResponse_TaskTemplate {
		var mappedSubtasks = hwutil.Map(taskTemplate.SubTasks, func(taskTemplateSubtask models.TaskTemplateSubtask) *pb.GetWardDetailsResponse_Subtask {
			return &pb.GetWardDetailsResponse_Subtask{
				Name: taskTemplateSubtask.Name,
				Id:   taskTemplateSubtask.ID.String(),
			}
		})

		return &pb.GetWardDetailsResponse_TaskTemplate{
			Id:       taskTemplate.ID.String(),
			Name:     taskTemplate.Name,
			Subtasks: mappedSubtasks,
		}
	})

	return &pb.GetWardDetailsResponse{
		Id:            ward.ID.String(),
		Name:          ward.Name,
		Rooms:         mappedRooms,
		TaskTemplates: mappedTaskTemplates,
	}, nil
}
