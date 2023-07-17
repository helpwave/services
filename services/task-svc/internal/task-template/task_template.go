package task_template

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
	"task-svc/internal/task-template/models"
)

type ServiceServer struct {
	pb.UnimplementedTaskTemplateServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateTaskTemplate(ctx context.Context, req *pb.CreateTaskTemplateRequest) (*pb.CreateTaskTemplateResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, err
	}

	wardID, err := hwutil.StringToUUIDPtr(req.WardId)
	if err != nil {
		return nil, err
	}

	description := ""
	if req.Description != nil {
		description = *req.Description
	}
	taskTemplate := models.TaskTemplate{
		Base:           models.Base{Name: req.Name, Description: description},
		OrganizationID: organizationID,
		CreatedBy:      userID,
		WardID:         wardID,
	}

	// This also implicitly checks the wardID because of the foreignKey constraint in the sql
	if err := db.Create(&taskTemplate).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var subtasks []models.TaskTemplateSubtask
	if req.Subtasks != nil {
		subtasks = hwutil.Map(req.Subtasks, func(subtask *pb.CreateTaskTemplateRequest_SubTask) models.TaskTemplateSubtask {
			return models.TaskTemplateSubtask{Name: subtask.Name, TaskTemplateID: taskTemplate.ID}
		})
	}

	taskTemplate.SubTasks = append(taskTemplate.SubTasks, subtasks...)
	if err := db.Save(&taskTemplate).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskTemplateId", taskTemplate.ID.String()).
		Msg("taskTemplate created")

	return &pb.CreateTaskTemplateResponse{
		Id: taskTemplate.ID.String(),
	}, nil
}

func (ServiceServer) GetAllTaskTemplates(ctx context.Context, _ *pb.GetAllTaskTemplatesRequest) (*pb.GetAllTaskTemplatesResponse, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	var taskTemplates []models.TaskTemplate

	if err := db.Preload("SubTasks").Where("organization_id = ?", organizationID).Find(&taskTemplates).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	var mappedTaskTemplates = hwutil.Map(taskTemplates, func(taskTemplate models.TaskTemplate) *pb.GetAllTaskTemplatesResponse_TaskTemplate {
		var mappedSubtasks = hwutil.Map(taskTemplate.SubTasks, func(subtask models.TaskTemplateSubtask) *pb.GetAllTaskTemplatesResponse_TaskTemplate_SubTask {
			return &pb.GetAllTaskTemplatesResponse_TaskTemplate_SubTask{
				Id:             subtask.ID.String(),
				TaskTemplateId: subtask.TaskTemplateID.String(),
				Name:           subtask.Name,
			}
		})
		return &pb.GetAllTaskTemplatesResponse_TaskTemplate{
			Id:          taskTemplate.ID.String(),
			Name:        taskTemplate.Name,
			Description: taskTemplate.Description,
			IsPublic:    taskTemplate.WardID != nil,
			CreatedBy:   hwutil.UUIDToStringPtr(&taskTemplate.CreatedBy),
			Subtasks:    mappedSubtasks,
		}
	})

	return &pb.GetAllTaskTemplatesResponse{
		Templates: mappedTaskTemplates,
	}, nil
}

func (ServiceServer) DeleteTaskTemplate(ctx context.Context, req *pb.DeleteTaskTemplateRequest) (*pb.DeleteTaskTemplateResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	taskTemplate := models.TaskTemplate{ID: id}

	if err := db.Delete(&taskTemplate).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskTemplateId", taskTemplate.ID.String()).
		Msg("taskTemplate deleted")

	return &pb.DeleteTaskTemplateResponse{}, nil
}

func (ServiceServer) DeleteTaskTemplateSubTask(ctx context.Context, req *pb.DeleteTaskTemplateSubTaskRequest) (*pb.DeleteTaskTemplateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	taskTemplateSubtask := models.TaskTemplateSubtask{ID: id}

	if err := db.Delete(&taskTemplateSubtask).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskTemplateSubtaskId", taskTemplateSubtask.ID.String()).
		Str("taskTemplateId", taskTemplateSubtask.TaskTemplateID.String()).
		Msg("taskTemplateSubtask deleted")

	return &pb.DeleteTaskTemplateSubTaskResponse{}, nil
}

func (ServiceServer) UpdateTaskTemplate(ctx context.Context, req *pb.UpdateTaskTemplateRequest) (*pb.UpdateTaskTemplateResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	taskTemplate := models.TaskTemplate{ID: id}
	updates := pbhelpers.UpdatesMapForUpdateTaskTemplateRequest(req)

	if err := db.Model(&taskTemplate).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateTaskTemplateResponse{}, nil
}

