package api

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"
	"hwes"
	"hwutil"
	"tasks-svc/internal/task/handlers"
)

type TaskGrpcService struct {
	pb.UnimplementedTaskServiceServer
	as       hwes.AggregateStore
	handlers *handlers.Handlers
}

func NewTaskGrpcService(aggregateStore hwes.AggregateStore, handlers *handlers.Handlers) *TaskGrpcService {
	return &TaskGrpcService{as: aggregateStore, handlers: handlers}
}

func (s *TaskGrpcService) CreateTask(ctx context.Context, req *pb.CreateTaskRequest) (*pb.CreateTaskResponse, error) {
	taskID := uuid.New()

	patientID, err := uuid.Parse(req.GetPatientId())
	if err != nil {
		return nil, err
	}

	if err := s.handlers.Commands.V1.CreateTask(ctx, taskID, req.GetName(), req.Description, patientID, req.Public, req.InitialStatus, req.DueAt); err != nil {
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

	if err := s.handlers.Commands.V1.UpdateTask(ctx, taskID, req.Name, req.Description); err != nil {
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

	if err := s.handlers.Commands.V1.AssignTask(ctx, taskID, userID); err != nil {
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

	if err := s.handlers.Commands.V1.UnnasignTask(ctx, taskID, userID); err != nil {
		return nil, err
	}

	return &pb.UnassignTaskResponse{}, nil
}

func (s *TaskGrpcService) GetTask(ctx context.Context, req *pb.GetTaskRequest) (*pb.GetTaskResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	task, err := s.handlers.Queries.V1.GetTaskByID(ctx, id)
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

func (s *TaskGrpcService) GetTasksByPatient(ctx context.Context, req *pb.GetTasksByPatientRequest) (*pb.GetTasksByPatientResponse, error) {
	patientID, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, err
	}

	tasksWithSubtasks, err := s.handlers.Queries.V1.GetTasksByPatient(ctx, patientID)
	if err != nil {
		return nil, err
	}

	taskResponse := make([]*pb.GetTasksByPatientResponse_Task, len(tasksWithSubtasks))
	for ix, item := range tasksWithSubtasks {
		taskResponse[ix] = &pb.GetTasksByPatientResponse_Task{
			Id:             item.ID.String(),
			Name:           item.Name,
			Description:    item.Description,
			Status:         item.Status,
			PatientId:      item.PatientID.String(),
			Public:         item.Public,
			CreatedBy:      item.CreatedBy.String(),
			CreatedAt:      timestamppb.New(item.CreatedAt),
			DueAt:          timestamppb.New(item.DueAt),
			Subtasks:       make([]*pb.GetTasksByPatientResponse_Task_SubTask, len(item.Subtasks)),
			AssignedUserId: hwutil.PtrTo(item.AssignedUsers[0].String()), // TODO: #760
		}

		subtaskIdx := 0
		for _, subtask := range item.Subtasks {
			taskResponse[ix].Subtasks[subtaskIdx] = &pb.GetTasksByPatientResponse_Task_SubTask{
				Id:        subtask.ID.String(),
				Name:      subtask.Name,
				Done:      subtask.Done,
				CreatedBy: subtask.CreatedBy.String(),
			}
			subtaskIdx++
		}
	}

	return &pb.GetTasksByPatientResponse{
		Tasks: taskResponse,
	}, nil
}

func (s *TaskGrpcService) GetTasksByPatientSortedByStatus(ctx context.Context, req *pb.GetTasksByPatientSortedByStatusRequest) (*pb.GetTasksByPatientSortedByStatusResponse, error) {
	patientID, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, err
	}

	tasksWithSubtasks, err := s.handlers.Queries.V1.GetTasksByPatient(ctx, patientID)
	if err != nil {
		return nil, err
	}

	todo := make(map[int]bool)
	inprogress := make(map[int]bool)
	done := make(map[int]bool)

	// sort
	for ix, task := range tasksWithSubtasks {
		if task.Status == pb.TaskStatus_TASK_STATUS_TODO {
			todo[ix] = true
		} else if task.Status == pb.TaskStatus_TASK_STATUS_IN_PROGRESS {
			inprogress[ix] = true
		} else if task.Status == pb.TaskStatus_TASK_STATUS_DONE {
			done[ix] = true
		}
	}

	collectTasks := func(set map[int]bool) []*pb.GetTasksByPatientSortedByStatusResponse_Task {
		res := make([]*pb.GetTasksByPatientSortedByStatusResponse_Task, 0, len(set))

		for key, value := range set {
			task := tasksWithSubtasks[key]

			if value {
				taskWithSub := &pb.GetTasksByPatientSortedByStatusResponse_Task{
					Id:             task.ID.String(),
					Name:           task.Name,
					Description:    task.Description,
					PatientId:      task.PatientID.String(),
					Public:         task.Public,
					CreatedBy:      task.CreatedBy.String(),
					CreatedAt:      timestamppb.New(task.CreatedAt),
					DueAt:          timestamppb.New(task.DueAt),
					Subtasks:       make([]*pb.GetTasksByPatientSortedByStatusResponse_Task_SubTask, len(task.Subtasks)),
					AssignedUserId: hwutil.PtrTo(task.AssignedUsers[0].String()), // TODO: #760
				}

				subtaskIdx := 0
				for _, subtask := range task.Subtasks {
					taskWithSub.Subtasks[subtaskIdx] = &pb.GetTasksByPatientSortedByStatusResponse_Task_SubTask{
						Id:        subtask.ID.String(),
						Name:      subtask.Name,
						Done:      subtask.Done,
						CreatedBy: subtask.CreatedBy.String(),
					}
					subtaskIdx++
				}

				res = append(res, taskWithSub)
			}
		}

		return res
	}

	return &pb.GetTasksByPatientSortedByStatusResponse{
		Todo:       collectTasks(todo),
		InProgress: collectTasks(inprogress),
		Done:       collectTasks(done),
	}, nil
}

func (s *TaskGrpcService) CreateSubtask(ctx context.Context, req *pb.CreateSubtaskRequest) (*pb.CreateSubtaskResponse, error) {
	taskID, err := uuid.Parse(req.GetTaskId())
	if err != nil {
		return nil, err
	}

	subtaskID := uuid.New()

	if err := s.handlers.Commands.V1.CreateSubtask(ctx, taskID, subtaskID, req.GetSubtask().GetName()); err != nil {
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

	if err := s.handlers.Commands.V1.UpdateSubtask(ctx, taskID, subtaskID, req.Subtask.Name); err != nil {
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

	if err := s.handlers.Commands.V1.CompleteSubtask(ctx, taskID, subtaskID); err != nil {
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

	if err := s.handlers.Commands.V1.UncompleteSubtask(ctx, taskID, subtaskID); err != nil {
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

	if err := s.handlers.Commands.V1.DeleteSubtask(ctx, taskID, subtaskID); err != nil {
		return nil, err
	}

	return &pb.DeleteSubtaskResponse{}, nil
}
