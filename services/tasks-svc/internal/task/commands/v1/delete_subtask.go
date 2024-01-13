package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type DeleteSubtaskCommand struct {
	hwes.CommandBase
	SubtaskID uuid.UUID
}

func NewDeleteSubtaskCommand(taskID, subtaskID uuid.UUID) *DeleteSubtaskCommand {
	return &DeleteSubtaskCommand{CommandBase: hwes.NewCommandBase(taskID), SubtaskID: subtaskID}
}

type DeleteSubtaskCommandHandler interface {
	Handle(ctx context.Context, cmd *DeleteSubtaskCommand) error
}

type deleteSubtaskCommandHandler struct {
	as hwes.AggregateStore
}

func NewDeleteSubtaskCommandHandler(as hwes.AggregateStore) *deleteSubtaskCommandHandler {
	return &deleteSubtaskCommandHandler{as: as}
}

func (c *deleteSubtaskCommandHandler) Handle(ctx context.Context, command *DeleteSubtaskCommand) error {
	taskAggregate, err := aggregate.LoadTaskAggregate(ctx, c.as, command.GetAggregateID())
	if err != nil {
		return err
	}

	if err := taskAggregate.DeleteSubtask(ctx, command.SubtaskID); err != nil {
		return err
	}

	return c.as.Save(ctx, taskAggregate)
}
