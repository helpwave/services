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

type UncompleteSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID) error

func NewUncompleteSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UncompleteSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID) error {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		user := perm.User(userID)
		task := perm.Task(taskID)

		check := hwauthz.NewPermissionCheck(user, perm.CanUserUpdateTask, task)
		if err = authz.Must(ctx, check); err != nil {
			return err
		}

		if err := a.UncompleteSubtask(ctx, subtaskID); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
