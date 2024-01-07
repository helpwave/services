package service

import (
	"hwauthz"
	"hwes"
	commandsV1 "tasks-svc/internal/task/commands/v1"
	queriesV1 "tasks-svc/internal/task/queries/v1"
)

type TaskService struct {
	Commands *commandsV1.TaskCommands
	Queries  *queriesV1.TaskQueries
}

func NewTaskService(as hwes.AggregateStore, authz hwauthz.AuthZ) *TaskService {
	taskCommands := commandsV1.NewTaskCommands(
		commandsV1.NewCreateTaskCommandHandler(as),
		commandsV1.NewUpdateTaskCommandHandler(as, authz),
		commandsV1.NewAssignTaskCommandHandler(as),
		commandsV1.NewCreateSubtaskCommandHandler(as, authz),
		commandsV1.NewUpdateSubtaskCommandHandler(as, authz),
		commandsV1.NewCompleteSubtaskCommandHandler(as),
		commandsV1.NewUncompleteSubtaskCommandHandler(as),
		commandsV1.NewDeleteSubtaskCommandHandler(as, authz),
	)

	taskQueries := queriesV1.NewTaskQueries(
		queriesV1.NewGetTaskByIDQueryHandler(as, authz),
	)

	return &TaskService{Commands: taskCommands, Queries: taskQueries}
}
