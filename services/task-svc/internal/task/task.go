package task

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"
	"hwdb"
	"hwgorm"
	"hwutil"
	"task-svc/internal/models"
	"task-svc/internal/repositories"
	"task-svc/repos/patient_repo"
	"task-svc/repos/task_repo"
)

type ServiceServer struct {
	pb.UnimplementedTaskServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (s ServiceServer) CreateTask(ctx context.Context, req *pb.CreateTaskRequest) (*pb.CreateTaskResponse, error) {
	log := zlog.Ctx(ctx)
	patientRepo := patient_repo.New(hwdb.GetDB())
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, err
	}

	patientId, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Check if patient exists
	if exists, err := patientRepo.ExistsPatientInOrganization(ctx, patient_repo.ExistsPatientInOrganizationParams{
		ID:             patientId,
		OrganizationID: organizationID,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	} else if !exists {
		return nil, status.Error(codes.InvalidArgument, "patientId not found")
	}

	description := ""
	if req.Description != nil {
		description = *req.Description
	}

	// When changing this array also adjust the error message below
	allowedInitialStatuses := []pb.TaskStatus{pb.TaskStatus_TASK_STATUS_TODO, pb.TaskStatus_TASK_STATUS_IN_PROGRESS}
	initialStatus := pb.TaskStatus_TASK_STATUS_TODO // default value
	if req.InitialStatus != nil {
		if hwutil.Contains(allowedInitialStatuses, *req.InitialStatus) {
			initialStatus = *req.InitialStatus
		} else {
			return nil, status.Error(codes.InvalidArgument, "only todo and in progress are allowed as an initial TaskStatus")
		}
	}

	taskId, err := taskRepo.CreateTask(ctx, task_repo.CreateTaskParams{
		Name:           req.Name,
		Description:    description,
		Status:         int32(initialStatus),
		PatientID:      patientId,
		Public:         req.Public,
		OrganizationID: organizationID,
		CreatedBy:      userID,
		DueAt:          hwdb.TimeToTimestamp(req.DueAt.AsTime()),
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskID", taskId.String()).
		Str("patientID", patientId.String()).
		Msg("taskId created for patient")

	return &pb.CreateTaskResponse{
		Id: taskId.String(),
	}, nil
}

func (ServiceServer) GetTask(ctx context.Context, req *pb.GetTaskRequest) (*pb.GetTaskResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := taskRepo.GetTaskWithSubTasksAndPatientName(ctx, id)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}
	if len(rows) == 0 {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}
	task := rows[0].Task
	patientName := rows[0].PatientName

	// TODO: replace with optional response field
	assignedUserId := task.AssignedUserID.UUID.String()
	if !task.AssignedUserID.Valid {
		assignedUserId = ""
	}

	subtasks := hwutil.FlatMap(rows, func(row task_repo.GetTaskWithSubTasksAndPatientNameRow) **pb.GetTaskResponse_SubTask {
		if !row.SubtaskID.Valid {
			return nil
		}
		val := &pb.GetTaskResponse_SubTask{
			Id:        row.SubtaskID.UUID.String(),
			Done:      *row.SubtaskDone,
			Name:      *row.SubtaskName,
			CreatedBy: row.SubtaskCreatedBy.UUID.String(),
		}
		return &val
	})

	patient := &pb.GetTaskResponse_Patient{
		Id:   task.PatientID.String(),
		Name: patientName,
	}

	return &pb.GetTaskResponse{
		Id:             task.ID.String(),
		Name:           task.Name,
		Description:    task.Description,
		Status:         pb.TaskStatus(task.Status),
		AssignedUserId: assignedUserId,
		Patient:        patient,
		Subtasks:       subtasks,
		Public:         task.Public,
		DueAt:          timestamppb.New(task.DueAt.Time),
		CreatedBy:      task.CreatedBy.String(),
		OrganizationId: task.OrganizationID.String(),
	}, nil
}

func (ServiceServer) GetTasksByPatient(ctx context.Context, req *pb.GetTasksByPatientRequest) (*pb.GetTasksByPatientResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	patientID, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := taskRepo.GetTasksWithSubTasksByPatient(ctx, task_repo.GetTasksWithSubTasksByPatientParams{
		PatientID:      patientID,
		OrganizationID: organizationID,
	})
	if err != nil {
		return nil, err
	}

	tasks := make([]*pb.GetTasksByPatientResponse_Task, 0)
	taskMap := make(map[uuid.UUID]int)

	for _, row := range rows {
		var task *pb.GetTasksByPatientResponse_Task
		if ix, exists := taskMap[row.Task.ID]; exists {
			task = tasks[ix]
		} else {
			task := &pb.GetTasksByPatientResponse_Task{
				Id:             row.Task.ID.String(),
				Name:           row.Task.Name,
				Description:    row.Task.Description,
				Status:         pb.TaskStatus(row.Task.Status),
				AssignedUserId: hwutil.NullUUIDToStringPtr(row.Task.AssignedUserID),
				PatientId:      row.Task.PatientID.String(),
				Public:         row.Task.Public,
				Subtasks:       make([]*pb.GetTasksByPatientResponse_Task_SubTask, 0),
			}
			tasks = append(tasks, task)
			taskMap[row.Task.ID] = len(tasks) - 1
		}

		if !row.SubtaskID.Valid {
			continue
		}
		task.Subtasks = append(task.Subtasks, &pb.GetTasksByPatientResponse_Task_SubTask{
			Id:   row.SubtaskID.UUID.String(),
			Name: *row.SubtaskName,
			Done: *row.SubtaskDone,
		})
	}

	return &pb.GetTasksByPatientResponse{
		Tasks: tasks,
	}, nil
}

func (ServiceServer) GetTasksByPatientSortedByStatus(ctx context.Context, req *pb.GetTasksByPatientSortedByStatusRequest) (*pb.GetTasksByPatientSortedByStatusResponse, error) {
	taskRepo := repositories.TaskRepo(ctx)

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	patientID, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	tasks, err := taskRepo.GetTasksWithSubTasksByPatientForOrganization(patientID, organizationID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	var mappingFunction = func(tasks []models.Task) []*pb.GetTasksByPatientSortedByStatusResponse_Task {
		return hwutil.Map(tasks, func(task models.Task) *pb.GetTasksByPatientSortedByStatusResponse_Task {
			var mappedSubtasks = hwutil.Map(task.Subtasks, func(subtask models.Subtask) *pb.GetTasksByPatientSortedByStatusResponse_Task_SubTask {
				return &pb.GetTasksByPatientSortedByStatusResponse_Task_SubTask{
					Id:        subtask.ID.String(),
					Done:      subtask.Done,
					Name:      subtask.Name,
					CreatedBy: subtask.CreatedBy.String(),
				}
			})
			return &pb.GetTasksByPatientSortedByStatusResponse_Task{
				Id:             task.ID.String(),
				Name:           task.Name,
				Description:    task.Description,
				AssignedUserId: task.AssignedUserId.UUID.String(),
				PatientId:      task.PatientId.String(),
				Subtasks:       mappedSubtasks,
				Public:         task.Public,
				DueAt:          timestamppb.New(task.DueAt),
				CreatedBy:      task.CreatedBy.String(),
			}
		})
	}

	return &pb.GetTasksByPatientSortedByStatusResponse{
		Todo: mappingFunction(hwutil.Filter(tasks, func(value models.Task) bool {
			return value.Status == pb.TaskStatus_TASK_STATUS_TODO
		})),
		InProgress: mappingFunction(hwutil.Filter(tasks, func(value models.Task) bool {
			return value.Status == pb.TaskStatus_TASK_STATUS_IN_PROGRESS
		})),
		Done: mappingFunction(hwutil.Filter(tasks, func(value models.Task) bool {
			return value.Status == pb.TaskStatus_TASK_STATUS_DONE
		})),
	}, nil
}

func (ServiceServer) GetAssignedTasks(ctx context.Context, _ *pb.GetAssignedTasksRequest) (*pb.GetAssignedTasksResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())
	assigneeID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := taskRepo.GetTasksWithPatientsByAssignee(ctx, uuid.NullUUID{
		UUID:  assigneeID,
		Valid: true,
	})
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	var tasks []*pb.GetAssignedTasksResponse_Task
	taskMap := make(map[uuid.UUID]int)

	for _, row := range rows {
		var task *pb.GetAssignedTasksResponse_Task
		if ix, exists := taskMap[row.Task.ID]; exists {
			task = tasks[ix]
		} else {
			task = &pb.GetAssignedTasksResponse_Task{
				Id:             row.Task.ID.String(),
				Name:           row.Task.Name,
				Description:    row.Task.Description,
				Status:         pb.TaskStatus(row.Task.Status),
				AssignedUserId: row.Task.AssignedUserID.UUID.String(),
				Patient: &pb.GetAssignedTasksResponse_Task_Patient{
					Id:   row.PatientID.String(),
					Name: row.PatientName,
				},
				Public:    row.Task.Public,
				DueAt:     timestamppb.New(row.Task.DueAt.Time),
				CreatedBy: row.Task.CreatedBy.String(),
				Subtasks:  make([]*pb.GetAssignedTasksResponse_Task_SubTask, 0),
			}
			tasks = append(tasks, task)
			taskMap[row.Task.ID] = len(tasks) - 1
		}

		if !row.SubtaskID.Valid {
			continue
		}

		task.Subtasks = append(task.Subtasks, &pb.GetAssignedTasksResponse_Task_SubTask{
			Id:        row.SubtaskID.UUID.String(),
			Name:      *row.SubtaskName,
			Done:      *row.SubtaskDone,
			CreatedBy: row.SubtaskCreatedBy.UUID.String(),
		})
	}

	return &pb.GetAssignedTasksResponse{
		Tasks: tasks,
	}, nil
}

func (ServiceServer) UpdateTask(ctx context.Context, req *pb.UpdateTaskRequest) (*pb.UpdateTaskResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{
		Name:        req.Name,
		Description: req.Description,
		DueAt:       hwdb.PbToTimestamp(req.DueAt),
		Public:      req.Public,
		ID:          id,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateTaskResponse{}, nil
}

func (ServiceServer) DeleteTask(ctx context.Context, req *pb.DeleteTaskRequest) (*pb.DeleteTaskResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := taskRepo.DeleteTask(ctx, id); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.DeleteTaskResponse{}, nil
}

func (ServiceServer) AddSubTask(ctx context.Context, req *pb.AddSubTaskRequest) (*pb.AddSubTaskResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, err
	}

	taskId, err := uuid.Parse(req.TaskId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Check if task exists
	// TODO: this is probably not needed due to the FK constrain in the subtaskID table
	if exists, err := taskRepo.ExistsTask(ctx, task_repo.ExistsTaskParams{
		ID:             taskId,
		OrganizationID: organizationID,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	} else if !exists {
		return nil, status.Error(codes.InvalidArgument, "taskId not found")
	}

	done := false
	if req.Done != nil {
		done = *req.Done
	}

	subtaskID, err := taskRepo.CreateSubTask(ctx, task_repo.CreateSubTaskParams{
		Name:      req.Name,
		TaskID:    taskId,
		Done:      done,
		CreatedBy: userID,
	})

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.AddSubTaskResponse{Id: subtaskID.String()}, nil
}

func (ServiceServer) RemoveSubTask(ctx context.Context, req *pb.RemoveSubTaskRequest) (*pb.RemoveSubTaskResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	subtaskID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := taskRepo.DeleteSubTask(ctx, subtaskID); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.RemoveSubTaskResponse{}, nil
}

func (ServiceServer) UpdateSubTask(ctx context.Context, req *pb.UpdateSubTaskRequest) (*pb.UpdateSubTaskResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	subtaskID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := taskRepo.UpdateSubTask(ctx, task_repo.UpdateSubTaskParams{
		Name: req.Name,
		Done: nil,
		ID:   subtaskID,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateSubTaskResponse{}, nil
}

func (ServiceServer) SubTaskToToDo(ctx context.Context, req *pb.SubTaskToToDoRequest) (*pb.SubTaskToToDoResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	subtaskID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	done := false
	if err := taskRepo.UpdateSubTask(ctx, task_repo.UpdateSubTaskParams{
		Done: &done,
		ID:   subtaskID,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.SubTaskToToDoResponse{}, nil
}

func (ServiceServer) SubTaskToDone(ctx context.Context, req *pb.SubTaskToDoneRequest) (*pb.SubTaskToDoneResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	subtaskID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	done := true

	if err := taskRepo.UpdateSubTask(ctx, task_repo.UpdateSubTaskParams{Done: &done, ID: subtaskID}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.SubTaskToDoneResponse{}, nil
}

func (ServiceServer) TaskToToDo(ctx context.Context, req *pb.TaskToToDoRequest) (*pb.TaskToToDoResponse, error) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	s := int32(pb.TaskStatus_TASK_STATUS_TODO)
	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: id, Status: &s}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskID", id.String()).
		Msg("task to in-progress")

	return &pb.TaskToToDoResponse{}, nil
}

func (ServiceServer) TaskToInProgress(ctx context.Context, req *pb.TaskToInProgressRequest) (*pb.TaskToInProgressResponse, error) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	s := int32(pb.TaskStatus_TASK_STATUS_IN_PROGRESS)
	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: id, Status: &s}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskID", id.String()).
		Msg("task to in-progress")

	return &pb.TaskToInProgressResponse{}, nil
}

func (ServiceServer) TaskToDone(ctx context.Context, req *pb.TaskToDoneRequest) (*pb.TaskToDoneResponse, error) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	s := int32(pb.TaskStatus_TASK_STATUS_DONE)
	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: id, Status: &s}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskID", id.String()).
		Msg("task to done")

	return &pb.TaskToDoneResponse{}, nil
}

func (ServiceServer) AssignTaskToUser(ctx context.Context, req *pb.AssignTaskToUserRequest) (*pb.AssignTaskToUserResponse, error) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

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

	if err := taskRepo.UpdateTaskUser(ctx, task_repo.UpdateTaskUserParams{
		ID: id,
		AssignedUserID: uuid.NullUUID{
			UUID:  userId,
			Valid: true,
		},
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskID", id.String()).
		Str("userID", userId.String()).
		Msg("user assigned")

	return &pb.AssignTaskToUserResponse{}, nil
}

func (ServiceServer) UnassignTaskFromUser(ctx context.Context, req *pb.UnassignTaskFromUserRequest) (*pb.UnassignTaskFromUserResponse, error) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := taskRepo.UpdateTaskUser(ctx, task_repo.UpdateTaskUserParams{ID: id, AssignedUserID: uuid.NullUUID{}}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskID", id.String()).
		Msg("user unassigned")

	return &pb.UnassignTaskFromUserResponse{}, nil
}

func (ServiceServer) PublishTask(ctx context.Context, req *pb.PublishTaskRequest) (*pb.PublishTaskResponse, error) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	public := true

	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: id, Public: &public}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskID", id.String()).
		Msg("task published")

	return &pb.PublishTaskResponse{}, nil
}

func (ServiceServer) UnpublishTask(ctx context.Context, req *pb.UnpublishTaskRequest) (*pb.UnpublishTaskResponse, error) {
	log := zlog.Ctx(ctx)
	taskRepo := task_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	public := false
	if err := taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{
		Public: &public,
		ID:     id,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskID", id.String()).
		Msg("task unpublished")

	return &pb.UnpublishTaskResponse{}, nil
}
