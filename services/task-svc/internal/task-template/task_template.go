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
)

type Base struct {
	Name        string `gorm:"column:name"`
	Description string `gorm:"column:description"`
}

type TaskTemplate struct {
	Base
	ID             uuid.UUID             `gorm:"column:id"`
	OrganizationID uuid.UUID             `gorm:"column:organization_id"`
	Public         bool                  `gorm:"column:is_public"`
	UserID         uuid.UUID             `gorm:"column:user_id"`
	WardID         *uuid.UUID            `gorm:"column:ward_id;default:NULL"`
	SubTasks       []TaskTemplateSubtask `gorm:"foreignKey:TaskTemplateID"`
}

type TaskTemplateSubtask struct {
	ID             uuid.UUID `gorm:"column:id"`
	TaskTemplateID uuid.UUID `gorm:"column:task_template_id"`
	Name           string    `gorm:"column:name"`
}

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

	taskTemplate := TaskTemplate{
		Base:           Base{Name: req.Name, Description: req.Description},
		OrganizationID: organizationID,
		Public:         req.Public,
		UserID:         userID,
		WardID:         wardID,
	}

	// This also implicitly checks the wardID because of the foreignKey constraint in the sql
	if err := db.Create(&taskTemplate).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var subtasks []TaskTemplateSubtask
	if req.Subtasks != nil {
		subtasks = hwutil.Map(req.Subtasks, func(subtask *pb.CreateTaskTemplateRequest_SubTask) TaskTemplateSubtask {
			return TaskTemplateSubtask{Name: subtask.Name, TaskTemplateID: taskTemplate.ID}
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

	var taskTemplates []TaskTemplate

	if err := db.Preload("SubTasks").Where("organization_id = ?", organizationID).Where("is_public = ?", true).Find(&taskTemplates).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	var mappedTaskTemplates = hwutil.Map(taskTemplates, func(taskTemplate TaskTemplate) *pb.GetAllTaskTemplatesResponse_TaskTemplate {
		var mappedSubtasks = hwutil.Map(taskTemplate.SubTasks, func(subtask TaskTemplateSubtask) *pb.GetAllTaskTemplatesResponse_TaskTemplate_SubTask {
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
			IsPublic:    taskTemplate.Public,
			UserId:      hwutil.UUIDToStringPtr(&taskTemplate.UserID),
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

	taskTemplate := TaskTemplate{ID: id}

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

	taskTemplateSubtask := TaskTemplateSubtask{ID: id}

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

	taskTemplate := TaskTemplate{ID: id}
	updates := pbhelpers.UpdatesMapForUpdateTaskTemplateRequest(req)

	if err := db.Model(&taskTemplate).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateTaskTemplateResponse{}, nil
}

func (ServiceServer) UpdateTaskTemplateSubtask(ctx context.Context, req *pb.UpdateTaskTemplateSubTaskRequest) (*pb.UpdateTaskTemplateSubTaskResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.SubtaskId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	taskTemplate := TaskTemplateSubtask{ID: id}
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

	taskTemplateSubtask := TaskTemplateSubtask{
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

func (ServiceServer) GetAllTaskTemplatesByUser(ctx context.Context, req *pb.GetAllTaskTemplatesByUserRequest) (*pb.GetAllTaskTemplatesByUserResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	userId, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	var taskTemplates []TaskTemplate

	if err := db.Preload("SubTasks").Where("user_id = ?", userId).Find(&taskTemplates).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	var mappedTaskTemplates = hwutil.Map(taskTemplates, func(taskTemplate TaskTemplate) *pb.GetAllTaskTemplatesByUserResponse_TaskTemplate {
		var mappedSubtasks = hwutil.Map(taskTemplate.SubTasks, func(subtask TaskTemplateSubtask) *pb.GetAllTaskTemplatesByUserResponse_TaskTemplate_SubTask {
			return &pb.GetAllTaskTemplatesByUserResponse_TaskTemplate_SubTask{
				Id:             subtask.ID.String(),
				TaskTemplateId: subtask.TaskTemplateID.String(),
				Name:           subtask.Name,
			}
		})
		return &pb.GetAllTaskTemplatesByUserResponse_TaskTemplate{
			Id:          taskTemplate.ID.String(),
			Name:        taskTemplate.Name,
			Description: taskTemplate.Description,
			IsPublic:    taskTemplate.Public,
			Subtasks:    mappedSubtasks,
		}
	})

	return &pb.GetAllTaskTemplatesByUserResponse{
		Templates: mappedTaskTemplates,
	}, nil
}
