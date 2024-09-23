package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type RemoveTaskDueAtCommandHandler func(ctx context.Context, taskID uuid.UUID) error

func NewRemoveTaskDueAtCommandHandler(as hwes.AggregateStore) RemoveTaskDueAtCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID) error {
		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if err := taskAggregate.RemoveTaskDueAt(ctx); err != nil {
			return err
		}

		return as.Save(ctx, taskAggregate)
	}
}
