package v1

import (
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwauthz/perm"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type DeleteSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID) error

func NewDeleteSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) DeleteSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID) error {
		// TODO: Use context
		userID := uuid.MustParse("18159713-5d4e-4ad5-94ad-fbb6bb147984")
		if err := hwauthz.CheckGrpcWrapper(ctx, authz, perm.NewCanUserDeleteSubtaskOnTaskPermission(userID, taskID)); err != nil {
			return err
		}

		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if err := taskAggregate.DeleteSubtask(ctx, subtaskID); err != nil {
			return err
		}

		return as.Save(ctx, taskAggregate)
	}
}
