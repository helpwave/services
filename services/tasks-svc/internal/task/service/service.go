package service

import (
	"hwes"
	v1commands "tasks-svc/internal/task/commands/v1"
	v1queries "tasks-svc/internal/task/queries/v1"
)

type TaskService struct {
	Commands *v1commands.TaskCommands
	Queries  *v1queries.TaskQueries
}

func NewTaskService(as hwes.AggregateStore) *TaskService {
	taskCommands := v1commands.NewTaskCommands(
		v1commands.NewCreateTaskCommandHandler(as),
		v1commands.NewAssignTaskCommandHandler(as),
	)

	taskQueries := v1queries.NewTaskQueries(
		v1queries.NewGetTaskByIDQueryHandler(as),
	)

	return &TaskService{Commands: taskCommands, Queries: taskQueries}
}
