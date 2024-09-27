package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
	"tasks-svc/internal/task/models"
)

type AssignTaskConflict struct {
	Consistency uint64
	Was         *models.Task
	Is          *models.Task
}

type AssignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID, expConsistency *uint64) (common.ConsistencyToken, *AssignTaskConflict, error)

func NewAssignTaskCommandHandler(as hwes.AggregateStore) AssignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID, expConsistency *uint64) (common.ConsistencyToken, *AssignTaskConflict, error) {
		task, oldState, err := aggregate.LoadTaskAggregateWithSnapshotAt(ctx, as, taskID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		if expConsistency != nil && *expConsistency != task.GetVersion() {
			return 0, &AssignTaskConflict{
				Consistency: task.GetVersion(),
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
