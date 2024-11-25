package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"

	"tasks-svc/internal/task/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/task/aggregate"
)

type DeleteTaskCommandHandler func(ctx context.Context, taskID uuid.UUID) (common.ConsistencyToken, error)

func NewDeleteTaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) DeleteTaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID) (common.ConsistencyToken, error) {
		// check permissions
		user := commonPerm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, perm.TaskCanUserDelete, perm.Task(taskID))
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		if err := taskAggregate.DeleteTask(ctx); err != nil {
			return 0, err
		}

		return as.Save(ctx, taskAggregate)
	}
}
