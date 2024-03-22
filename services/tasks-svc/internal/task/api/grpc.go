package api

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"
	"hwes"
	"hwutil"
	commandsV1 "tasks-svc/internal/task/commands/v1"
	v1queries "tasks-svc/internal/task/queries/v1"
)

type TaskGrpcService struct {
	pb.UnimplementedTaskServiceServer
	as hwes.AggregateStore
}

func NewTaskGrpcService(aggregateStore hwes.AggregateStore) *TaskGrpcService {
	return &TaskGrpcService{as: aggregateStore}
}

func (s *TaskGrpcService) CreateTask(ctx context.Context, req *pb.CreateTaskRequest) (*pb.CreateTaskResponse, error) {
	taskID := uuid.New()

	patientID, err := uuid.Parse(req.GetPatientId())
	if err != nil {
		return nil, err
	}

	if err := commandsV1.NewCreateTaskCommandHandler(s.as)(ctx, taskID, req.GetName(), req.Description, patientID, req.Public, req.InitialStatus, req.DueAt); err != nil {
		return nil, err
	}

	return &pb.CreateTaskResponse{
		Id: taskID.String(),
	}, nil
}

func (s *TaskGrpcService) UpdateTask(ctx context.Context, req *pb.UpdateTaskRequest) (*pb.UpdateTaskResponse, error) {
	taskID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	if err := commandsV1.NewUpdateTaskCommandHandler(s.as)(ctx, taskID, req.Name, req.Description); err != nil {
		return nil, err
	}

	return &pb.UpdateTaskResponse{}, nil
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

	if err := commandsV1.NewAssignTaskCommandHandler(s.as)(ctx, taskID, userID); err != nil {
		return nil, err
	}

	return &pb.AssignTaskResponse{}, nil
}

func (s *TaskGrpcService) UnassignTask(ctx context.Context, req *pb.UnassignTaskRequest) (*pb.UnassignTaskResponse, error) {
	taskID, err := uuid.Parse(req.TaskId)
	if err != nil {
		return nil, err
	}

	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, err
	}

	if err := commandsV1.NewUnassignTaskCommandHandler(s.as)(ctx, taskID, userID); err != nil {
		return nil, err
	}

	return &pb.UnassignTaskResponse{}, nil
}

func (s *TaskGrpcService) GetTask(ctx context.Context, req *pb.GetTaskRequest) (*pb.GetTaskResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	task, err := v1queries.NewGetTaskByIDQueryHandler(s.as)(ctx, id)
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
		Id:          task.ID.String(),
		Name:        task.Name,
		Description: task.Description,
		AssignedUsers: hwutil.Map(task.AssignedUsers, func(userID uuid.UUID) string {
			return userID.String()
		}),
		Subtasks:  subtasksRes,
		Status:    task.Status,
		CreatedAt: timestamppb.New(task.CreatedAt),
	}, nil
}

func (s *TaskGrpcService) CreateSubtask(ctx context.Context, req *pb.CreateSubtaskRequest) (*pb.CreateSubtaskResponse, error) {
	taskID, err := uuid.Parse(req.GetTaskId())
	if err != nil {
		return nil, err
	}

	subtaskID := uuid.New()

	if err := commandsV1.NewCreateSubtaskCommandHandler(s.as)(ctx, taskID, subtaskID, req.GetSubtask().GetName()); err != nil {
		return nil, err
	}

	return &pb.CreateSubtaskResponse{
		SubtaskId: subtaskID.String(),
	}, nil
}

func (s *TaskGrpcService) UpdateSubtask(ctx context.Context, req *pb.UpdateSubtaskRequest) (*pb.UpdateSubtaskResponse, error) {
	taskID, err := uuid.Parse(req.GetTaskId())
	if err != nil {
		return nil, err
	}

	subtaskID, err := uuid.Parse(req.GetSubtaskId())
	if err != nil {
		return nil, err
	}

	if err := commandsV1.NewUpdateSubtaskCommandHandler(s.as)(ctx, taskID, subtaskID, req.Subtask.Name); err != nil {
		return nil, err
	}

	return &pb.UpdateSubtaskResponse{}, nil
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

	if err := commandsV1.NewCompleteSubtaskCommandHandler(s.as)(ctx, taskID, subtaskID); err != nil {
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

	if err := commandsV1.NewUncompleteSubtaskCommandHandler(s.as)(ctx, taskID, subtaskID); err != nil {
		return nil, err
	}

	return &pb.UncompleteSubtaskResponse{}, nil
}

func (s *TaskGrpcService) DeleteSubtask(ctx context.Context, req *pb.DeleteSubtaskRequest) (*pb.DeleteSubtaskResponse, error) {
	taskID, err := uuid.Parse(req.GetTaskId())
	if err != nil {
		return nil, err
	}

	subtaskID, err := uuid.Parse(req.GetSubtaskId())
	if err != nil {
		return nil, err
	}

	if err := commandsV1.NewDeleteSubtaskCommandHandler(s.as)(ctx, taskID, subtaskID); err != nil {
		return nil, err
	}

	return &pb.DeleteSubtaskResponse{}, nil
}
