package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type AssignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, *UpdateTaskConflict, error)

func NewAssignTaskCommandHandler(as hwes.AggregateStore) AssignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, *UpdateTaskConflict, error) {
		task, oldState, err := aggregate.LoadTaskAggregateWithSnapshotAt(ctx, as, taskID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		newToken := common.ConsistencyToken(task.GetVersion())
		if expConsistency != nil && *expConsistency != newToken {
			return 0, &UpdateTaskConflict{
				Consistency: newToken,
				Was:         oldState,
				Is:          task.Task,
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
