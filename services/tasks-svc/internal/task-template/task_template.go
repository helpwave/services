package task_template

import (
	"common"
	"context"
	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwdb"
	"hwutil"
	"strconv"
	"tasks-svc/repos/task_template_repo"

	pb "gen/services/tasks_svc/v1"
	zlog "github.com/rs/zerolog/log"
)

type ServiceServer struct {
	pb.UnimplementedTaskTemplateServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateTaskTemplate(ctx context.Context, req *pb.CreateTaskTemplateRequest) (*pb.CreateTaskTemplateResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwdb.GetDB()
	tx, rollback, err := hwdb.BeginTx(db, ctx)
	if err != nil {
		return nil, err
	}
	defer rollback()
	templateRepo := task_template_repo.New(db).WithTx(tx)

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, err
	}

	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, err
	}

	description := ""
	if req.Description != nil {
		description = *req.Description
	}

	templateID, err := templateRepo.CreateTaskTemplate(ctx, task_template_repo.CreateTaskTemplateParams{
		Name:        req.Name,
		Description: description,
		CreatedBy:   userID,
		WardID:      wardID,
	})
	// This also implicitly checks the wardID because of the foreignKey constraint in the sql
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	if req.Subtasks != nil {
		subtaskNames := hwutil.Map(req.Subtasks, func(subtask *pb.CreateTaskTemplateRequest_SubTask) task_template_repo.AppendSubTasksParams {
			return task_template_repo.AppendSubTasksParams{
				Name:           subtask.Name,
				TaskTemplateID: templateID,
			}
		})

		_, err = templateRepo.AppendSubTasks(ctx, subtaskNames)
		err = hwdb.Error(ctx, err)
		if err != nil {
			return nil, err
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return nil, status.Errorf(codes.Internal, "could not commit tx %s", err.Error())
	}

	log.Info().
		Str("taskTemplateID", templateID.String()).
		Msg("taskTemplate created")

	return &pb.CreateTaskTemplateResponse{
		Id:          templateID.String(),
		Consistency: "0", // DEFAULT value
	}, nil
}

func (ServiceServer) DeleteTaskTemplate(ctx context.Context, req *pb.DeleteTaskTemplateRequest) (*pb.DeleteTaskTemplateResponse, error) {
	log := zlog.Ctx(ctx)
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = templateRepo.DeleteTaskTemplate(ctx, id)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("taskTemplateID", id.String()).
		Msg("taskTemplate deleted")

	return &pb.DeleteTaskTemplateResponse{}, nil
}

func (ServiceServer) DeleteTaskTemplateSubTask(ctx context.Context, req *pb.DeleteTaskTemplateSubTaskRequest) (*pb.DeleteTaskTemplateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	subtask, err := templateRepo.DeleteSubtask(ctx, id)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("taskTemplateSubtaskID", subtask.ID.String()).
		Str("taskTemplateID", subtask.TaskTemplateID.String()).
		Msg("taskTemplateSubtask deleted")

	return &pb.DeleteTaskTemplateSubTaskResponse{}, nil
}

func (ServiceServer) UpdateTaskTemplate(ctx context.Context, req *pb.UpdateTaskTemplateRequest) (*pb.UpdateTaskTemplateResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = templateRepo.UpdateTaskTemplate(ctx, task_template_repo.UpdateTaskTemplateParams{
		Name:        req.Name,
		Description: req.Description,
		ID:          id,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.UpdateTaskTemplateResponse{}, nil
}

func (ServiceServer) UpdateTaskTemplateSubTask(ctx context.Context, req *pb.UpdateTaskTemplateSubTaskRequest) (*pb.UpdateTaskTemplateSubTaskResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.SubtaskId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = templateRepo.UpdateSubtask(ctx, task_template_repo.UpdateSubtaskParams{
		Name: req.Name,
		ID:   id,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.UpdateTaskTemplateSubTaskResponse{}, nil
}

func (ServiceServer) CreateTaskTemplateSubTask(ctx context.Context, req *pb.CreateTaskTemplateSubTaskRequest) (*pb.CreateTaskTemplateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	templateRepo := task_template_repo.New(hwdb.GetDB())

	taskTemplateID, err := uuid.Parse(req.TaskTemplateId)
	if err != nil {
		return nil, err
	}

	row, err := templateRepo.CreateSubTask(ctx, task_template_repo.CreateSubTaskParams{
		TaskTemplateID: taskTemplateID,
		Name:           req.Name,
	})

	subtaskID := row.ID
	consistency := row.Consistency

	// implicitly checks the existence of the ward through the foreign key constraint
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskTemplateID", taskTemplateID.String()).
		Str("taskTemplateSubTaskID", subtaskID.String()).
		Msg("subtaskID created")

	return &pb.CreateTaskTemplateSubTaskResponse{
		Id:              subtaskID.String(),
		TaskConsistency: strconv.FormatUint(uint64(consistency), 10),
	}, nil
}

// TODO: GetAllTaskTemplates
