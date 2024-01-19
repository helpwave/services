package v1

import (
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CreateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name string) error

func NewCreateSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CreateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name string) error {
		userID := uuid.New()
		if err := hwauthz.CheckGrpcWrapper(ctx, authz, hwauthz.NewCanUserCreateSubtaskOnTaskPermission(userID, taskID)); err != nil {
			return err
		}

		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if err := a.CreateSubtask(ctx, subtaskID, name); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
