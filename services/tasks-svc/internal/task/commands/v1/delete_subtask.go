package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/task/aggregate"
)

type DeleteSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID) (common.ConsistencyToken, error)

func NewDeleteSubtaskCommandHandler(as hwes.AggregateStore) DeleteSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID) (common.ConsistencyToken, error) {
		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		if err := taskAggregate.DeleteSubtask(ctx, subtaskID); err != nil {
			return 0, err
		}

		return as.Save(ctx, taskAggregate)
	}
}
