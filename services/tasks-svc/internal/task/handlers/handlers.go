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
				CreateTask:      commandsV1.NewCreateTaskCommandHandler(as, authz),
				UpdateTask:      commandsV1.NewUpdateTaskCommandHandler(as, authz),
				AssignTask:      commandsV1.NewAssignTaskCommandHandler(as, authz),
				UnnasignTask:    commandsV1.NewUnassignTaskCommandHandler(as, authz),
				CreateSubtask:   commandsV1.NewCreateSubtaskCommandHandler(as, authz),
				UpdateSubtask:   commandsV1.NewUpdateSubtaskCommandHandler(as, authz),
				DeleteSubtask:   commandsV1.NewDeleteSubtaskCommandHandler(as, authz),
				RemoveTaskDueAt: commandsV1.NewRemoveTaskDueAtCommandHandler(as, authz),
				DeleteTask:      commandsV1.NewDeleteTaskCommandHandler(as, authz),
			},
		},
		Queries: &Queries{
			V1: &queriesV1.TaskQueries{
				GetTaskWithPatientByID:         queriesV1.NewGetTaskWithPatientByIDQueryHandler(authz),
				GetTasksByPatient:              queriesV1.NewGetTasksByPatientIDQueryHandler(authz),
				GetTasksWithPatientsByAssignee: queriesV1.NewGetTasksWithPatientsByAssigneeQueryHandler(authz),
			},
		},
	}
}
