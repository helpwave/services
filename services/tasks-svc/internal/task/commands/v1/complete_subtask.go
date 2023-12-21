package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CompleteSubtaskCommand struct {
	hwes.BaseCommand
	SubtaskID uuid.UUID
}

func NewCompleteSubtaskCommand(id uuid.UUID, subtaskID uuid.UUID) *CompleteSubtaskCommand {
	return &CompleteSubtaskCommand{BaseCommand: hwes.NewBaseCommand(id), SubtaskID: subtaskID}
}

type CompleteSubtaskCommandHandler interface {
	Handle(ctx context.Context, cmd *CompleteSubtaskCommand) error
}

type completeSubtaskCommandHandler struct {
	as hwes.AggregateStore
}

func NewCompleteSubtaskCommandHandler(as hwes.AggregateStore) *completeSubtaskCommandHandler {
	return &completeSubtaskCommandHandler{as: as}
}

func (c *completeSubtaskCommandHandler) Handle(ctx context.Context, command *CompleteSubtaskCommand) error {
	a, err := aggregate.LoadTaskAggregate(ctx, c.as, command.AggregateID)
	if err != nil {
		return err
	}

	if err := a.CompleteSubtask(ctx, command.SubtaskID); err != nil {
		return err
	}

	return c.as.Save(ctx, a)
}
