package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UpdateTaskCommand struct {
	hwes.BaseCommand
	Name        *string
	Description *string
}

func NewUpdateTaskCommand(taskID uuid.UUID, name, description *string) *UpdateTaskCommand {
	return &UpdateTaskCommand{BaseCommand: hwes.NewBaseCommand(taskID), Name: name, Description: description}
}

type UpdateTaskCommandHandler interface {
	Handle(ctx context.Context, cmd *UpdateTaskCommand) error
}

type updateTaskCommandHandler struct {
	as hwes.AggregateStore
}

func NewUpdateTaskCommandHandler(as hwes.AggregateStore) *updateTaskCommandHandler {
	return &updateTaskCommandHandler{as: as}
}

func (c *updateTaskCommandHandler) Handle(ctx context.Context, command *UpdateTaskCommand) error {
	a, err := aggregate.LoadTaskAggregate(ctx, c.as, command.AggregateID)
	if err != nil {
		return err
	}

	if command.Name != nil {
		if err := a.UpdateName(ctx, a.Task.Name, *command.Name); err != nil {
			return err
		}
	}

	if command.Description != nil {
		if err := a.UpdateDescription(ctx, a.Task.Description, *command.Description); err != nil {
			return err
		}
	}

	return c.as.Save(ctx, a)
}
