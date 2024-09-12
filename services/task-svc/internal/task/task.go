package task

import (
	"common"
	"context"
	pb "gen/services/task_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"
	"hwdb"
	"hwutil"
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
	exists, err := patientRepo.ExistsPatientInOrganization(ctx, patient_repo.ExistsPatientInOrganizationParams{
		ID:             patientId,
		OrganizationID: organizationID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("taskID", taskId.String()).
		Str("patientID", patientId.String()).
		Msg("task created for patient")

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
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	tasks := make([]*pb.GetTasksByPatientResponse_Task, 0)
	taskMap := make(map[uuid.UUID]int) // id -> index map

	for _, row := range rows {
		var task *pb.GetTasksByPatientResponse_Task
		// if task was seen before (i.e. already has a GetTasksByPatientResponse_Task object),
		// mutate that one
		// else, create it
		if ix, exists := taskMap[row.Task.ID]; exists {
			task = tasks[ix]
		} else {
			task = &pb.GetTasksByPatientResponse_Task{
				Id:             row.Task.ID.String(),
				Name:           row.Task.Name,
				Description:    row.Task.Description,
				Status:         pb.TaskStatus(row.Task.Status),
				AssignedUserId: hwutil.UUIDToStringPtr(row.Task.AssignedUserID),
				PatientId:      row.Task.PatientID.String(),
				Public:         row.Task.Public,
				DueAt:          timestamppb.New(row.Task.DueAt.Time),
				CreatedBy:      row.Task.CreatedBy.String(),
				Subtasks:       make([]*pb.GetTasksByPatientResponse_Task_SubTask, 0),
			}
			tasks = append(tasks, task)
			taskMap[row.Task.ID] = len(tasks) - 1
		}

		if !row.SubtaskID.Valid {
			continue
		}
		task.Subtasks = append(task.Subtasks, &pb.GetTasksByPatientResponse_Task_SubTask{
			Id:        row.SubtaskID.UUID.String(),
			Name:      *row.SubtaskName,
			Done:      *row.SubtaskDone,
			CreatedBy: row.SubtaskCreatedBy.UUID.String(),
		})
	}

	return &pb.GetTasksByPatientResponse{
		Tasks: tasks,
	}, nil
}

func (ServiceServer) GetTasksByPatientSortedByStatus(ctx context.Context, req *pb.GetTasksByPatientSortedByStatusRequest) (*pb.GetTasksByPatientSortedByStatusResponse, error) {
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
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	tasks := make([]*pb.GetTasksByPatientSortedByStatusResponse_Task, 0)
	taskMap := make(map[uuid.UUID]int)

	todo := make(map[int]bool)
	inprogress := make(map[int]bool)
	done := make(map[int]bool)

	for _, row := range rows {
		var task *pb.GetTasksByPatientSortedByStatusResponse_Task
		if i, exists := taskMap[row.Task.ID]; exists {
			task = tasks[i]
		} else {
			task = &pb.GetTasksByPatientSortedByStatusResponse_Task{
				Id:             row.Task.ID.String(),
				Name:           row.Task.Name,
				Description:    row.Task.Description,
				AssignedUserId: hwutil.UUIDToStringPtr(row.Task.AssignedUserID),
				PatientId:      row.Task.PatientID.String(),
				Public:         row.Task.Public,
				DueAt:          timestamppb.New(row.Task.DueAt.Time),
				CreatedBy:      row.Task.CreatedBy.String(),
				Subtasks:       make([]*pb.GetTasksByPatientSortedByStatusResponse_Task_SubTask, 0),
			}
			tasks = append(tasks, task)
			ix := len(tasks) - 1
			taskMap[row.Task.ID] = ix
			taskStatus := pb.TaskStatus(row.Task.Status)
			if taskStatus == pb.TaskStatus_TASK_STATUS_TODO {
				todo[ix] = true
			} else if taskStatus == pb.TaskStatus_TASK_STATUS_IN_PROGRESS {
				inprogress[ix] = true
			} else if taskStatus == pb.TaskStatus_TASK_STATUS_DONE {
				done[ix] = true
			}
		}

		if !row.SubtaskID.Valid {
			continue
		}
		task.Subtasks = append(task.Subtasks, &pb.GetTasksByPatientSortedByStatusResponse_Task_SubTask{
			Id:        row.SubtaskID.UUID.String(),
			Name:      *row.SubtaskName,
			Done:      *row.SubtaskDone,
			CreatedBy: row.SubtaskCreatedBy.UUID.String(),
		})
	}

	collectIxs := func(set map[int]bool) []*pb.GetTasksByPatientSortedByStatusResponse_Task {
		res := make([]*pb.GetTasksByPatientSortedByStatusResponse_Task, 0, len(set))

		for key, value := range set {
			if value {
				res = append(res, tasks[key])
			}
		}

		return res
	}

	return &pb.GetTasksByPatientSortedByStatusResponse{
		Todo:       collectIxs(todo),
		InProgress: collectIxs(inprogress),
		Done:       collectIxs(done),
	}, nil
}

func (ServiceServer) GetAssignedTasks(ctx context.Context, _ *pb.GetAssignedTasksRequest) (*pb.GetAssignedTasksResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())
	assigneeID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := taskRepo.GetTasksWithPatientsByAssignee(ctx, &assigneeID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	err = taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{
		Name:        req.Name,
		Description: req.Description,
		DueAt:       hwdb.PbToTimestamp(req.DueAt),
		Public:      req.Public,
		ID:          id,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	err = taskRepo.DeleteTask(ctx, id)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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
	exists, err := taskRepo.ExistsTask(ctx, task_repo.ExistsTaskParams{
		ID:             taskId,
		OrganizationID: organizationID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	err = taskRepo.DeleteSubTask(ctx, subtaskID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.RemoveSubTaskResponse{}, nil
}

func (ServiceServer) UpdateSubTask(ctx context.Context, req *pb.UpdateSubTaskRequest) (*pb.UpdateSubTaskResponse, error) {
	taskRepo := task_repo.New(hwdb.GetDB())

	subtaskID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = taskRepo.UpdateSubTask(ctx, task_repo.UpdateSubTaskParams{
		Name: req.Name,
		Done: nil,
		ID:   subtaskID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	err = taskRepo.UpdateSubTask(ctx, task_repo.UpdateSubTaskParams{
		Done: hwutil.PtrTo(false),
		ID:   subtaskID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	err = taskRepo.UpdateSubTask(ctx, task_repo.UpdateSubTaskParams{Done: hwutil.PtrTo(true), ID: subtaskID})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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
	err = taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: id, Status: &s})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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
	err = taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: id, Status: &s})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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
	err = taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: id, Status: &s})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	err = taskRepo.UpdateTaskUser(ctx, task_repo.UpdateTaskUserParams{
		ID:             id,
		AssignedUserID: &userId,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	err = taskRepo.UpdateTaskUser(ctx, task_repo.UpdateTaskUserParams{ID: id, AssignedUserID: nil})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	err = taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{ID: id, Public: hwutil.PtrTo(true)})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
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

	err = taskRepo.UpdateTask(ctx, task_repo.UpdateTaskParams{
		Public: hwutil.PtrTo(false),
		ID:     id,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("taskID", id.String()).
		Msg("task unpublished")

	return &pb.UnpublishTaskResponse{}, nil
}
