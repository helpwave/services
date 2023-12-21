package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UncompleteSubtaskCommand struct {
	hwes.BaseCommand
	SubtaskID uuid.UUID
}

func NewUncompleteSubtaskCommand(id uuid.UUID, subtaskID uuid.UUID) *UncompleteSubtaskCommand {
	return &UncompleteSubtaskCommand{BaseCommand: hwes.NewBaseCommand(id), SubtaskID: subtaskID}
}

type UncompleteSubtaskCommandHandler interface {
	Handle(ctx context.Context, cmd *UncompleteSubtaskCommand) error
}

type uncompleteSubtaskCommandHandler struct {
	as hwes.AggregateStore
}

func NewUncompleteSubtaskCommandHandler(as hwes.AggregateStore) *uncompleteSubtaskCommandHandler {
	return &uncompleteSubtaskCommandHandler{as: as}
}

func (c *uncompleteSubtaskCommandHandler) Handle(ctx context.Context, command *UncompleteSubtaskCommand) error {
	a, err := aggregate.LoadTaskAggregate(ctx, c.as, command.AggregateID)
	if err != nil {
		return err
	}

	if err := a.UncompleteSubtask(ctx, command.SubtaskID); err != nil {
		return err
	}

	return c.as.Save(ctx, a)
}
