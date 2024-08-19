package handlers

import (
	"hwauthz"
	"hwes"
	commandsV1 "tasks-svc/internal/task/commands/v1"
	queriesV1 "tasks-svc/internal/task/queries/v1"
)

type Commands struct {
	V1 *commandsV1.TaskCommands
}

type Queries struct {
	V1 *queriesV1.TaskQueries
}

type Handlers struct {
	Commands *Commands
	Queries  *Queries
}

func NewTaskHandlers(as hwes.AggregateStore, authz hwauthz.AuthZ) *Handlers {
	return &Handlers{
		Commands: &Commands{
			V1: &commandsV1.TaskCommands{
				CreateTask:        commandsV1.NewCreateTaskCommandHandler(as),
				UpdateTask:        commandsV1.NewUpdateTaskCommandHandler(as, authz),
				AssignTask:        commandsV1.NewAssignTaskCommandHandler(as, authz),
				UnnasignTask:      commandsV1.NewUnassignTaskCommandHandler(as, authz),
				CreateSubtask:     commandsV1.NewCreateSubtaskCommandHandler(as, authz),
				UpdateSubtask:     commandsV1.NewUpdateSubtaskCommandHandler(as, authz),
				CompleteSubtask:   commandsV1.NewCompleteSubtaskCommandHandler(as, authz),
				UncompleteSubtask: commandsV1.NewUncompleteSubtaskCommandHandler(as, authz),
				DeleteSubtask:     commandsV1.NewDeleteSubtaskCommandHandler(as, authz),
			},
		},
		Queries: &Queries{
			V1: &queriesV1.TaskQueries{
				GetTaskByID: queriesV1.NewGetTaskByIDQueryHandler(as, authz),
			},
		},
	}
}
