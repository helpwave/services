package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/task/aggregate"
)

type UnassignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID) (common.ConsistencyToken, error)

func NewUnassignTaskCommandHandler(as hwes.AggregateStore) UnassignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID) (common.ConsistencyToken, error) {
		task, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		if err := task.UnassignTask(ctx, userID); err != nil {
			return 0, err
		}

		return as.Save(ctx, task)
	}
}
