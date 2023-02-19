package task

import (
	"context"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	"task-svc/api"
	intPatient "task-svc/internal/patient"
)

type Base struct {
	Name        string `gorm:"column:name"`
	Description string `gorm:"column:description"`
	Status      uint32 `gorm:"column:status"`
}

type Task struct {
	Base
	Id             uuid.UUID     `gorm:"column:id"`
	AssignedUserId uuid.NullUUID `gorm:"column:assigned_user_id;default:NULL"`
	PatientId      uuid.UUID     `gorm:"column:patient_id"`
}

type ServiceServer struct {
	api.UnimplementedTaskServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (s ServiceServer) CreateTask(ctx context.Context, req *api.CreateTaskRequest) (*api.CreateTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	patientId, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Check if patient exists
	if err := db.First(intPatient.Patient{Id: patientId}).Error; err != nil {
		return nil, status.Error(codes.NotFound, err.Error())
	}

	task := Task{
		Base: Base{
			Name:        req.Name,
			Description: req.Description,
		},
		PatientId: patientId,
	}

	result := db.Create(&task)
	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", task.Id.String()).
		Str("patientId", patientId.String()).
		Msg("task created for patient")

	return &api.CreateTaskResponse{
		Id: task.Id.String(),
	}, nil
}

func (ServiceServer) GetTask(ctx context.Context, req *api.GetTaskRequest) (*api.GetTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{Id: id}
	result := db.First(&task)
	if err := result.Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	assignedUserId := task.AssignedUserId.UUID.String()
	if !task.AssignedUserId.Valid {
		assignedUserId = ""
	}

	return &api.GetTaskResponse{
		Id:             task.Id.String(),
		Name:           task.Name,
		Description:    task.Description,
		Status:         api.TaskStatus(task.Status),
		AssignedUserId: assignedUserId,
		PatientId:      task.PatientId.String(),
	}, nil
}

func (ServiceServer) UpdateTask(ctx context.Context, req *api.UpdateTaskRequest) (*api.UpdateTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{Id: id}
	updates := req.UpdatesMap()

	if err := db.Model(&task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &api.UpdateTaskResponse{}, nil
}

func (ServiceServer) TaskToInProgress(ctx context.Context, req *api.TaskToInProgressRequest) (*api.TaskToInProgressResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{Id: id}
	updates := Task{Base: Base{Status: 1}}

	if err := db.Model(&task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("task to in-progress")

	return &api.TaskToInProgressResponse{}, nil
}

func (ServiceServer) TaskToDone(ctx context.Context, req *api.TaskToDoneRequest) (*api.TaskToDoneResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{Id: id}
	updates := Task{Base: Base{Status: 2}}

	if err := db.Model(&task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("task to done")

	return &api.TaskToDoneResponse{}, nil
}

func (ServiceServer) AssignTaskToUser(ctx context.Context, req *api.AssignTaskToUserRequest) (*api.AssignTaskToUserResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	userId, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// TODO: Check if user exists

	task := Task{Id: id}
	updates := Task{AssignedUserId: uuid.NullUUID{UUID: userId, Valid: true}}

	if err := db.Model(task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Str("userId", userId.String()).
		Msg("user assigned")

	return &api.AssignTaskToUserResponse{}, nil
}

func (ServiceServer) UnassignTaskFromUser(ctx context.Context, req *api.UnassignTaskFromUserRequest) (*api.UnassignTaskFromUserResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{Id: id}
	updates := map[string]interface{}{"assigned_user_id": nil}

	if err := db.Model(task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("user unassigned")

	return &api.UnassignTaskFromUserResponse{}, nil
}
