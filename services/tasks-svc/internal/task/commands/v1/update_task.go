package v1

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UpdateTaskCommandHandler func(ctx context.Context, taskID uuid.UUID, name *string, description *string, status *pb.TaskStatus) error

func NewUpdateTaskCommandHandler(as hwes.AggregateStore) UpdateTaskCommandHandler {
	return func(ctx context.Context, taskID uuid.UUID, name *string, description *string, status *pb.TaskStatus) error {
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if name != nil {
			if err := a.UpdateName(ctx, *name); err != nil {
				return err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return err
			}
		}

		if status != nil {
			if err := a.UpdateStatus(ctx, *status); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
