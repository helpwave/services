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
	"task-svc/internal/bed"
	bedmodels "task-svc/internal/bed/models"
	"task-svc/internal/patient"
	roommodels "task-svc/internal/room/models"
	"task-svc/internal/task"
	templatemodels "task-svc/internal/task-template/models"
	"task-svc/internal/ward/models"
	wardmodels "task-svc/internal/ward/models"
)

func GetWardByIdForOrganization(ctx context.Context, id uuid.UUID) (*models.Ward, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward := models.Ward{ID: id, OrganizationID: organizationID}
	if err := db.First(&ward).Error; err != nil {
		return nil, err
	}

	return &ward, nil
}

func GetWardsForOrganization(ctx context.Context) ([]*models.Ward, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var wards []*models.Ward
	if err := db.Where("organization_id = ?", organizationID).Find(&wards).Error; err != nil {
		return nil, err
	}

	return wards, err
}

func GetWardByIdForOrganization(ctx context.Context, id uuid.UUID) (*Ward, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward := Ward{ID: id, OrganizationID: organizationID}
	if err := db.First(&ward).Error; err != nil {
		return nil, err
	}

	return &ward, nil
}

func GetWardsForOrganization(ctx context.Context) ([]*Ward, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var wards []*Ward
	if err := db.Where("organization_id = ?", organizationID).Find(&wards).Error; err != nil {
		return nil, err
	}

	return wards, err
}

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
		Base: models.Base{
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
		Id:   ward.ID.String(),
		Name: ward.Name,
	}, nil
}

func (ServiceServer) GetWard(ctx context.Context, req *pb.GetWardRequest) (*pb.GetWardResponse, error) {
	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	ward, err := GetWardByIdForOrganization(ctx, id)
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
	wards, err := GetWardsForOrganization(ctx)
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

	ward, err := GetWardByIdForOrganization(ctx, id)
	if err != nil {
		return nil, err
	}

	if err := db.Delete(ward).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.DeleteWardResponse{}, nil
}

func (s ServiceServer) GetWardOverviews(ctx context.Context, _ *pb.GetWardOverviewsRequest) (*pb.GetWardOverviewsResponse, error) {
	wards, err := GetWardsForOrganization(ctx)
	if err != nil {
		return nil, err
	}

	resWards, err := hwutil.MapWithErr(wards, func(ward *models.Ward) (*pb.GetWardOverviewsResponse_Ward, error) {
		roomRepository := roommodels.NewRoomRepositoryWithDB(hwgorm.GetDB(ctx))
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

	wardRepository := wardmodels.NewWardRepositoryWithDB(hwgorm.GetDB(ctx))
	ward, err := wardRepository.GetWardById(wardID)
	if err != nil {
		return nil, err
	}

	roomRepository := roommodels.NewRoomRepositoryWithDB(hwgorm.GetDB(ctx))
	rooms, err := roomRepository.GetRoomByWard(wardID)

	if err != nil {
		return nil, err
	}

	bedRepository := bedmodels.NewRoomRepositoryWithDB(hwgorm.GetDB(ctx))
	var mappedRooms = hwutil.Map(rooms, func(room roommodels.Room) *pb.GetWardDetailsResponse_Room {
		beds, _ := bedRepository.GetBedsByRoom(room.ID)

		var mappedBeds = hwutil.Map(beds, func(bed bedmodels.Bed) *pb.GetWardDetailsResponse_Bed {
			return &pb.GetWardDetailsResponse_Bed{
				Id: bed.ID.String(),
			}
		})

		return &pb.GetWardDetailsResponse_Room{
			Beds: mappedBeds,
			Name: room.Name,
		}
	})

	templateRepository := templatemodels.NewTemplateRepositoryWithDB(hwgorm.GetDB(ctx))
	taskTemplates, err := templateRepository.GetTemplateByWard(wardID)

	if err != nil {
		return nil, err
	}

	var mappedTaskTemplates = hwutil.Map(taskTemplates, func(taskTemplate templatemodels.TaskTemplate) *pb.GetWardDetailsResponse_TaskTemplate {
		taskTemplateSubtasks, _ := templateRepository.GetSubTasksByTemplate(taskTemplate.ID)

		var mappedSubtasks = hwutil.Map(taskTemplateSubtasks, func(taskTemplateSubtask templatemodels.TaskTemplateSubtask) *pb.GetWardDetailsResponse_Subtask {
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
