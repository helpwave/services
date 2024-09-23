package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CreateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name string, done bool) (uint64, error)

func NewCreateSubtaskCommandHandler(as hwes.AggregateStore) CreateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name string, done bool) (uint64, error) {
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		if err := a.CreateSubtask(ctx, subtaskID, name, done); err != nil {
			return 0, err
		}

		return as.Save(ctx, a)
	}
}
