package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CompleteSubtaskCommandHandler func(ctx context.Context, taskID uuid.UUID, subtaskID uuid.UUID) error

func NewCompleteSubtaskCommandHandler(as hwes.AggregateStore) CompleteSubtaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID, subtaskID uuid.UUID) error {
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if err := a.CompleteSubtask(ctx, subtaskID); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
