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

type UpdateTaskCommandHandler func(ctx context.Context, taskID uuid.UUID, name *string, description *string) error

func NewUpdateTaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UpdateTaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID, name *string, description *string) error {
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
		allowed, err := authz.Check(ctx, check)
		if err != nil {
			return fmt.Errorf("could not check permissions: %w", err)
		}
		if !allowed {
			return hwauthz.StatusErrorPermissionDenied(ctx, check)
		}

		if name != nil {
			if err := a.UpdateName(ctx, *name); err != nil {
				return err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
