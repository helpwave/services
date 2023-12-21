package v1

import (
	"context"
	"errors"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CreateTaskCommand struct {
	hwes.BaseCommand
	Name string
}

func NewCreateTaskCommand(id uuid.UUID, name string) *CreateTaskCommand {
	return &CreateTaskCommand{BaseCommand: hwes.NewBaseCommand(id), Name: name}
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
	a := aggregate.NewTaskAggregate(command.AggregateID)

	exists, err := c.as.Exists(ctx, a)
	if err != nil {
		return err
	}

	if exists {
		return errors.New("cannot create an already existing aggregate")
	}

	if err := a.CreateTask(ctx, command.Name); err != nil {
		return err
	}

	return c.as.Save(ctx, a)
}
