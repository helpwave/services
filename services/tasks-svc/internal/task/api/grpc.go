package api

import (
	"common"
	"context"
	"fmt"
	commonpb "gen/libs/common/v1"
	pb "gen/services/tasks_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"hwes"
	"hwgrpc"
	"hwutil"
	"tasks-svc/internal/task/handlers"
	"tasks-svc/internal/task/models"
	"time"
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

	assignedUserID, err := hwutil.ParseNullUUID(req.AssignedUserId)
	if err != nil {
		return nil, err
	}

	subtasks := hwutil.OrEmptySlice(req.Subtasks)

	consistency, err := s.handlers.Commands.V1.CreateTask(
		ctx,
		taskID,
		req.GetName(),
		req.Description,
		patientID,
		req.Public,
		req.InitialStatus,
		req.DueAt,
		assignedUserID,
		subtasks,
	)
	if err != nil {
		return nil, err
	}

	return &pb.CreateTaskResponse{
		Id:          taskID.String(),
		Consistency: consistency.String(),
	}, nil
}

func timeAlreadyUpdated(was, is *time.Time) bool {
	if was != nil && is != nil {
		return !was.Round(time.Second).Equal(is.Round(time.Second))
	}

	return true
}

func (s *TaskGrpcService) UpdateTask(ctx context.Context, req *pb.UpdateTaskRequest) (*pb.UpdateTaskResponse, error) {
	log := zlog.Ctx(ctx)

	taskID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	expConsistency, ok := common.ParseConsistency(req.Consistency)
	if !ok {
		return nil, common.UnparsableConsistencyError(ctx, "consistency")
	}

	var consistency common.ConsistencyToken

	for i := 0; true; i++ {
		if i > 10 {
			log.Warn().Msg("UpdatePatient: conflict circuit breaker triggered")
			return nil, fmt.Errorf("failed conflict resolution")
		}

		c, conflict, err := s.handlers.Commands.V1.UpdateTask(ctx,
			taskID, req.Name, req.Description, req.Status, req.Public, req.DueAt, expConsistency)
		if err != nil {
			return nil, err
		}
		consistency = c

		if conflict == nil {
			break
		}
		conflicts := make(map[string]*commonpb.AttributeConflict)

		// TODO: find a generic approach
		nameUpdateRequested := req.Name != nil && *req.Name != conflict.Is.Name
		nameAlreadyUpdated := conflict.Was.Name != conflict.Is.Name
		if nameUpdateRequested && nameAlreadyUpdated {
			conflicts["name"], err = hwgrpc.AttributeConflict(
				wrapperspb.String(conflict.Is.Name),
				wrapperspb.String(*req.Name),
			)
			if err != nil {
				return nil, err
			}
		}

		descrUpdateRequested := req.Description != nil && *req.Description != conflict.Is.Description
		descrAlreadyUpdated := conflict.Was.Description != conflict.Is.Description
		if descrUpdateRequested && descrAlreadyUpdated {
			conflicts["description"], err = hwgrpc.AttributeConflict(
				wrapperspb.String(conflict.Is.Description),
				wrapperspb.String(*req.Description),
			)
			if err != nil {
				return nil, fmt.Errorf("could not marshall description conflict: %w", err)
			}
		}

		dueUpdateRequested := req.DueAt != nil &&
			(conflict.Is.DueAt == nil || !req.DueAt.AsTime().Round(time.Second).Equal(conflict.Is.DueAt.Round(time.Second)))
		dueAlreadyUpdated := timeAlreadyUpdated(conflict.Was.DueAt, conflict.Is.DueAt)
		if dueUpdateRequested && dueAlreadyUpdated {
			var is proto.Message = nil
			if conflict.Is.DueAt != nil {
				is = timestamppb.New(*conflict.Is.DueAt)
			}
			conflicts["due_at"], err = hwgrpc.AttributeConflict(
				is,
				req.DueAt,
			)
			if err != nil {
				return nil, fmt.Errorf("could not marshall due_at conflict: %w", err)
			}
		}

		statusUpdateRequested := req.Status != nil && *req.Status != conflict.Is.Status
		statusAlreadyUpdated := conflict.Was.Status != conflict.Is.Status
		if statusUpdateRequested && statusAlreadyUpdated {
			conflicts["status"], err = hwgrpc.AttributeConflict(
				wrapperspb.Int32(int32(conflict.Is.Status)),
				wrapperspb.Int32(int32(*req.Status)),
			)
			if err != nil {
				return nil, fmt.Errorf("could not marshall status conflict: %w", err)
			}
		}

		// bool public can never cause a problem
		// the user expects public = B, and sets it to \neg B
		// so either that is the case still, or the update will do nothing anyway

		if len(conflicts) != 0 {
			return &pb.UpdateTaskResponse{
				Conflict:    &commonpb.Conflict{ConflictingAttributes: conflicts},
				Consistency: c.String(),
			}, nil
		}

		// no conflict? retry with new consistency
		expConsistency = &c
	}

	return &pb.UpdateTaskResponse{
		Consistency: consistency.String(),
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

	expConsistency, ok := common.ParseConsistency(req.Consistency)
	if !ok {
		return nil, common.UnparsableConsistencyError(ctx, "consistency")
	}

	var consistency common.ConsistencyToken

	for i := 0; true; i++ {
		if i > 10 {
			zlog.Ctx(ctx).Warn().Msg("UpdatePatient: conflict circuit breaker triggered")
			return nil, fmt.Errorf("failed conflict resolution")
		}

		c, conflict, err := s.handlers.Commands.V1.AssignTask(ctx, taskID, userID, expConsistency)
		if err != nil {
			return nil, err
		}
		consistency = c
		if conflict == nil {
			break
		}
		conflicts := make(map[string]*commonpb.AttributeConflict)

		// TODO: find a generic approach
		userUpdateRequested := req.UserId != conflict.Is.AssignedUser.UUID.String()
		userAlreadyUpdated := conflict.Was.AssignedUser != conflict.Is.AssignedUser
		if userUpdateRequested && userAlreadyUpdated {
			var is proto.Message = nil
			if conflict.Is.AssignedUser.Valid {
				is = wrapperspb.String(conflict.Is.AssignedUser.UUID.String())
			}
			conflicts["user_id"], err = hwgrpc.AttributeConflict(
				is,
				wrapperspb.String(req.UserId),
			)
			if err != nil {
				return nil, err
			}
		}

		if len(conflicts) != 0 {
			return &pb.AssignTaskResponse{
				Conflict:    &commonpb.Conflict{ConflictingAttributes: conflicts},
				Consistency: c.String(),
			}, nil
		}

		// no conflict? retry with new consistency
		expConsistency = &c
	}

	return &pb.AssignTaskResponse{
		Consistency: consistency.String(),
	}, nil
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

	consistency, err := s.handlers.Commands.V1.UnnasignTask(ctx, taskID, userID)
	if err != nil {
		return nil, err
	}

	return &pb.UnassignTaskResponse{
		Consistency: consistency.String(),
	}, nil
}

func (s *TaskGrpcService) GetTask(ctx context.Context, req *pb.GetTaskRequest) (*pb.GetTaskResponse, error) {
	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	task, err := s.handlers.Queries.V1.GetTaskWithPatientByID(ctx, id)
	if err != nil {
		return nil, err
	}

	var subtasksRes []*pb.GetTaskResponse_SubTask
	for _, subtask := range task.Subtasks {
		subtasksRes = append(subtasksRes, &pb.GetTaskResponse_SubTask{
			Id:        subtask.ID.String(),
			Name:      subtask.Name,
			Done:      subtask.Done,
			CreatedBy: subtask.CreatedBy.String(),
		})
	}

	res := &pb.GetTaskResponse{
		Id:             task.ID.String(),
		Name:           task.Name,
		Description:    task.Description,
		AssignedUserId: hwutil.NullUUIDToStringPtr(task.AssignedUser),
		Subtasks:       subtasksRes,
		Status:         task.Status,
		CreatedAt:      timestamppb.New(task.CreatedAt),
		Public:         task.Public,
		DueAt:          nil, // may be set below
		CreatedBy:      task.CreatedBy.String(),
		Patient: &pb.GetTaskResponse_Patient{
			Id:                      task.Patient.ID.String(),
			HumanReadableIdentifier: task.Patient.HumanReadableIdentifier,
		},
		Consistency: task.Consistency,
	}

	if task.DueAt != nil {
		res.DueAt = timestamppb.New(*task.Task.DueAt)
	}

	return res, nil
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
			DueAt:          nil, // may be set below
			Subtasks:       make([]*pb.GetTasksByPatientResponse_Task_SubTask, len(item.Subtasks)),
			AssignedUserId: hwutil.NullUUIDToStringPtr(item.AssignedUser), // TODO: #760
			Consistency:    item.Consistency,
		}

		if item.DueAt != nil {
			taskResponse[ix].DueAt = timestamppb.New(*item.DueAt)
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
					DueAt:          nil, // may be set below
					Subtasks:       make([]*pb.GetTasksByPatientSortedByStatusResponse_Task_SubTask, len(task.Subtasks)),
					AssignedUserId: hwutil.NullUUIDToStringPtr(task.AssignedUser), // TODO: #760
					Consistency:    task.Consistency,
				}

				if task.DueAt != nil {
					taskWithSub.DueAt = timestamppb.New(*task.DueAt)
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

func (s *TaskGrpcService) GetAssignedTasks(ctx context.Context, _ *pb.GetAssignedTasksRequest) (*pb.GetAssignedTasksResponse, error) {
	asigneeID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	tasksWithPatients, err := s.handlers.Queries.V1.GetTasksWithPatientsByAssignee(ctx, asigneeID)
	if err != nil {
		return nil, err
	}

	taskResponse := make([]*pb.GetAssignedTasksResponse_Task, len(tasksWithPatients))
	for ix, item := range tasksWithPatients {
		taskResponse[ix] = &pb.GetAssignedTasksResponse_Task{
			Id:             item.ID.String(),
			Name:           item.Name,
			Description:    item.Description,
			Status:         item.Status,
			Public:         item.Public,
			CreatedBy:      item.CreatedBy.String(),
			CreatedAt:      timestamppb.New(item.CreatedAt),
			DueAt:          nil, // may be set below
			Subtasks:       make([]*pb.GetAssignedTasksResponse_Task_SubTask, len(item.Subtasks)),
			AssignedUserId: item.AssignedUser.UUID.String(), // Safe, assignedUserId has to be set. TODO: #760
			Patient: &pb.GetAssignedTasksResponse_Task_Patient{
				Id:                      item.PatientID.String(),
				HumanReadableIdentifier: item.Patient.HumanReadableIdentifier,
				Consistency:             item.Consistency,
			},
			Consistency: item.Consistency,
		}

		if item.DueAt != nil {
			taskResponse[ix].DueAt = timestamppb.New(*item.DueAt)
		}

		subtaskIdx := 0
		for _, subtask := range item.Subtasks {
			taskResponse[ix].Subtasks[subtaskIdx] = &pb.GetAssignedTasksResponse_Task_SubTask{
				Id:        subtask.ID.String(),
				Name:      subtask.Name,
				Done:      subtask.Done,
				CreatedBy: subtask.CreatedBy.String(),
			}
			subtaskIdx++
		}
	}

	return &pb.GetAssignedTasksResponse{
		Tasks: taskResponse,
	}, nil
}

func (s *TaskGrpcService) CreateSubtask(ctx context.Context, req *pb.CreateSubtaskRequest) (*pb.CreateSubtaskResponse, error) {
	taskID, err := uuid.Parse(req.GetTaskId())
	if err != nil {
		return nil, err
	}

	subtaskID := uuid.New()

	consistency, err := s.handlers.Commands.V1.CreateSubtask(ctx, taskID, subtaskID, req.GetSubtask().GetName(), req.GetSubtask().GetDone())
	if err != nil {
		return nil, err
	}

	return &pb.CreateSubtaskResponse{
		SubtaskId:       subtaskID.String(),
		TaskConsistency: consistency.String(),
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

	expConsistency, ok := common.ParseConsistency(req.TaskConsistency)
	if !ok {
		return nil, common.UnparsableConsistencyError(ctx, "task_consistency")
	}

	var consistency common.ConsistencyToken

	for i := 0; true; i++ {
		if i > 10 {
			zlog.Ctx(ctx).Warn().Msg("UpdateSubtask: conflict circuit breaker triggered")
			return nil, fmt.Errorf("failed conflict resolution")
		}

		c, conflict, err := s.handlers.Commands.V1.UpdateSubtask(ctx, taskID, subtaskID, req.Subtask.Name, req.Subtask.Done, expConsistency)
		if err != nil {
			return nil, err
		}
		consistency = c

		if conflict == nil {
			break
		}

		conflicts := make(map[string]*commonpb.AttributeConflict)

		var was models.Subtask
		if w, ok := conflict.Was.Subtasks[subtaskID]; ok {
			was = w
		} else {
			return nil, fmt.Errorf("subtask did not exist at expConsistency")
		}

		is := conflict.Is.Subtasks[subtaskID] // handler would have failed if non-existent

		// TODO: find a generic approach
		nameUpdateRequested := req.Subtask.Name != nil && *req.Subtask.Name != is.Name
		nameAlreadyUpdated := was.Name != is.Name
		if nameUpdateRequested && nameAlreadyUpdated {
			conflicts["name"], err = hwgrpc.AttributeConflict(
				wrapperspb.String(is.Name),
				wrapperspb.String(*req.Subtask.Name),
			)
			if err != nil {
				return nil, err
			}
		}

		if len(conflicts) != 0 {
			return &pb.UpdateSubtaskResponse{
				Conflict:        &commonpb.Conflict{ConflictingAttributes: conflicts},
				TaskConsistency: c.String(),
			}, nil
		}

		// bool done can never cause a problem
		// the user expects done = B, and sets it to \neg B
		// so either that is the case still, or the update will do nothing anyway

		// no conflict? retry with new consistency
		expConsistency = &c
	}

	return &pb.UpdateSubtaskResponse{
		TaskConsistency: consistency.String(),
	}, nil
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

	_, err = s.handlers.Commands.V1.DeleteSubtask(ctx, taskID, subtaskID)
	if err != nil {
		return nil, err
	}

	return &pb.DeleteSubtaskResponse{}, nil
}

func (s *TaskGrpcService) RemoveTaskDueDate(ctx context.Context, req *pb.RemoveTaskDueDateRequest) (*pb.RemoveTaskDueDateResponse, error) {
	taskID, err := uuid.Parse(req.GetTaskId())
	if err != nil {
		return nil, err
	}

	consistency, err := s.handlers.Commands.V1.RemoveTaskDueAt(ctx, taskID)
	if err != nil {
		return nil, err
	}

	return &pb.RemoveTaskDueDateResponse{
		Consistency: consistency.String(),
	}, nil
}

func (s *TaskGrpcService) DeleteTask(ctx context.Context, req *pb.DeleteTaskRequest) (*pb.DeleteTaskResponse, error) {
	taskID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, err
	}

	if _, err := s.handlers.Commands.V1.DeleteTask(ctx, taskID); err != nil {
		return nil, err
	}

	return &pb.DeleteTaskResponse{}, nil
}
