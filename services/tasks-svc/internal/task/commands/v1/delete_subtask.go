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

type DeleteSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID) error

func NewDeleteSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) DeleteSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID) error {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}

		user := perm.User(userID)
		task := perm.Task(taskID)

		check := hwauthz.NewPermissionCheck(user, perm.CanUserDeleteSubtaskOnTask, task)
		if err = authz.Must(ctx, check); err != nil {
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
