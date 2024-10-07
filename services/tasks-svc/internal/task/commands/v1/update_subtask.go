package v1

import (
	"common"
	"context"
	"fmt"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UpdateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string, done *bool, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, *UpdateTaskConflict, error)

func NewUpdateSubtaskCommandHandler(as hwes.AggregateStore) UpdateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string, done *bool, expConsistency *common.ConsistencyToken) (common.ConsistencyToken, *UpdateTaskConflict, error) {
		a, oldState, err := aggregate.LoadTaskAggregateWithSnapshotAt(ctx, as, taskID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		currentSubtask, found := a.Task.Subtasks[subtaskID]
		if !found {
			return 0, nil, fmt.Errorf("subtask with ID: %s not found on Task with ID: %s", subtaskID, taskID)
		}

		newToken := common.ConsistencyToken(a.GetVersion())
		if expConsistency != nil && *expConsistency != newToken {
			return 0, &UpdateTaskConflict{
				Consistency: newToken,
				Was:         oldState,
				Is:          a.Task,
			}, err
		}

		if name != nil && *name != currentSubtask.Name {
			if err := a.UpdateSubtaskName(ctx, subtaskID, *name); err != nil {
				return 0, nil, err
			}
		}

		if done != nil && *done != currentSubtask.Done {
			if err := a.UpdateSubtaskDone(ctx, subtaskID, *done); err != nil {
				return 0, nil, err
			}
		}

		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
