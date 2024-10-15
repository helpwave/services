package task_template

import (
	"common"
	"context"
	"hwdb"
	"hwutil"

	"task-svc/repos/task_template_repo"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	pb "gen/services/task_svc/v1"

	zlog "github.com/rs/zerolog/log"
)

type ServiceServer struct {
	pb.UnimplementedTaskTemplateServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (ServiceServer) CreateTaskTemplate(
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

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, err
	}

	wardID, err := hwutil.ParseNullUUID(req.WardId)
	if err != nil {
		return nil, err
	}

	description := req.GetDescription()

	templateID, err := templateRepo.CreateTaskTemplate(ctx, task_template_repo.CreateTaskTemplateParams{
		Name:           req.GetName(),
		Description:    description,
		OrganizationID: organizationID,
		CreatedBy:      userID,
		WardID:         wardID,
	})
	// This also implicitly checks the wardID because of the foreignKey constraint in the sql
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	if req.Subtasks != nil {
		subtaskNames := hwutil.Map(req.Subtasks,
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
		return nil, status.Error(codes.Internal, "could not commit tx"+err.Error())
	}

	log.Info().
		Str("taskTemplateID", templateID.String()).
		Msg("taskTemplate created")

	return &pb.CreateTaskTemplateResponse{
		Id: templateID.String(),
	}, nil
}

func (ServiceServer) GetAllTaskTemplates(
	ctx context.Context,
	_ *pb.GetAllTaskTemplatesRequest,
) (*pb.GetAllTaskTemplatesResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	rows, err := templateRepo.GetAllTaskTemplatesWithSubTasks(ctx,
		task_template_repo.GetAllTaskTemplatesWithSubTasksParams{
			OrganizationID: uuid.NullUUID{
				UUID:  organizationID,
				Valid: true,
			},
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
				CreatedBy:   row.TaskTemplate.CreatedBy.String(),
				Subtasks:    make([]*pb.GetAllTaskTemplatesResponse_TaskTemplate_SubTask, 0),
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

func (ServiceServer) DeleteTaskTemplate(
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

	return &pb.DeleteTaskTemplateResponse{}, nil
}

func (ServiceServer) DeleteTaskTemplateSubTask(
	ctx context.Context,
	req *pb.DeleteTaskTemplateSubTaskRequest,
) (*pb.DeleteTaskTemplateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	templateRepo := task_template_repo.New(hwdb.GetDB())

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

	log.Info().
		Str("taskTemplateSubtaskID", subtask.ID.String()).
		Str("taskTemplateID", subtask.TaskTemplateID.String()).
		Msg("taskTemplateSubtask deleted")

	return &pb.DeleteTaskTemplateSubTaskResponse{}, nil
}

func (ServiceServer) UpdateTaskTemplate(
	ctx context.Context,
	req *pb.UpdateTaskTemplateRequest,
) (*pb.UpdateTaskTemplateResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.GetId())
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

func (ServiceServer) UpdateTaskTemplateSubTask(
	ctx context.Context,
	req *pb.UpdateTaskTemplateSubTaskRequest,
) (*pb.UpdateTaskTemplateSubTaskResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	id, err := uuid.Parse(req.GetSubtaskId())
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

func (ServiceServer) CreateTaskTemplateSubTask(
	ctx context.Context,
	req *pb.CreateTaskTemplateSubTaskRequest,
) (*pb.CreateTaskTemplateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	templateRepo := task_template_repo.New(hwdb.GetDB())

	taskTemplateID, err := uuid.Parse(req.GetTaskTemplateId())
	if err != nil {
		return nil, err
	}

	subtaskID, err := templateRepo.CreateSubTask(ctx, task_template_repo.CreateSubTaskParams{
		TaskTemplateID: taskTemplateID,
		Name:           req.GetName(),
	})
	// implicitly checks the existence of the ward through the foreign key constraint
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskTemplateID", taskTemplateID.String()).
		Str("taskTemplateSubTaskID", subtaskID.String()).
		Msg("subtaskID created")

	return &pb.CreateTaskTemplateSubTaskResponse{
		Id: subtaskID.String(),
	}, nil
}

func (ServiceServer) GetAllTaskTemplatesByCreator(
	ctx context.Context,
	req *pb.GetAllTaskTemplatesByCreatorRequest,
) (*pb.GetAllTaskTemplatesByCreatorResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	createdBy, err := uuid.Parse(req.GetCreatedBy())
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	rows, err := templateRepo.GetAllTaskTemplatesWithSubTasks(ctx,
		task_template_repo.GetAllTaskTemplatesWithSubTasksParams{
			OrganizationID: uuid.NullUUID{
				UUID:  organizationID,
				Valid: true,
			},
			CreatorID: uuid.NullUUID{
				UUID:  createdBy,
				Valid: true,
			},
			PrivateOnly: req.GetPrivateOnly(),
		})

	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	templates := make([]*pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate, 0)
	templateMap := make(map[uuid.UUID]int)

	for _, row := range rows {
		var template *pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate
		if ix, found := templateMap[row.TaskTemplate.ID]; found {
			template = templates[ix]
		} else {
			template = &pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate{
				Id:          row.TaskTemplate.ID.String(),
				Name:        row.TaskTemplate.Name,
				Description: row.TaskTemplate.Description,
				IsPublic:    row.TaskTemplate.WardID.Valid,
				Subtasks:    make([]*pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask, 0),
			}
			templates = append(templates, template)
			templateMap[row.TaskTemplate.ID] = len(templates) - 1
		}

		if row.SubTaskName != nil {
			template.Subtasks = append(template.Subtasks,
				&pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask{
					Name:           *row.SubTaskName,
					TaskTemplateId: row.TaskTemplate.ID.String(),
					Id:             row.SubTaskID.UUID.String(), // must exist by constraint
				})
		}
	}

	return &pb.GetAllTaskTemplatesByCreatorResponse{
		Templates: templates,
	}, nil
}

func (ServiceServer) GetAllTaskTemplatesByWard(
	ctx context.Context,
	req *pb.GetAllTaskTemplatesByWardRequest,
) (*pb.GetAllTaskTemplatesByWardResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	wardID, err := uuid.Parse(req.GetWardId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := templateRepo.GetAllTaskTemplatesWithSubTasks(ctx,
		task_template_repo.GetAllTaskTemplatesWithSubTasksParams{
			WardID: uuid.NullUUID{
				UUID:  wardID,
				Valid: true,
			},
		})

	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	templates := make([]*pb.GetAllTaskTemplatesByWardResponse_TaskTemplate, 0)
	templateMap := make(map[uuid.UUID]int)

	for _, row := range rows {
		var template *pb.GetAllTaskTemplatesByWardResponse_TaskTemplate
		if ix, found := templateMap[row.TaskTemplate.ID]; found {
			template = templates[ix]
		} else {
			template = &pb.GetAllTaskTemplatesByWardResponse_TaskTemplate{
				Id:          row.TaskTemplate.ID.String(),
				Name:        row.TaskTemplate.Name,
				Description: row.TaskTemplate.Description,
				IsPublic:    row.TaskTemplate.WardID.Valid,
				CreatedBy:   row.TaskTemplate.CreatedBy.String(),
				Subtasks:    make([]*pb.GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask, 0),
			}
			templates = append(templates, template)
			templateMap[row.TaskTemplate.ID] = len(templates) - 1
		}

		if row.SubTaskName != nil {
			template.Subtasks = append(template.Subtasks, &pb.GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask{
				Name:           *row.SubTaskName,
				TaskTemplateId: row.TaskTemplate.ID.String(),
				Id:             row.SubTaskID.UUID.String(), // must exist by constraint
			})
		}
	}

	return &pb.GetAllTaskTemplatesByWardResponse{
		Templates: templates,
	}, nil
}
