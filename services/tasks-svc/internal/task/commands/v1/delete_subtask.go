package v1

import (
	"common"
	"context"
	"fmt"
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
		allowed, err := authz.Check(ctx, check)
		if err != nil {
			return fmt.Errorf("could not check permissions: %w", err)
		}
		if !allowed {
			return hwauthz.StatusErrorPermissionDenied(ctx, check)
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
