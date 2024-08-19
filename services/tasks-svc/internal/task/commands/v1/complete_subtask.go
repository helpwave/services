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

type CompleteSubtaskCommandHandler func(ctx context.Context, taskID uuid.UUID, subtaskID uuid.UUID) error

func NewCompleteSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CompleteSubtaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID, subtaskID uuid.UUID) error {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}

		user := perm.User(userID)
		task := perm.Task(taskID)

		check := hwauthz.NewPermissionCheck(user, perm.CanUserCompleteSubtask, task)
		allowed, err := authz.Check(ctx, check)
		if err != nil {
			return fmt.Errorf("could not check permission: %w", err)
		}
		if !allowed {
			return hwauthz.StatusErrorPermissionDenied(ctx, check)
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
