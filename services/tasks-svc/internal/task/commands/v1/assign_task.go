package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type AssignTaskCommand struct {
	hwes.BaseCommand
	UserID uuid.UUID
}

func NewAssignTaskCommand(taskID, userID uuid.UUID) *AssignTaskCommand {
	return &AssignTaskCommand{BaseCommand: hwes.NewBaseCommand(taskID), UserID: userID}
}

type AssignTaskCommandHandler interface {
	Handle(ctx context.Context, cmd *AssignTaskCommand) error
}

type assignTaskCommandHandler struct {
	as hwes.AggregateStore
}

func NewAssignTaskCommandHandler(as hwes.AggregateStore) *assignTaskCommandHandler {
	return &assignTaskCommandHandler{as: as}
}

func (c *assignTaskCommandHandler) Handle(ctx context.Context, command *AssignTaskCommand) error {
	task, err := aggregate.LoadTaskAggregate(ctx, c.as, command.AggregateID)
	if err != nil {
		return err
	}

	// TODO: Handle SelfAssignTask when common.GetUserID() is testable
	if err := task.AssignTask(ctx, command.UserID); err != nil {
		return err
	}

	return c.as.Save(ctx, task)
}
