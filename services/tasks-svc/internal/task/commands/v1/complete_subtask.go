package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwauthz/perm"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CompleteSubtaskCommandHandler func(ctx context.Context, taskID uuid.UUID, subtaskID uuid.UUID) error

func NewCompleteSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CompleteSubtaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID, subtaskID uuid.UUID) error {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}

		if err := hwauthz.CheckGrpcWrapper(ctx, authz, perm.NewCanUserCompleteSubtaskPermission(userID, taskID)); err != nil {
			return err
		}

		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if err := a.CompleteSubtask(ctx, subtaskID); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
