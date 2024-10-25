package v1

import (
	"common"
	"context"
	"fmt"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/task/aggregate"
	"tasks-svc/internal/task/models"
)

type UpdateSubtaskCommandHandler func(
	ctx context.Context,
	taskID,
	subtaskID uuid.UUID,
	name *string,
	done *bool,
	expConsistency *common.ConsistencyToken,
) (common.ConsistencyToken, *common.Conflict[*models.Task], error)

func NewUpdateSubtaskCommandHandler(as hwes.AggregateStore) UpdateSubtaskCommandHandler {
	return func(
		ctx context.Context,
		taskID,
		subtaskID uuid.UUID,
		name *string,
		done *bool,
		expConsistency *common.ConsistencyToken,
	) (common.ConsistencyToken, *common.Conflict[*models.Task], error) {
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
			return newToken, &common.Conflict[*models.Task]{
				Was: oldState,
				Is:  a.Task,
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
