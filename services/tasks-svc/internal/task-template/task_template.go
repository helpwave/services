package task_template

import (
	"common"
	"context"
	commonpb "gen/libs/common/v1"
	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"hwdb"
	"hwgrpc"
	"hwutil"
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

	row, err := templateRepo.CreateTaskTemplate(ctx, task_template_repo.CreateTaskTemplateParams{
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

	templateID := row.ID
	consistency := row.Consistency

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
		Consistency: common.ConsistencyToken(consistency).String(),
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

	tx, rollback, err := hwdb.BeginTx(hwdb.GetDB(), ctx)
	if err != nil {
		return nil, err
	}
	defer rollback()

	templateRepo := task_template_repo.New(tx)

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

	// increase consistency of taskTemplate
	ttResult, err := templateRepo.UpdateTaskTemplate(ctx, task_template_repo.UpdateTaskTemplateParams{
		ID: subtask.TaskTemplateID,
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return nil, err
	}

	// commit
	if err := hwdb.Error(ctx, tx.Commit(ctx)); err != nil {
		return nil, err
	}

	log.Info().
		Str("taskTemplateSubtaskID", subtask.ID.String()).
		Str("taskTemplateID", subtask.TaskTemplateID.String()).
		Msg("taskTemplateSubtask deleted")

	return &pb.DeleteTaskTemplateSubTaskResponse{
		TaskTemplateConsistency: common.ConsistencyToken(ttResult.Consistency).String(),
	}, nil
}

func (ServiceServer) UpdateTaskTemplate(ctx context.Context, req *pb.UpdateTaskTemplateRequest) (*pb.UpdateTaskTemplateResponse, error) {

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	expConsistency, ok := common.ParseConsistency(req.Consistency)
	if !ok {
		return nil, common.UnparsableConsistencyError(ctx, "consistency")
	}

	// Start TX
	tx, rollback, err := hwdb.BeginTx(hwdb.GetDB(), ctx)
	if err != nil {
		return nil, err
	}
	defer rollback()
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// do update
	result, err := templateRepo.UpdateTaskTemplate(ctx, task_template_repo.UpdateTaskTemplateParams{
		Name:        req.Name,
		Description: req.Description,
		ID:          id,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// conflict detection
	if expConsistency != nil && *expConsistency != common.ConsistencyToken(result.OldConsistency) {
		// task_template is not event sourced yet and has more than one field,
		// thus we are not able to pinpoint conflicts to a field, we only know *some* update has happened since
		// for convenience we are filtering out obvious non-conflicts, where the update is the same as the is state, or the field was not changed

		conflicts := make(map[string]*commonpb.AttributeConflict)

		if req.Name != nil && *req.Name != result.OldName {
			conflicts["name"], err = hwgrpc.AttributeConflict(
				wrapperspb.String(result.OldName),
				wrapperspb.String(*req.Name),
			)
			if err != nil {
				return nil, err
			}
		}
		if req.Description != nil && *req.Description != result.OldDescription {
			conflicts["description"], err = hwgrpc.AttributeConflict(
				wrapperspb.String(result.OldDescription),
				wrapperspb.String(*req.Description),
			)
			if err != nil {
				return nil, err
			}
		}

		if len(conflicts) != 0 {
			// prevent the update
			if err := hwdb.Error(ctx, tx.Rollback(ctx)); err != nil {
				return nil, err
			}

			// return conflict
			return &pb.UpdateTaskTemplateResponse{
				Conflict: &commonpb.Conflict{
					ConflictingAttributes: conflicts,
					HistoryMissing:        true,
				},
				Consistency: common.ConsistencyToken(result.OldConsistency).String(),
			}, nil
		}
	}

	// Commit Update
	if err := hwdb.Error(ctx, tx.Commit(ctx)); err != nil {
		return nil, err
	}

	return &pb.UpdateTaskTemplateResponse{
		Conflict:    nil,
		Consistency: common.ConsistencyToken(result.Consistency).String(),
	}, nil
}

func (ServiceServer) UpdateTaskTemplateSubTask(ctx context.Context, req *pb.UpdateTaskTemplateSubTaskRequest) (*pb.UpdateTaskTemplateSubTaskResponse, error) {

	expConsistency, ok := common.ParseConsistency(req.TaskTemplateConsistency)
	if !ok {
		return nil, common.UnparsableConsistencyError(ctx, "task_template_consistency")
	}

	// TX
	tx, rollback, err := hwdb.BeginTx(hwdb.GetDB(), ctx)
	if err != nil {
		return nil, err
	}
	defer rollback()
	templateRepo := task_template_repo.New(tx)

	// TODO: Auth

	id, err := uuid.Parse(req.SubtaskId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// update subtask and get related taskTemplate
	subTaskResult, err := templateRepo.UpdateSubtask(ctx, task_template_repo.UpdateSubtaskParams{
		ID:   id,
		Name: req.Name,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// increase consistency of taskTemplate
	result, err := templateRepo.UpdateTaskTemplate(ctx, task_template_repo.UpdateTaskTemplateParams{
		ID: subTaskResult.TaskTemplateID,
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return nil, err
	}

	// conflict detection
	if expConsistency != nil && *expConsistency != common.ConsistencyToken(result.OldConsistency) {
		conflicts := make(map[string]*commonpb.AttributeConflict)

		if req.Name != nil && *req.Name != subTaskResult.OldName {
			conflicts["name"], err = hwgrpc.AttributeConflict(
				wrapperspb.String(subTaskResult.OldName),
				wrapperspb.String(*req.Name),
			)
			if err != nil {
				return nil, err
			}
		}

		if len(conflicts) != 0 {
			// prevent the updates
			if err := hwdb.Error(ctx, tx.Rollback(ctx)); err != nil {
				return nil, err
			}

			// return conflict
			return &pb.UpdateTaskTemplateSubTaskResponse{
				Conflict: &commonpb.Conflict{
					ConflictingAttributes: conflicts,
					HistoryMissing:        true,
				},
				TaskTemplateConsistency: common.ConsistencyToken(result.OldConsistency).String(),
			}, nil
		}
	}

	// commit
	if err := hwdb.Error(ctx, tx.Commit(ctx)); err != nil {
		return nil, err
	}

	return &pb.UpdateTaskTemplateSubTaskResponse{
		Conflict:                nil,
		TaskTemplateConsistency: common.ConsistencyToken(result.Consistency).String(),
	}, nil
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

	// implicitly checks the existence of the ward through the foreign key constraint
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	subtaskID := row.ID
	consistency := row.Consistency

	log.Info().
		Str("taskTemplateID", taskTemplateID.String()).
		Str("taskTemplateSubTaskID", subtaskID.String()).
		Int64("consistencyInt64", consistency).
		Msg("subtaskID created")

	return &pb.CreateTaskTemplateSubTaskResponse{
		Id:                      subtaskID.String(),
		TaskTemplateConsistency: common.ConsistencyToken(consistency).String(),
	}, nil
}

func (ServiceServer) GetAllTaskTemplates(ctx context.Context, req *pb.GetAllTaskTemplatesRequest) (*pb.GetAllTaskTemplatesResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	createdBy, err := hwutil.ParseNullUUID(req.CreatedBy)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := templateRepo.GetAllTaskTemplatesWithSubTasks(ctx, task_template_repo.GetAllTaskTemplatesWithSubTasksParams{
		CreatorID:   createdBy,
		PrivateOnly: req.PrivateOnly,
		WardID:      wardID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	templates := make([]*pb.GetAllTaskTemplatesResponse_TaskTemplate, 0)
	templateMap := make(map[uuid.UUID]int)

	for _, row := range rows {
		var template *pb.GetAllTaskTemplatesResponse_TaskTemplate
		if ix, found := templateMap[row.TaskTemplate.ID]; found {
			template = templates[ix]
		} else {
			template = &pb.GetAllTaskTemplatesResponse_TaskTemplate{
				Id:          row.TaskTemplate.ID.String(),
				Name:        row.TaskTemplate.Name,
				Description: row.TaskTemplate.Description,
				IsPublic:    row.TaskTemplate.WardID.Valid,
				Subtasks:    make([]*pb.GetAllTaskTemplatesResponse_TaskTemplate_SubTask, 0),
				CreatedBy:   row.TaskTemplate.CreatedBy.String(),
				Consistency: common.ConsistencyToken(row.TaskTemplate.Consistency).String(),
			}
			templates = append(templates, template)
			templateMap[row.TaskTemplate.ID] = len(templates) - 1
		}

		if row.SubTaskName != nil {
			template.Subtasks = append(template.Subtasks, &pb.GetAllTaskTemplatesResponse_TaskTemplate_SubTask{
				Name:           *row.SubTaskName,
				TaskTemplateId: row.TaskTemplate.ID.String(),
				Id:             row.SubTaskID.UUID.String(), // must exist by constraint
			})
		}
	}

	return &pb.GetAllTaskTemplatesResponse{
		Templates: templates,
	}, nil
}
