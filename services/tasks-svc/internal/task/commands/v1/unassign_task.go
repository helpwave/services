package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UnassignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID) error

func NewUnassignTaskCommandHandler(as hwes.AggregateStore) UnassignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID) error {
		task, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if err := task.UnassignTask(ctx, userID); err != nil {
			return err
		}

		return as.Save(ctx, task)
	}
}
