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

type CreateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name string) error

func NewCreateSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CreateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name string) error {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}
		user := perm.User(userID)
		task := perm.Task(taskID)

		check := hwauthz.NewPermissionCheck(user, perm.CanUserCreateSubtaskOnTask, task)
		allowed, err := authz.Check(ctx, check)
		if err != nil {
			return fmt.Errorf("could not check permissions: %w", err)
		}
		if !allowed {
			return hwauthz.StatusErrorPermissionDenied(ctx, check)
		}

		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if err := a.CreateSubtask(ctx, subtaskID, name); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
