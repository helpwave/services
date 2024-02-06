package task_template

import (
	"common"
	"context"
	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwdb"
	"hwgorm"
	"hwutil"
	"task-svc/internal/repositories"
	"task-svc/repos/task_template_repo"

	pb "gen/proto/services/task_svc/v1"
	zlog "github.com/rs/zerolog/log"
	pbhelpers "proto_helpers/task_svc/v1"
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
	tx, err := db.Begin(ctx)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "could not start tx: "+err.Error())
	}
	defer {
		_ = tx.Rollback(ctx)
	}
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

	description := ""
	if req.Description != nil {
		description = *req.Description
	}

	templateID, err := templateRepo.CreateTaskTemplate(ctx, task_template_repo.CreateTaskTemplateParams{
		Name:           req.Name,
		Description:    description,
		OrganizationID: organizationID,
		CreatedBy:      userID,
		WardID:         wardID,
	})
	// This also implicitly checks the wardID because of the foreignKey constraint in the sql
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	if req.Subtasks != nil {
		subtaskNames := hwutil.Map(req.Subtasks, func(subtask *pb.CreateTaskTemplateRequest_SubTask) task_template_repo.AppendSubTasksParams {
			return task_template_repo.AppendSubTasksParams{
				Name:           subtask.Name,
				TaskTemplateID: templateID,
			}
		})

		if _, err := templateRepo.AppendSubTasks(ctx, subtaskNames); err != nil {
			return nil, status.Error(codes.Internal, "could not append subtask"+err.Error())
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

func (ServiceServer) GetAllTaskTemplates(ctx context.Context, _ *pb.GetAllTaskTemplatesRequest) (*pb.GetAllTaskTemplatesResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	rows, err := templateRepo.GetAllTaskTemplatesWithSubTasks(ctx, task_template_repo.GetAllTaskTemplatesWithSubTasksParams{
		OrganizationID: uuid.NullUUID{
			UUID:  organizationID,
			Valid: true,
		},
	})

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}


	templates := make([]*pb.GetAllTaskTemplatesResponse_TaskTemplate, 0)
	templateMap := make(map[uuid.UUID]int)

	for _, row := range rows {
		var template *pb.GetAllTaskTemplatesResponse_TaskTemplate;
		if ix, found := templateMap[row.TaskTemplate.ID]; found {
			template = templates[ix];
		} else {
			template = &pb.GetAllTaskTemplatesResponse_TaskTemplate{
				Id:          row.TaskTemplate.ID.String(),
				Name:        row.TaskTemplate.Name,
				Description: row.TaskTemplate.Description,
				IsPublic: row.TaskTemplate.WardID.Valid,
				CreatedBy:   row.TaskTemplate.CreatedBy.String(),
				Subtasks: make([]*pb.GetAllTaskTemplatesResponse_TaskTemplate_SubTask, 0),
			}
			templates = append(templates, template)
			templateMap[row.TaskTemplate.ID] = len(templates) - 1
		}

		if row.SubTaskName != nil {
			template.Subtasks = append(template.Subtasks, &pb.GetAllTaskTemplatesResponse_TaskTemplate_SubTask{
				Id:             *row.SubTaskName,
				TaskTemplateId: row.TaskTemplate.ID.String(),
				Name:           row.SubTaskID.UUID.String(), // must exist by constraint
			})
		}
	}

	return &pb.GetAllTaskTemplatesResponse{
		Templates: templates,
	}, nil
}

func (ServiceServer) DeleteTaskTemplate(ctx context.Context, req *pb.DeleteTaskTemplateRequest) (*pb.DeleteTaskTemplateResponse, error) {
	log := zlog.Ctx(ctx)
	templateRepo := repositories.TemplateRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := templateRepo.DeleteTaskTemplate(id); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("taskTemplateID", id.String()).
		Msg("taskTemplate deleted")

	return &pb.DeleteTaskTemplateResponse{}, nil
}

func (ServiceServer) DeleteTaskTemplateSubTask(ctx context.Context, req *pb.DeleteTaskTemplateSubTaskRequest) (*pb.DeleteTaskTemplateSubTaskResponse, error) {
	log := zlog.Ctx(ctx)
	templateRepo := repositories.TemplateRepo(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	subtask, err := templateRepo.DeleteTaskTemplateSubTask(id)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
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

	if err := templateRepo.UpdateTaskTemplate(ctx, task_template_repo.UpdateTaskTemplateParams{
		Name:        req.Name,
		Description: req.Description,
		ID:          id,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
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

	if err := templateRepo.UpdateSubtask(ctx, task_template_repo.UpdateSubtaskParams{
		Name: req.Name,
		ID:   id,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
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

	subtaskID, err := templateRepo.CreateSubTask(ctx, task_template_repo.CreateSubTaskParams{
		TaskTemplateID: taskTemplateID,
		Name:           req.Name,
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

func (ServiceServer) GetAllTaskTemplatesByCreator(ctx context.Context, req *pb.GetAllTaskTemplatesByCreatorRequest) (*pb.GetAllTaskTemplatesByCreatorResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	// TODO: Auth

	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	createdBy, err := uuid.Parse(req.CreatedBy)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := templateRepo.GetAllTaskTemplatesWithSubTasks(ctx, task_template_repo.GetAllTaskTemplatesWithSubTasksParams{
		OrganizationID: uuid.NullUUID{
			UUID:  organizationID,
			Valid: true,
		},
		CreatorID:      uuid.NullUUID{
			UUID:  createdBy,
			Valid: true,
		},
	})

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}


	templates := make([]*pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate, 0)
	templateMap := make(map[uuid.UUID]int)

	for _, row := range rows {
		var template *pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate;
		if ix, found := templateMap[row.TaskTemplate.ID]; found {
			template = templates[ix];
		} else {
			template = &pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate{
				Id:          row.TaskTemplate.ID.String(),
				Name:        row.TaskTemplate.Name,
				Description: row.TaskTemplate.Description,
				IsPublic: row.TaskTemplate.WardID.Valid,
				Subtasks: make([]*pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask, 0),
			}
			templates = append(templates, template)
			templateMap[row.TaskTemplate.ID] = len(templates) - 1
		}

		if row.SubTaskName != nil {
			template.Subtasks = append(template.Subtasks, &pb.GetAllTaskTemplatesByCreatorResponse_TaskTemplate_SubTask{
				Id:             *row.SubTaskName,
				TaskTemplateId: row.TaskTemplate.ID.String(),
				Name:           row.SubTaskID.UUID.String(), // must exist by constraint
			})
		}
	}

	return &pb.GetAllTaskTemplatesByCreatorResponse{
		Templates: templates,
	}, nil
}

func (ServiceServer) GetAllTaskTemplatesByWard(ctx context.Context, req *pb.GetAllTaskTemplatesByWardRequest) (*pb.GetAllTaskTemplatesByWardResponse, error) {
	templateRepo := task_template_repo.New(hwdb.GetDB())

	wardId, err := uuid.Parse(req.WardId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := templateRepo.GetAllTaskTemplatesWithSubTasks(ctx, task_template_repo.GetAllTaskTemplatesWithSubTasksParams{
		WardID:         uuid.NullUUID{
			UUID:  wardId,
			Valid: true,
		},
	})

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}


	templates := make([]*pb.GetAllTaskTemplatesByWardResponse_TaskTemplate, 0)
	templateMap := make(map[uuid.UUID]int)

	for _, row := range rows {
		var template *pb.GetAllTaskTemplatesByWardResponse_TaskTemplate;
		if ix, found := templateMap[row.TaskTemplate.ID]; found {
			template = templates[ix];
		} else {
			template = &pb.GetAllTaskTemplatesByWardResponse_TaskTemplate{
				Id:          row.TaskTemplate.ID.String(),
				Name:        row.TaskTemplate.Name,
				Description: row.TaskTemplate.Description,
				IsPublic: row.TaskTemplate.WardID.Valid,
				CreatedBy:   row.TaskTemplate.CreatedBy.String(),
				Subtasks: make([]*pb.GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask, 0),
			}
			templates = append(templates, template)
			templateMap[row.TaskTemplate.ID] = len(templates) - 1
		}

		if row.SubTaskName != nil {
			template.Subtasks = append(template.Subtasks, &pb.GetAllTaskTemplatesByWardResponse_TaskTemplate_SubTask{
				Id:             *row.SubTaskName,
				TaskTemplateId: row.TaskTemplate.ID.String(),
				Name:           row.SubTaskID.UUID.String(), // must exist by constraint
			})
		}
	}

	return &pb.GetAllTaskTemplatesByWardResponse{
		Templates: templates,
	}, nil
}
