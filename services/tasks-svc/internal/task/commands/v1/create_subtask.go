package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CreateSubtaskCommand struct {
	hwes.BaseCommand
	SubtaskID uuid.UUID
	Name      string
}

func NewCreateSubtaskCommand(id uuid.UUID, subtaskID uuid.UUID, name string) *CreateSubtaskCommand {
	return &CreateSubtaskCommand{BaseCommand: hwes.NewBaseCommand(id), SubtaskID: subtaskID, Name: name}
}

type CreateSubtaskCommandHandler interface {
	Handle(ctx context.Context, cmd *CreateSubtaskCommand) error
}

type createSubtaskCommandHandler struct {
	as hwes.AggregateStore
}

func NewCreateSubtaskCommandHandler(as hwes.AggregateStore) *createSubtaskCommandHandler {
	return &createSubtaskCommandHandler{as: as}
}

func (c *createSubtaskCommandHandler) Handle(ctx context.Context, command *CreateSubtaskCommand) error {
	a, err := aggregate.LoadTaskAggregate(ctx, c.as, command.AggregateID)
	if err != nil {
		return err
	}

	if err := a.CreateSubtask(ctx, command.SubtaskID, command.Name); err != nil {
		return err
	}

	return c.as.Save(ctx, a)
}
