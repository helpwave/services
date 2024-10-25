package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/task/aggregate"
)

type DeleteTaskCommandHandler func(ctx context.Context, taskID uuid.UUID) (common.ConsistencyToken, error)

func NewDeleteTaskCommandHandler(as hwes.AggregateStore) DeleteTaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID) (common.ConsistencyToken, error) {
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
