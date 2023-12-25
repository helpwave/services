package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UpdateSubtaskCommand struct {
	hwes.BaseCommand
	SubtaskID uuid.UUID
	Name      *string
}

func NewUpdateSubtaskCommand(taskID, subtaskID uuid.UUID, name *string) *UpdateSubtaskCommand {
	return &UpdateSubtaskCommand{BaseCommand: hwes.NewBaseCommand(taskID), SubtaskID: subtaskID, Name: name}
}

type UpdateSubtaskCommandHandler interface {
	Handle(ctx context.Context, cmd *UpdateSubtaskCommand) error
}

type updateSubtaskCommandHandler struct {
	as hwes.AggregateStore
}

func NewUpdateSubtaskCommandHandler(as hwes.AggregateStore) *updateSubtaskCommandHandler {
	return &updateSubtaskCommandHandler{as: as}
}

func (c *updateSubtaskCommandHandler) Handle(ctx context.Context, command *UpdateSubtaskCommand) error {
	a, err := aggregate.LoadTaskAggregate(ctx, c.as, command.AggregateID)
	if err != nil {
		return err
	}

	if command.Name != nil {
		if err := a.UpdateSubtaskName(ctx, command.SubtaskID, *command.Name); err != nil {
			return err
		}
	}

	return c.as.Save(ctx, a)
}
