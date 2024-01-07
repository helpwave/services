package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type DeleteSubtaskCommand struct {
	hwes.BaseCommand
	SubtaskID uuid.UUID
}

func NewDeleteSubtaskCommand(taskID, subtaskID uuid.UUID) *DeleteSubtaskCommand {
	return &DeleteSubtaskCommand{BaseCommand: hwes.NewBaseCommand(taskID), SubtaskID: subtaskID}
}

type DeleteSubtaskCommandHandler interface {
	Handle(ctx context.Context, cmd *DeleteSubtaskCommand) error
}

type deleteSubtaskCommandHandler struct {
	as    hwes.AggregateStore
	authz hwauthz.AuthZ
}

func NewDeleteSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) *deleteSubtaskCommandHandler {
	return &deleteSubtaskCommandHandler{as: as, authz: authz}
}

func (c *deleteSubtaskCommandHandler) Handle(ctx context.Context, command *DeleteSubtaskCommand) error {
	userID, err := common.GetUserID(ctx)
	if err != nil {
		return err
	}

	if err := hwauthz.CheckGrpcWrapper(
		ctx,
		c.authz,
		hwauthz.NewCanUserDeleteSubtaskOnTaskPermission(userID, command.AggregateID)); err != nil {
		return err
	}

	taskAggregate, err := aggregate.LoadTaskAggregate(ctx, c.as, command.AggregateID)
	if err != nil {
		return err
	}

	if err := taskAggregate.DeleteSubtask(ctx, command.SubtaskID); err != nil {
		return err
	}

	return c.as.Save(ctx, taskAggregate)
}
