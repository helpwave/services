package v1

import (
	"common"
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwes"

	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"

	"tasks-svc/internal/task/aggregate"
)

type UpdateTaskCommandHandler func(
	ctx context.Context,
	taskID uuid.UUID,
	name *string,
	description *string,
	status *pb.TaskStatus,
	public *bool,
	dueAt *timestamppb.Timestamp,
) (common.ConsistencyToken, error)

func NewUpdateTaskCommandHandler(as hwes.AggregateStore) UpdateTaskCommandHandler {
	return func(
		ctx context.Context,
		taskID uuid.UUID,
		name *string,
		description *string,
		status *pb.TaskStatus,
		public *bool,
		dueAt *timestamppb.Timestamp,
	) (common.ConsistencyToken, error) {
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		if name != nil {
			if err := a.UpdateName(ctx, *name); err != nil {
				return 0, err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return 0, err
			}
		}

		if status != nil {
			if err := a.UpdateStatus(ctx, *status); err != nil {
				return 0, err
			}
		}

		if public != nil && a.Task.Public != *public {
			if err := a.UpdateTaskPublic(ctx, *public); err != nil {
				return 0, err
			}
		}

		if dueAt != nil {
			if err := a.UpdateDueAt(ctx, dueAt.AsTime()); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
