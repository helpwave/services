package service

import (
	"hwes"
	commandsV1 "tasks-svc/internal/task/commands/v1"
	queriesV1 "tasks-svc/internal/task/queries/v1"
)

type TaskService struct {
	Commands *commandsV1.TaskCommands
	Queries  *queriesV1.TaskQueries
}

func NewTaskService(as hwes.AggregateStore) *TaskService {
	taskCommands := commandsV1.NewTaskCommands(
		commandsV1.NewCreateTaskCommandHandler(as),
		commandsV1.NewUpdateTaskCommandHandler(as),
		commandsV1.NewAssignTaskCommandHandler(as),
		commandsV1.NewCreateSubtaskCommandHandler(as),
		commandsV1.NewUpdateSubtaskCommandHandler(as),
		commandsV1.NewCompleteSubtaskCommandHandler(as),
		commandsV1.NewUncompleteSubtaskCommandHandler(as),
		commandsV1.NewDeleteSubtaskCommandHandler(as),
	)

	taskQueries := queriesV1.NewTaskQueries(
		queriesV1.NewGetTaskByIDQueryHandler(as),
	)

	return &TaskService{Commands: taskCommands, Queries: taskQueries}
}
