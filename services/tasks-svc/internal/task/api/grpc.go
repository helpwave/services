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

	var subtasksRes []*pb.GetTaskResponse_Subtask
	for _, subtask := range task.Subtasks {
		subtasksRes = append(subtasksRes, &pb.GetTaskResponse_Subtask{
			Id:   subtask.ID.String(),
			Name: subtask.Name,
			Done: subtask.Done,
		})
	}

	return &pb.GetTaskResponse{
		Id:   task.ID.String(),
		Name: task.Name,
		AssignedUsers: hwutil.Map(task.AssignedUsers, func(userID uuid.UUID) string {
			return userID.String()
		}),
		Subtasks: subtasksRes,
	}, nil
}

func (s *TaskGrpcService) CreateSubtask(ctx context.Context, req *pb.CreateSubtaskRequest) (*pb.CreateSubtaskResponse, error) {
	taskID, err := uuid.Parse(req.GetTaskId())
	if err != nil {
		return nil, err
	}

	subtaskID := uuid.New()

	command := v1commands.NewCreateSubtaskCommand(taskID, subtaskID, req.GetSubtask().GetName())
	if err := s.service.Commands.CreateSubtask.Handle(ctx, command); err != nil {
		return nil, err
	}

	return &pb.CreateSubtaskResponse{
		SubtaskId: subtaskID.String(),
	}, nil
}

func (s *TaskGrpcService) CompleteSubtask(ctx context.Context, req *pb.CompleteSubtaskRequest) (*pb.CompleteSubtaskResponse, error) {
	taskID, err := uuid.Parse(req.GetTaskId())
	if err != nil {
		return nil, err
	}

	subtaskID, err := uuid.Parse(req.GetSubtaskId())
	if err != nil {
		return nil, err
	}

	command := v1commands.NewCompleteSubtaskCommand(taskID, subtaskID)
	if err := s.service.Commands.CompleteSubtask.Handle(ctx, command); err != nil {
		return nil, err
	}

	return &pb.CompleteSubtaskResponse{}, nil
}

func (s *TaskGrpcService) UncompleteSubtask(ctx context.Context, req *pb.UncompleteSubtaskRequest) (*pb.UncompleteSubtaskResponse, error) {
	taskID, err := uuid.Parse(req.GetTaskId())
	if err != nil {
		return nil, err
	}

	subtaskID, err := uuid.Parse(req.GetSubtaskId())
	if err != nil {
		return nil, err
	}

	command := v1commands.NewUncompleteSubtaskCommand(taskID, subtaskID)
	if err := s.service.Commands.UncompleteSubtask.Handle(ctx, command); err != nil {
		return nil, err
	}

	return &pb.UncompleteSubtaskResponse{}, nil
}
