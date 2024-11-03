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

type UnassignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID) (common.ConsistencyToken, error)

func NewUnassignTaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UnassignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID) (common.ConsistencyToken, error) {
		// check permissions
		user := commonPerm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, perm.TaskCanUserUpdate, perm.Task(taskID))
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		task, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		if err := task.UnassignTask(ctx, userID); err != nil {
			return 0, err
		}

		return as.Save(ctx, task)
	}
}
