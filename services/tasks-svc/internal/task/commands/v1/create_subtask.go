package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwauthz"
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
	as    hwes.AggregateStore
	authz hwauthz.AuthZ
}

func NewCreateSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) *createSubtaskCommandHandler {
	return &createSubtaskCommandHandler{as: as, authz: authz}
}

func (c *createSubtaskCommandHandler) Handle(ctx context.Context, command *CreateSubtaskCommand) error {
	userID, err := common.GetUserID(ctx)
	if err != nil {
		return err
	}

	if err := hwauthz.CheckGrpcWrapper(
		ctx,
		c.authz,
		hwauthz.NewCanUserCreateSubtaskOnTaskPermission(userID, command.AggregateID)); err != nil {
		return err
	}

	a, err := aggregate.LoadTaskAggregate(ctx, c.as, command.AggregateID)
	if err != nil {
		return err
	}

	if err := a.CreateSubtask(ctx, command.SubtaskID, command.Name); err != nil {
		return err
	}

	return c.as.Save(ctx, a)
}
