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

type AssignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID) error

func NewAssignTaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) AssignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID) error {
		requestUserID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}
		authzUser := perm.User(requestUserID)
		authzTask := perm.Task(taskID)

		// TODO: We need to check both, target user and request user!. Right now, we are just checking the request user.
		check := hwauthz.NewPermissionCheck(authzUser, perm.CanUserAssignTask, authzTask)
		allowed, err := authz.Check(ctx, check)
		if err != nil {
			return fmt.Errorf("could not check permissions: %w", err)
		}
		if !allowed {
			return hwauthz.StatusErrorPermissionDenied(ctx, check)
		}

		task, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		// TODO: Handle SelfAssignTask when common.GetUserID() is testable
		if err := task.AssignTask(ctx, userID); err != nil {
			return err
		}

		return as.Save(ctx, task)
	}
}
