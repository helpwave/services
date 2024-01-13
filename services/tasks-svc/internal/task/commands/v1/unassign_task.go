package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UnassignTaskCommand struct {
	hwes.CommandBase
	UserID uuid.UUID
}

func NewUnassignTaskCommand(taskID, userID uuid.UUID) *UnassignTaskCommand {
	return &UnassignTaskCommand{CommandBase: hwes.NewCommandBase(taskID), UserID: userID}
}

type UnassignTaskCommandHandler interface {
	Handle(ctx context.Context, cmd *UnassignTaskCommand) error
}

type unassignTaskCommandHandler struct {
	as hwes.AggregateStore
}

func NewUnassignTaskCommandHandler(as hwes.AggregateStore) *unassignTaskCommandHandler {
	return &unassignTaskCommandHandler{as: as}
}

func (c *unassignTaskCommandHandler) Handle(ctx context.Context, command *UnassignTaskCommand) error {
	task, err := aggregate.LoadTaskAggregate(ctx, c.as, command.GetAggregateID())
	if err != nil {
		return err
	}

	if err := task.UnassignTask(ctx, command.UserID); err != nil {
		return err
	}

	return c.as.Save(ctx, task)
}
