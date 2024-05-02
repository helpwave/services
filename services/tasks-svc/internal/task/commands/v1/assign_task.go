package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwauthz/perm"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type AssignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID) error

func NewAssignTaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) AssignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID) error {
		requestUserID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}

		// TODO: We need to check both, target user and request user!. Right now, we are just checking the request user.
		if err := hwauthz.CheckGrpcWrapper(ctx, authz, perm.NewCanUserAssignTaskPermission(requestUserID, taskID)); err != nil {
			return err
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
