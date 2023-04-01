package task

import (
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwgorm"
	intPatient "task-svc/internal/patient"
)

type Base struct {
	Name        string        `gorm:"column:name"`
	Description string        `gorm:"column:description"`
	Status      pb.TaskStatus `gorm:"column:status"`
}

type Task struct {
	Base
	ID             uuid.UUID     `gorm:"column:id"`
	AssignedUserId uuid.NullUUID `gorm:"column:assigned_user_id;default:NULL"`
	PatientId      uuid.UUID     `gorm:"column:patient_id"`
}

type ServiceServer struct {
	pb.UnimplementedTaskServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (s ServiceServer) CreateTask(ctx context.Context, req *pb.CreateTaskRequest) (*pb.CreateTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	patientId, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Check if patient exists
	if err := db.First(&intPatient.Patient{ID: patientId}).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "patientId not found")
		}
	}

	task := Task{
		Base: Base{
			Name:        req.Name,
			Description: req.Description,
		},
		PatientId: patientId,
	}

	if err := db.Create(&task).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", task.ID.String()).
		Str("patientId", patientId.String()).
		Msg("task created for patient")

	return &pb.CreateTaskResponse{
		Id: task.ID.String(),
	}, nil
}

func (ServiceServer) GetTask(ctx context.Context, req *pb.GetTaskRequest) (*pb.GetTaskResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{ID: id}
	if err := db.First(&task).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	// TODO: task.AssignedUserId.UUID.String() should handle the translation to "", seems not to work.
	assignedUserId := task.AssignedUserId.UUID.String()
	if !task.AssignedUserId.Valid {
		assignedUserId = ""
	}

	return &pb.GetTaskResponse{
		Id:             task.ID.String(),
		Name:           task.Name,
		Description:    task.Description,
		Status:         task.Status,
		AssignedUserId: assignedUserId,
		PatientId:      task.PatientId.String(),
	}, nil
}

func (ServiceServer) UpdateTask(ctx context.Context, req *pb.UpdateTaskRequest) (*pb.UpdateTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{ID: id}
	updates := req.UpdatesMap()

	if err := db.Model(&task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateTaskResponse{}, nil
}

func (ServiceServer) TaskToInProgress(ctx context.Context, req *pb.TaskToInProgressRequest) (*pb.TaskToInProgressResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{ID: id}
	updates := Task{Base: Base{Status: pb.TaskStatus_IN_PROGRESS}}

	if err := db.Model(&task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("task to in-progress")

	return &pb.TaskToInProgressResponse{}, nil
}

func (ServiceServer) TaskToDone(ctx context.Context, req *pb.TaskToDoneRequest) (*pb.TaskToDoneResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{ID: id}
	updates := Task{Base: Base{Status: pb.TaskStatus_DONE}}

	if err := db.Model(&task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("task to done")

	return &pb.TaskToDoneResponse{}, nil
}

func (ServiceServer) AssignTaskToUser(ctx context.Context, req *pb.AssignTaskToUserRequest) (*pb.AssignTaskToUserResponse, error) {
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

	task := Task{ID: id}
	updates := Task{AssignedUserId: uuid.NullUUID{UUID: userId, Valid: true}}

	if err := db.Model(task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Str("userId", userId.String()).
		Msg("user assigned")

	return &pb.AssignTaskToUserResponse{}, nil
}

func (ServiceServer) UnassignTaskFromUser(ctx context.Context, req *pb.UnassignTaskFromUserRequest) (*pb.UnassignTaskFromUserResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := Task{ID: id}
	updates := map[string]interface{}{"assigned_user_id": nil}

	if err := db.Model(task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("user unassigned")

	return &pb.UnassignTaskFromUserResponse{}, nil
}
