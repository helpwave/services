package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type DeleteSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID) (uint64, error)

func NewDeleteSubtaskCommandHandler(as hwes.AggregateStore) DeleteSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID) (uint64, error) {
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
