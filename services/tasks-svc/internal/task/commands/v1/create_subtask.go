package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CreateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name string) error

func NewCreateSubtaskCommandHandler(as hwes.AggregateStore) CreateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name string) error {
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if err := a.CreateSubtask(ctx, subtaskID, name); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
