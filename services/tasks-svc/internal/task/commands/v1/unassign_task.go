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

type UnassignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID) error

func NewUnassignTaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UnassignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID) error {
		requestUserID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}
		task, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}
		authzUser := perm.User(requestUserID)
		authzTask := perm.Task(taskID)

		check := hwauthz.NewPermissionCheck(authzUser, perm.CanUserAssignTask, authzTask)
		if err = authz.Must(ctx, check); err != nil {
			return err
		}

		if err := task.UnassignTask(ctx, userID); err != nil {
			return err
		}

		return as.Save(ctx, task)
	}
}
