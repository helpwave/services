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

type CreateSubtaskCommandHandler func(
	ctx context.Context,
	taskID,
	subtaskID uuid.UUID,
	name string,
	done bool,
) (common.ConsistencyToken, error)

func NewCreateSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CreateSubtaskCommandHandler {
	return func(
		ctx context.Context,
		taskID,
		subtaskID uuid.UUID,
		name string,
		done bool,
	) (common.ConsistencyToken, error) {
		// check permissions
		user := commonperm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, perm.TaskCanUserCreateSubtask, perm.Task(taskID))
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		if err := a.CreateSubtask(ctx, subtaskID, name, done); err != nil {
			return 0, err
		}

		return as.Save(ctx, a)
	}
}
