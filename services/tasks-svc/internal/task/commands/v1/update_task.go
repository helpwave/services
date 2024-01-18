package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UpdateTaskCommandHandler func(ctx context.Context, taskID uuid.UUID, name *string, description *string) error

func NewUpdateTaskCommandHandler(as hwes.AggregateStore) UpdateTaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID, name *string, description *string) error {
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if name != nil {
			if err := a.UpdateName(ctx, a.Task.Name, *name); err != nil {
				return err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, a.Task.Description, *description); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
