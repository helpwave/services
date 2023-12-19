package api

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"hwutil"
	v1commands "tasks-svc/internal/task/commands/v1"
	v1queries "tasks-svc/internal/task/queries/v1"
	"tasks-svc/internal/task/service"
)

type TaskGrpcService struct {
	pb.UnimplementedTaskServiceServer
	service *service.TaskService
}

func NewTaskGrpcService(taskService *service.TaskService) *TaskGrpcService {
	return &TaskGrpcService{service: taskService}
}

func (s *TaskGrpcService) CreateTask(ctx context.Context, req *pb.CreateTaskRequest) (*pb.CreateTaskResponse, error) {
	id := uuid.New()

	command := v1commands.NewCreateTaskCommand(id, req.GetName())
	if err := s.service.Commands.CreateTask.Handle(ctx, command); err != nil {
		return nil, err
	}

	return &pb.CreateTaskResponse{
		Id: id.String(),
	}, nil
}

func (s *TaskGrpcService) AssignTask(ctx context.Context, req *pb.AssignTaskRequest) (*pb.AssignTaskResponse, error) {
	taskID, err := uuid.Parse(req.TaskId)
	if err != nil {
		return nil, err
	}

	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, err
	}

	command := v1commands.NewAssignTaskCommand(taskID, userID)
	if err := s.service.Commands.AssignTask.Handle(ctx, command); err != nil {
		return nil, err
	}

	return &pb.AssignTaskResponse{}, nil
}

func (s *TaskGrpcService) GetTask(ctx context.Context, req *pb.GetTaskRequest) (*pb.GetTaskResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	query := v1queries.NewGetTaskByIDQuery(id)
	task, err := s.service.Queries.GetTaskByID.Handle(ctx, query)
	if err != nil {
		return nil, err
	}

	return &pb.GetTaskResponse{
		Id:   task.ID.String(),
		Name: task.Name,
		AssignedUsers: hwutil.Map(task.AssignedUsers, func(userID uuid.UUID) string {
			return userID.String()
		}),
	}, nil
}
