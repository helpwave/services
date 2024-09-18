package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"tasks-svc/internal/perm"
	"tasks-svc/internal/task/aggregate"
)

type UpdateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string) (uint64, error)

func NewUpdateSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UpdateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string) (uint64, error) {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return 0, err
		}
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		user := perm.User(userID)
		task := perm.Task(taskID)

		check := hwauthz.NewPermissionCheck(user, perm.CanUserUpdateSubtaskOnTask, task)
		if err = authz.Must(ctx, check); err != nil {
			return 0, err
		}

		if name != nil {
			if err := a.UpdateSubtaskName(ctx, subtaskID, *name); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
