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
)

type Base struct {
	Name        string `gorm:"column:name"`
	Description string `gorm:"column:description"`
}

type TaskTemplate struct {
	Base
	ID       uuid.UUID             `gorm:"column:id"`
	Public   bool                  `gorm:"column:is_public"`
	UserID   uuid.UUID             `gorm:"column:user_id"`
	WardID   *uuid.UUID            `gorm:"column:ward_id;default:NULL"`
	SubTasks []TaskTemplateSubtask `gorm:"foreignKey:TaskTemplateID"`
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

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, err
	}

	wardID, err := hwutil.StringToUUIDPtr(req.WardId)
	if err != nil {
		return nil, err
	}

	taskTemplate := TaskTemplate{
		Base:   Base{Name: req.Name, Description: req.Description},
		Public: req.Public,
		UserID: userID,
		WardID: wardID,
	}

	// This also implicitly checks the wardID because of the foreignKey constraint in the sql
	if err := db.Create(&taskTemplate).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
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
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskTemplateId", taskTemplate.ID.String()).
		Msg("taskTemplate created")

	return &pb.CreateTaskTemplateResponse{
		Id: taskTemplate.ID.String(),
	}, nil
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
		log.Warn().Err(err).Msg("database error")
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
