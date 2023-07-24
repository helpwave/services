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
	"hwgorm"
	"hwutil"
	pbhelpers "proto_helpers/task_svc/v1"
	patientModels "task-svc/internal/patient/models"
	"task-svc/internal/task/models"
)

// GetTasksByPatientForOrganization
// TODO: Move into repository
func GetTasksByPatientForOrganization(ctx context.Context, patientID uuid.UUID) ([]models.Task, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var tasks []models.Task
	if err := db.Preload("Subtasks").Where("patient_id = ? AND organization_id = ?", patientID, organizationID).Find(&tasks).Error; err != nil {
		return nil, err
	}

	return tasks, nil
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
	if err := db.First(&patientModels.Patient{ID: patientId}).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "patientId not found")
		}
	}

	description := ""
	if req.Description != nil {
		description = *req.Description
	}
	task := models.Task{
		Base: models.Base{
			Name:        req.Name,
			Description: description,
			Status:      pb.TaskStatus_TASK_STATUS_TODO,
		},
		PatientId:      patientId,
		OrganizationID: organizationID,
		CreatedBy:      userID,
		DueAt:          req.DueAt.AsTime(),
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

	task := models.Task{ID: id}
	if err := db.Preload("Subtasks").First(&task).Error; err != nil {
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

	var subtasks = hwutil.Map(task.Subtasks, func(subtask models.Subtask) *pb.GetTaskResponse_SubTask {
		return &pb.GetTaskResponse_SubTask{
			Id:   subtask.ID.String(),
			Done: subtask.Done,
			Name: subtask.Name,
		}
	})

	return &pb.GetTaskResponse{
		Id:             task.ID.String(),
		Name:           task.Name,
		Description:    task.Description,
		Status:         task.Status,
		AssignedUserId: assignedUserId,
		PatientId:      task.PatientId.String(),
		Subtasks:       subtasks,
		Public:         task.Public,
		DueAt:          timestamppb.New(task.DueAt),
	}, nil
}

func (ServiceServer) GetTasksByPatient(ctx context.Context, req *pb.GetTasksByPatientRequest) (*pb.GetTasksByPatientResponse, error) {
	// TODO: Auth

	patientID, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	tasks, err := GetTasksByPatientForOrganization(ctx, patientID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	var mappedTasks = hwutil.Map(tasks, func(task models.Task) *pb.GetTasksByPatientResponse_Task {
		var mappedSubtasks = hwutil.Map(task.Subtasks, func(subtask models.Subtask) *pb.GetTasksByPatientResponse_Task_SubTask {
			return &pb.GetTasksByPatientResponse_Task_SubTask{
				Id:   subtask.ID.String(),
				Done: subtask.Done,
				Name: subtask.Name,
			}
		})
		return &pb.GetTasksByPatientResponse_Task{
			Id:             task.ID.String(),
			Name:           task.Name,
			Description:    task.Description,
			Status:         task.Status,
			AssignedUserId: task.AssignedUserId.UUID.String(),
			PatientId:      task.PatientId.String(),
			Subtasks:       mappedSubtasks,
			Public:         task.Public,
			DueAt:          timestamppb.New(task.DueAt),
		}
	})

	return &pb.GetTasksByPatientResponse{
		Tasks: mappedTasks,
	}, nil
}

func (ServiceServer) GetTasksByPatientSortedByStatus(ctx context.Context, req *pb.GetTasksByPatientSortedByStatusRequest) (*pb.GetTasksByPatientSortedByStatusResponse, error) {
	// TODO: Auth

	patientID, err := uuid.Parse(req.PatientId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	tasks, err := GetTasksByPatientForOrganization(ctx, patientID)
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
					Id:   subtask.ID.String(),
					Done: subtask.Done,
					Name: subtask.Name,
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

func (ServiceServer) UpdateTask(ctx context.Context, req *pb.UpdateTaskRequest) (*pb.UpdateTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := models.Task{ID: id}
	updates := pbhelpers.UpdatesMapForUpdateTaskRequest(req)

	if err := db.Model(&task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateTaskResponse{}, nil
}

func (ServiceServer) DeleteTask(ctx context.Context, req *pb.DeleteTaskRequest) (*pb.DeleteTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := models.Task{ID: id}

	if err := db.Delete(&task).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.DeleteTaskResponse{}, nil
}

func (ServiceServer) AddSubTask(ctx context.Context, req *pb.AddSubTaskRequest) (*pb.AddSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, err
	}

	taskId, err := uuid.Parse(req.TaskId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// Check if task exists
	if err := db.First(&models.Task{ID: taskId}).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "taskId not found")
		}
	}

	done := false
	if req.Done != nil {
		done = *req.Done
	}
	subtask := models.Subtask{
		Name:      req.Name,
		TaskID:    taskId,
		Done:      done,
		CreatedBy: userID,
	}

	if err := db.Create(&subtask).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.AddSubTaskResponse{Id: subtask.ID.String()}, nil
}

func (ServiceServer) RemoveSubTask(ctx context.Context, req *pb.RemoveSubTaskRequest) (*pb.RemoveSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	subtaskID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	subtask := models.Subtask{ID: subtaskID}

	if err := db.Delete(&subtask).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.RemoveSubTaskResponse{}, nil
}

func (ServiceServer) UpdateSubTask(ctx context.Context, req *pb.UpdateSubTaskRequest) (*pb.UpdateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	subtaskID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	subtask := models.Subtask{ID: subtaskID}
	updates := pbhelpers.UpdatesMapForUpdateSubTaskRequest(req)

	if err := db.Model(&subtask).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateSubTaskResponse{}, nil
}

func (ServiceServer) SubTaskToToDo(ctx context.Context, req *pb.SubTaskToToDoRequest) (*pb.SubTaskToToDoResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	subtaskID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	subtask := models.Subtask{ID: subtaskID}

	if err := db.Model(&subtask).Update("done", false).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.SubTaskToToDoResponse{}, nil
}

func (ServiceServer) SubTaskToDone(ctx context.Context, req *pb.SubTaskToDoneRequest) (*pb.SubTaskToDoneResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	subtaskID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	subtask := models.Subtask{ID: subtaskID}

	if err := db.Model(&subtask).Update("done", true).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.SubTaskToDoneResponse{}, nil
}

func (ServiceServer) TaskToToDo(ctx context.Context, req *pb.TaskToToDoRequest) (*pb.TaskToToDoResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := models.Task{ID: id}
	updates := models.Task{Base: models.Base{Status: pb.TaskStatus_TASK_STATUS_TODO}}

	if err := db.Model(&task).Updates(updates).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("task to in-progress")

	return &pb.TaskToToDoResponse{}, nil
}

func (ServiceServer) TaskToInProgress(ctx context.Context, req *pb.TaskToInProgressRequest) (*pb.TaskToInProgressResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := models.Task{ID: id}
	updates := models.Task{Base: models.Base{Status: pb.TaskStatus_TASK_STATUS_IN_PROGRESS}}

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

	task := models.Task{ID: id}
	updates := models.Task{Base: models.Base{Status: pb.TaskStatus_TASK_STATUS_DONE}}

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

	task := models.Task{ID: id}
	updates := models.Task{AssignedUserId: uuid.NullUUID{UUID: userId, Valid: true}}

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

	task := models.Task{ID: id}

	if err := db.Model(task).Update("assigned_user_id", nil).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("user unassigned")

	return &pb.UnassignTaskFromUserResponse{}, nil
}

func (ServiceServer) PublishTask(ctx context.Context, req *pb.PublishTaskRequest) (*pb.PublishTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := models.Task{ID: id}

	if err := db.Model(&task).Update("public", true).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("task published")

	return &pb.PublishTaskResponse{}, nil
}

func (ServiceServer) UnpublishTask(ctx context.Context, req *pb.UnpublishTaskRequest) (*pb.UnpublishTaskResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	task := models.Task{ID: id}

	if err := db.Model(&task).Update("public", false).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskId", id.String()).
		Msg("task unpublished")

	return &pb.UnpublishTaskResponse{}, nil
}

func GetTasksByPatient(ctx context.Context, patientId uuid.UUID) ([]models.Task, error) {
	db := hwgorm.GetDB(ctx)

	var tasks []models.Task

	if err := db.Preload("Subtasks").Where("patient_id = ?", patientId).Find(&tasks).Error; err != nil {
		return nil, err
	}

	return tasks, nil
}
