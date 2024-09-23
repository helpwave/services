package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type DeleteTaskCommandHandler func(ctx context.Context, taskID uuid.UUID) (uint64, error)

func NewDeleteTaskCommandHandler(as hwes.AggregateStore) DeleteTaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID) (uint64, error) {
		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		if err := taskAggregate.DeleteTask(ctx); err != nil {
			return 0, err
		}

		return as.Save(ctx, taskAggregate)
	}
}
