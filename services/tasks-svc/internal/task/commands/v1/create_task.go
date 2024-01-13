package v1

import (
	"context"
	"errors"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CreateTaskCommand struct {
	hwes.CommandBase
	Name        string
	Description *string
	PatientID   uuid.UUID
	Public      *bool
	Status      *pb.TaskStatus
}

func NewCreateTaskCommand(id uuid.UUID, name string, description *string, patientID uuid.UUID, public *bool, status *pb.TaskStatus) *CreateTaskCommand {
	return &CreateTaskCommand{
		CommandBase: hwes.NewCommandBase(id),
		Name:        name,
		Description: description,
		PatientID:   patientID,
		Public:      public,
		Status:      status,
	}
}

type CreateTaskCommandHandler interface {
	Handle(ctx context.Context, cmd *CreateTaskCommand) error
}

type createTaskCommandHandler struct {
	as hwes.AggregateStore
}

func NewCreateTaskCommandHandler(as hwes.AggregateStore) *createTaskCommandHandler {
	return &createTaskCommandHandler{as: as}
}

func (c *createTaskCommandHandler) Handle(ctx context.Context, command *CreateTaskCommand) error {
	a := aggregate.NewTaskAggregate(command.GetAggregateID())

	exists, err := c.as.Exists(ctx, a)
	if err != nil {
		return err
	}

	if exists {
		return errors.New("cannot create an already existing aggregate")
	}

	status := pb.TaskStatus_TASK_STATUS_TODO
	if command.Status != nil {
		status = *command.Status
	}

	if err := a.CreateTask(ctx, command.Name, command.PatientID, status); err != nil {
		return err
	}

	if command.Description != nil {
		if err := a.UpdateDescription(ctx, a.Task.Description, *command.Description); err != nil {
			return err
		}
	}

	if command.Public != nil && *command.Public {
		if err := a.PublishTask(ctx); err != nil {
			return err
		}
	}

	return c.as.Save(ctx, a)
}
