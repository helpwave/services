package v1

import (
	"common"
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwes"

	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"

	"tasks-svc/internal/task/aggregate"
	"tasks-svc/internal/task/models"
)

type UpdateTaskCommandHandler func(
	ctx context.Context,
	taskID uuid.UUID,
	name *string,
	description *string,
	status *pb.TaskStatus,
	public *bool,
	dueAt *timestamppb.Timestamp,
	expConsistency *common.ConsistencyToken,
) (common.ConsistencyToken, *common.Conflict[*models.Task], error)

func NewUpdateTaskCommandHandler(as hwes.AggregateStore) UpdateTaskCommandHandler {
	return func(
		ctx context.Context,
		taskID uuid.UUID,
		name *string,
		description *string,
		status *pb.TaskStatus,
		public *bool,
		dueAt *timestamppb.Timestamp,
		expConsistency *common.ConsistencyToken,
	) (common.ConsistencyToken, *common.Conflict[*models.Task], error) {
		a, oldState, err := aggregate.LoadTaskAggregateWithSnapshotAt(ctx, as, taskID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		newToken := common.ConsistencyToken(a.GetVersion())
		if expConsistency != nil && *expConsistency != newToken {
			return newToken, &common.Conflict[*models.Task]{
				Was: oldState,
				Is:  a.Task,
			}, nil
		}

		if name != nil {
			if err := a.UpdateName(ctx, *name); err != nil {
				return 0, nil, err
			}
		}

		if description != nil {
			if err := a.UpdateDescription(ctx, *description); err != nil {
				return 0, nil, err
			}
		}

		if status != nil {
			if err := a.UpdateStatus(ctx, *status); err != nil {
				return 0, nil, err
			}
		}

		if public != nil && a.Task.Public != *public {
			if err := a.UpdateTaskPublic(ctx, *public); err != nil {
				return 0, nil, err
			}
		}

		if dueAt != nil {
			if err := a.UpdateDueAt(ctx, dueAt.AsTime()); err != nil {
				return 0, nil, err
			}
		}

		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
