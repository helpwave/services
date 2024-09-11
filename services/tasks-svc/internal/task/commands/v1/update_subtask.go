package v1

import (
	"common"
	"context"
	"fmt"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"tasks-svc/internal/perm"
	"tasks-svc/internal/task/aggregate"
)

type UpdateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string, done *bool) error

func NewUpdateSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UpdateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name *string, done *bool) error {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}

		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		currentSubtask, found := a.Task.Subtasks[subtaskID]
		if !found {
			return fmt.Errorf("Subtask with ID: %s not found on Task with ID: %s", subtaskID, taskID)
		}

		user := perm.User(userID)
		task := perm.Task(taskID)

		check := hwauthz.NewPermissionCheck(user, perm.CanUserUpdateSubtaskOnTask, task)
		if err = authz.Must(ctx, check); err != nil {
			return err
		}

		if name != nil {
			if err := a.UpdateSubtaskName(ctx, subtaskID, *name); err != nil {
				return err
			}
		}

		if done != nil && currentSubtask.Done != *done {
			if err := a.UpdateSubtaskDone(ctx, subtaskID, *done); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
