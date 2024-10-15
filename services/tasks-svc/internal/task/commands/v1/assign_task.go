package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
	"tasks-svc/internal/task/models"
)

type AssignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, *common.Conflict[*models.Task], error)

func NewAssignTaskCommandHandler(as hwes.AggregateStore) AssignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, *common.Conflict[*models.Task], error) {
		task, oldState, err := aggregate.LoadTaskAggregateWithSnapshotAt(ctx, as, taskID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		newToken := common.ConsistencyToken(task.GetVersion())
		if expConsistency != nil && *expConsistency != newToken {
			return newToken, &common.Conflict[*models.Task]{
				Was: oldState,
				Is:  task.Task,
			}, nil
		}

		// TODO: Handle SelfAssignTask when common.GetUserID() is testable
		if err := task.AssignTask(ctx, userID); err != nil {
			return 0, nil, err
		}

		consistency, err := as.Save(ctx, task)
		return consistency, nil, err
	}
}
