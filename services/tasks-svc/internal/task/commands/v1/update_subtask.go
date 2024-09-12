package v1

import (
	"context"
	"fmt"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type UpdateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string, done *bool) error

func NewUpdateSubtaskCommandHandler(as hwes.AggregateStore) UpdateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string, done *bool) error {
		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		currentSubtask, found := a.Task.Subtasks[subtaskID]
		if !found {
			return fmt.Errorf("Subtask with ID: %s not found on Task with ID: %s", subtaskID, taskID)
		}

		if name != nil && *name != currentSubtask.Name {
			if err := a.UpdateSubtaskName(ctx, subtaskID, *name); err != nil {
				return err
			}
		}

		if done != nil && *done != currentSubtask.Done {
			if err := a.UpdateSubtaskDone(ctx, subtaskID, *done); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
