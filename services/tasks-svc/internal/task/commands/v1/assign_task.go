package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type AssignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID) error

func NewAssignTaskCommandHandler(as hwes.AggregateStore) AssignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID) error {
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
