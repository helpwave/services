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
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}

		if err := hwauthz.CheckGrpcWrapper(ctx, authz, perm.NewCanUserAssignTaskPermission(userID, taskID)); err != nil {
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
