package handlers

import (
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

func NewTaskHandlers(as hwes.AggregateStore) *Handlers {
	return &Handlers{
		Commands: &Commands{
			V1: &commandsV1.TaskCommands{
				CreateTask:      commandsV1.NewCreateTaskCommandHandler(as),
				UpdateTask:      commandsV1.NewUpdateTaskCommandHandler(as),
				AssignTask:      commandsV1.NewAssignTaskCommandHandler(as),
				UnnasignTask:    commandsV1.NewUnassignTaskCommandHandler(as),
				CreateSubtask:   commandsV1.NewCreateSubtaskCommandHandler(as),
				UpdateSubtask:   commandsV1.NewUpdateSubtaskCommandHandler(as),
				DeleteSubtask:   commandsV1.NewDeleteSubtaskCommandHandler(as),
				RemoveTaskDueAt: commandsV1.NewRemoveTaskDueAtCommandHandler(as),
				DeleteTask:      commandsV1.NewDeleteTaskCommandHandler(as),
			},
		},
		Queries: &Queries{
			V1: &queriesV1.TaskQueries{
				GetTaskWithPatientByID:         queriesV1.NewGetTaskWithPatientByIDQueryHandler(),
				GetTasksByPatient:              queriesV1.NewGetTasksByPatientIDQueryHandler(),
				GetTasksWithPatientsByAssignee: queriesV1.NewGetTasksWithPatientsByAssigneeQueryHandler(),
			},
		},
	}
}
