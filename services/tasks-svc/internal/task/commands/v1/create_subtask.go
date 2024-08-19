package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwauthz/perm"
	"hwes"
	"tasks-svc/internal/task/aggregate"
)

type CreateSubtaskCommandHandler func(ctx context.Context, taskID, subtaskID uuid.UUID, name string) error

func NewCreateSubtaskCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CreateSubtaskCommandHandler {
	return func(ctx context.Context, taskID, subtaskID uuid.UUID, name string) error {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return err
		}
		user := perm.User(userID)
		task := perm.Task(taskID)
		if err := hwauthz.CheckGrpcWrapper(ctx, authz, perm.NewCanUserCreateSubtaskOnTaskPermission(user, task)); err != nil {
			return err
		}

		a, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return err
		}

		if err := a.CreateSubtask(ctx, subtaskID, name); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
