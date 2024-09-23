package v1

import (
	"context"
	"fmt"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UpdateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string, done *bool) (uint64, error)

func NewUpdateSubtaskCommandHandler(as hwes.AggregateStore) UpdateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string, done *bool) (uint64, error) {
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		currentSubtask, found := a.Task.Subtasks[subtaskID]
		if !found {
			return 0, fmt.Errorf("subtask with ID: %s not found on Task with ID: %s", subtaskID, taskID)
		}

		if name != nil && *name != currentSubtask.Name {
			if err := a.UpdateSubtaskName(ctx, subtaskID, *name); err != nil {
				return 0, err
			}
		}

		if done != nil && *done != currentSubtask.Done {
			if err := a.UpdateSubtaskDone(ctx, subtaskID, *done); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
