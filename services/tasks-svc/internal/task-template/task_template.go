package task_template

import (
	"common"
	"common/auth"
	"context"
	pbEventsV1 "gen/libs/events/v1"
	"hwdb"
	"hwes"
	"hwes/eventstoredb"
	"hwutil"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"tasks-svc/repos/task_template_repo"

	pb "gen/services/tasks_svc/v1"
	zlog "github.com/rs/zerolog/log"
)

const TaskTemplateAggregateType = eventstoredb.EntityEventPrefix + "task_template"

type TaskTemplateAggregate struct {
	*hwes.AggregateBase
}

func NewTaskTemplateAggregate(id uuid.UUID) *TaskTemplateAggregate {
	aggregate := &TaskTemplateAggregate{}
	aggregate.AggregateBase = hwes.NewAggregateBase(TaskTemplateAggregateType, id)
	return aggregate
}

type ServiceServer struct {
	pb.UnimplementedTaskTemplateServiceServer
	es *esdb.Client
}

func NewServiceServer(es *esdb.Client) *ServiceServer {
	return &ServiceServer{es: es}
}

func (s ServiceServer) CreateTaskTemplate(
	ctx context.Context,
	req *pb.CreateTaskTemplateRequest,
) (*pb.CreateTaskTemplateResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwdb.GetDB()
	tx, rollback, err := hwdb.BeginTx(db, ctx)
	if err != nil {
		return nil, err
	}
	defer rollback()
	templateRepo := task_template_repo.New(db).WithTx(tx)

	userID := auth.MustGetUserID(ctx)

	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, err
	}

	row, err := templateRepo.CreateTaskTemplate(ctx, task_template_repo.CreateTaskTemplateParams{
		Name:        req.GetName(),
		Description: req.GetDescription(),
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
		subtaskNames := hwutil.Map(req.GetSubtasks(),
			func(subtask *pb.CreateTaskTemplateRequest_SubTask) task_template_repo.AppendSubTasksParams {
				return task_template_repo.AppendSubTasksParams{
					Name:           subtask.GetName(),
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

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewTaskTemplateAggregate(templateID),
		&pbEventsV1.TaskTemplateCreatedEvent{
			Id:          templateID.String(),
			Name:        req.GetName(),
			Description: req.GetDescription(),
			Subtasks: hwutil.Map(req.GetSubtasks(),
				func(subtask *pb.CreateTaskTemplateRequest_SubTask) *pbEventsV1.TaskTemplateCreatedEvent_SubTask {
					return &pbEventsV1.TaskTemplateCreatedEvent_SubTask{Name: subtask.GetName()}
				},
			),
		},
	); err != nil {
		return nil, err
	}

	return &pb.CreateTaskTemplateResponse{
		Id:          templateID.String(),
		Consistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) DeleteTaskTemplate(
	ctx context.Context,
	req *pb.DeleteTaskTemplateRequest,
) (*pb.DeleteTaskTemplateResponse, error) {
	log := zlog.Ctx(ctx)
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.GetId())
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

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewTaskTemplateAggregate(id),
		&pbEventsV1.TaskTemplateDeletedEvent{
			Id: id.String(),
		},
	); err != nil {
		return nil, err
	}

	return &pb.DeleteTaskTemplateResponse{}, nil
}

func (s ServiceServer) DeleteTaskTemplateSubTask(
	ctx context.Context,
	req *pb.DeleteTaskTemplateSubTaskRequest,
) (*pb.DeleteTaskTemplateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)

	tx, rollback, err := hwdb.BeginTx(hwdb.GetDB(), ctx)
	if err != nil {
		return nil, err
	}
	defer rollback()

	templateRepo := task_template_repo.New(tx)

	// TODO: Auth

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	subtask, err := templateRepo.DeleteSubtask(ctx, id)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// increase consistency of taskTemplate
	consistency, err := templateRepo.UpdateTaskTemplate(ctx, task_template_repo.UpdateTaskTemplateParams{
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

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewTaskTemplateAggregate(subtask.TaskTemplateID),
		&pbEventsV1.TaskTemplateSubTaskDeletedEvent{
			TaskTemplateId: subtask.TaskTemplateID.String(),
			SubTaskId:      subtask.ID.String(),
		},
	); err != nil {
		return nil, err
	}

	return &pb.DeleteTaskTemplateSubTaskResponse{
		TaskTemplateConsistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) UpdateTaskTemplate(
	ctx context.Context,
	req *pb.UpdateTaskTemplateRequest,
) (*pb.UpdateTaskTemplateResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	consistency, err := templateRepo.UpdateTaskTemplate(ctx, task_template_repo.UpdateTaskTemplateParams{
		Name:        req.Name,
		Description: req.Description,
		ID:          id,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewTaskTemplateAggregate(id),
		&pbEventsV1.TaskTemplateUpdatedEvent{
			Id:          id.String(),
			Name:        req.GetName(),
			Description: req.GetDescription(),
		},
	); err != nil {
		return nil, err
	}

	return &pb.UpdateTaskTemplateResponse{
		Conflict:    nil,                                           // TODO
		Consistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) UpdateTaskTemplateSubTask(
	ctx context.Context,
	req *pb.UpdateTaskTemplateSubTaskRequest,
) (*pb.UpdateTaskTemplateSubTaskResponse, error) {
	// TX
	tx, rollback, err := hwdb.BeginTx(hwdb.GetDB(), ctx)
	if err != nil {
		return nil, err
	}
	defer rollback()
	templateRepo := task_template_repo.New(tx)

	// TODO: Auth

	id, err := uuid.Parse(req.GetSubtaskId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// update subtask and get related taskTemplate
	taskTemplateID, err := templateRepo.UpdateSubtask(ctx, task_template_repo.UpdateSubtaskParams{
		Name: req.Name,
		ID:   id,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// increase consistency of taskTemplate
	consistency, err := templateRepo.UpdateTaskTemplate(ctx, task_template_repo.UpdateTaskTemplateParams{
		ID: taskTemplateID,
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return nil, err
	}

	// commit
	if err := hwdb.Error(ctx, tx.Commit(ctx)); err != nil {
		return nil, err
	}

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewTaskTemplateAggregate(taskTemplateID),
		&pbEventsV1.TaskTemplateSubTaskUpdatedEvent{
			TaskTemplateId: taskTemplateID.String(),
			SubTaskId:      id.String(),
			Name:           req.GetName(),
		},
	); err != nil {
		return nil, err
	}

	return &pb.UpdateTaskTemplateSubTaskResponse{
		Conflict:                nil,                                           // TODO
		TaskTemplateConsistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (s ServiceServer) CreateTaskTemplateSubTask(
	ctx context.Context,
	req *pb.CreateTaskTemplateSubTaskRequest,
) (*pb.CreateTaskTemplateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	templateRepo := task_template_repo.New(hwdb.GetDB())

	taskTemplateID, err := uuid.Parse(req.GetTaskTemplateId())
	if err != nil {
		return nil, err
	}

	row, err := templateRepo.CreateSubTask(ctx, task_template_repo.CreateSubTaskParams{
		TaskTemplateID: taskTemplateID,
		Name:           req.GetName(),
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

	// store event
	if err := eventstoredb.SaveEntityEventForAggregate(ctx, s.es, NewTaskTemplateAggregate(taskTemplateID),
		&pbEventsV1.TaskTemplateSubTaskCreatedEvent{
			TaskTemplateId: taskTemplateID.String(),
			SubTaskId:      subtaskID.String(),
			Name:           req.GetName(),
		},
	); err != nil {
		return nil, err
	}

	return &pb.CreateTaskTemplateSubTaskResponse{
		Id:                      subtaskID.String(),
		TaskTemplateConsistency: common.ConsistencyToken(consistency).String(), //nolint:gosec
	}, nil
}

func (ServiceServer) GetAllTaskTemplates(
	ctx context.Context,
	req *pb.GetAllTaskTemplatesRequest,
) (*pb.GetAllTaskTemplatesResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	createdBy, err := hwutil.ParseNullUUID(req.CreatedBy)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := templateRepo.GetAllTaskTemplatesWithSubTasks(ctx,
		task_template_repo.GetAllTaskTemplatesWithSubTasksParams{
			CreatorID:   createdBy,
			PrivateOnly: req.GetPrivateOnly(),
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
				Consistency: common.ConsistencyToken(row.TaskTemplate.Consistency).String(), //nolint:gosec
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

func (ServiceServer) GetTaskTemplate(
	ctx context.Context,
	req *pb.GetTaskTemplateRequest,
) (*pb.GetTaskTemplateResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	taskTemplateID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := templateRepo.GetTaskTemplateWithSubtasksByID(ctx, taskTemplateID)
	if err := hwdb.Error(ctx, err); err != nil {
		return nil, err
	}

	if len(rows) == 0 {
		return nil, status.Error(codes.NotFound, "task template not found")
	}
	taskTemplate := rows[0].TaskTemplate

	taskTemplateSubtasks := hwutil.FlatMap(rows,
		func(row task_template_repo.GetTaskTemplateWithSubtasksByIDRow) **pb.GetTaskTemplateResponse_SubTask {
			if !row.SubTaskID.Valid {
				return nil
			}
			return hwutil.PtrTo(
				&pb.GetTaskTemplateResponse_SubTask{
					Id:             row.SubTaskID.UUID.String(),
					TaskTemplateId: row.TaskTemplate.ID.String(),
					Name:           *row.SubTaskName, // NOT NULL
				})
		})

	return &pb.GetTaskTemplateResponse{
		Id:          taskTemplate.ID.String(),
		Name:        taskTemplate.Name,
		Description: taskTemplate.Description,
		IsPublic:    taskTemplate.WardID.Valid,
		CreatedBy:   taskTemplate.CreatedBy.String(),
		Consistency: common.ConsistencyToken(taskTemplate.Consistency).String(), //nolint:gosec
		Subtasks:    taskTemplateSubtasks,
	}, nil
}
