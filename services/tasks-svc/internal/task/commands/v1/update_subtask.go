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

type UpdateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string) error

func NewUpdateSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UpdateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string) error {
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

		check := hwauthz.NewPermissionCheck(user, perm.CanUserUpdateSubtaskOnTask, task)
		allowed, err := authz.Check(ctx, check)
		if err != nil {
			return fmt.Errorf("could not check permissions: %w", err)
		}
		if !allowed {
			return hwauthz.StatusErrorPermissionDenied(ctx, check)
		}

		if name != nil {
			if err := a.UpdateSubtaskName(ctx, subtaskID, *name); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
