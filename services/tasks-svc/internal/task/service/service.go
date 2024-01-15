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
	taskCommands := &commandsV1.TaskCommands{
		CreateTask:        commandsV1.NewCreateTaskCommandHandler(as),
		UpdateTask:        commandsV1.NewUpdateTaskCommandHandler(as),
		AssignTask:        commandsV1.NewAssignTaskCommandHandler(as),
		UnassignTask:      commandsV1.NewUnassignTaskCommandHandler(as),
		CreateSubtask:     commandsV1.NewCreateSubtaskCommandHandler(as),
		UpdateSubtask:     commandsV1.NewUpdateSubtaskCommandHandler(as),
		CompleteSubtask:   commandsV1.NewCompleteSubtaskCommandHandler(as),
		UncompleteSubtask: commandsV1.NewUncompleteSubtaskCommandHandler(as),
		DeleteSubtask:     commandsV1.NewDeleteSubtaskCommandHandler(as),
	}

	taskQueries := &queriesV1.TaskQueries{
		GetTaskByID: queriesV1.NewGetTaskByIDQueryHandler(as),
	}

	return &TaskService{Commands: taskCommands, Queries: taskQueries}
}
