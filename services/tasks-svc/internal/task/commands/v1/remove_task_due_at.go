package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwauthz/commonperm"
	"hwes"

	"tasks-svc/internal/task/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/task/aggregate"
)

type RemoveTaskDueAtCommandHandler func(ctx context.Context, taskID uuid.UUID) (common.ConsistencyToken, error)

func NewRemoveTaskDueAtCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) RemoveTaskDueAtCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID) (common.ConsistencyToken, error) {
		// check permissions
		user := commonperm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, perm.TaskCanUserUpdate, perm.Task(taskID))
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		if err := taskAggregate.RemoveTaskDueAt(ctx); err != nil {
			return 0, err
		}

		return as.Save(ctx, taskAggregate)
	}
}