func (ServiceServer) UpdateTaskTemplateSubTask(ctx context.Context, req *pb.UpdateTaskTemplateSubTaskRequest) (*pb.UpdateTaskTemplateSubTaskResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.SubtaskId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	taskTemplate := models.TaskTemplateSubtask{ID: id}
	updates := pbhelpers.UpdatesMapForUpdateTaskTemplateSubTaskRequest(req)

	if err := db.Model(&taskTemplate).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateTaskTemplateSubTaskResponse{}, nil
}

func (ServiceServer) CreateTaskTemplateSubTask(ctx context.Context, req *pb.CreateTaskTemplateSubTaskRequest) (*pb.CreateTaskTemplateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	taskTemplateID, err := uuid.Parse(req.TaskTemplateId)
	if err != nil {
		return nil, err
	}

	taskTemplateSubtask := models.TaskTemplateSubtask{
		TaskTemplateID: taskTemplateID,
		Name:           req.Name,
	}

	// implicitly checks the existence of the ward through the foreign key constraint
	if err := db.Create(&taskTemplateSubtask).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskTemplateId", taskTemplateSubtask.TaskTemplateID.String()).
		Str("taskTemplateSubTaskId", taskTemplateSubtask.ID.String()).
		Msg("taskTemplateSubtask created")

	return &pb.CreateTaskTemplateSubTaskResponse{
		Id: taskTemplateSubtask.ID.String(),
	}, nil
}

func (ServiceServer) GetAllTaskTemplatesByCreator(ctx context.Context, req *pb.GetAllTaskTemplatesByCreatorRequest) (*pb.GetAllTaskTemplatesByCreatorResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	createdBy, err := uuid.Parse(req.CreatedBy)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	var taskTemplates []models.TaskTemplate

	if err := db.Preload("SubTasks").Where("created_by = ? AND ward_id IS NULL", createdBy).Find(&taskTemplates).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	var mappedTaskTemplates = hwutil.Map(taskTemplates, func(taskTemplate models.TaskTemplate) *pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate {
		var mappedSubtasks = hwutil.Map(taskTemplate.SubTasks, func(subtask models.TaskTemplateSubtask) *pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask {
			return &pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask{
				Id:             subtask.ID.String(),
				TaskTemplateId: subtask.TaskTemplateID.String(),
				Name:           subtask.Name,
			}
		})
		return &pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate{
			Id:          taskTemplate.ID.String(),
			Name:        taskTemplate.Name,
			Description: taskTemplate.Description,
			IsPublic:    taskTemplate.WardID != nil,
			Subtasks:    mappedSubtasks,
		}
	})

	return &pb.GetAllTaskTemplatesByCreatorResponse{
		Templates: mappedTaskTemplates,
	}, nil
}

func (ServiceServer) GetAllTaskTemplatesByWard(ctx context.Context, req *pb.GetAllTaskTemplatesByWardRequest) (*pb.GetAllTaskTemplatesByWardResponse, error) {
	db := hwgorm.GetDB(ctx)

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	var taskTemplates []models.TaskTemplate

	if err := db.Preload("SubTasks").Where("ward_id = ?", wardId).Find(&taskTemplates).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	var mappedTaskTemplates = hwutil.Map(taskTemplates, func(taskTemplate models.TaskTemplate) *pb.GetAllTaskTemplatesByWardResponse_TaskTemplate {
		var mappedSubtasks = hwutil.Map(taskTemplate.SubTasks, func(subtask models.TaskTemplateSubtask) *pb.GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask {
			return &pb.GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask{
				Id:             subtask.ID.String(),
				TaskTemplateId: subtask.TaskTemplateID.String(),
				Name:           subtask.Name,
			}
		})
		return &pb.GetAllTaskTemplatesByWardResponse_TaskTemplate{
			Id:          taskTemplate.ID.String(),
			Name:        taskTemplate.Name,
			Description: taskTemplate.Description,
			IsPublic:    taskTemplate.WardID != nil,
			CreatedBy:   hwutil.UUIDToStringPtr(&taskTemplate.CreatedBy),
			Subtasks:    mappedSubtasks,
		}
	})

	return &pb.GetAllTaskTemplatesByWardResponse{
		Templates: mappedTaskTemplates,
	}, nil
}
