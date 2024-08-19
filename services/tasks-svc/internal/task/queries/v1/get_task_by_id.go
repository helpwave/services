package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwauthz/perm"
	"hwes"
	"tasks-svc/internal/task/aggregate"
	"tasks-svc/internal/task/models"
)

type GetTaskByIDQueryHandler func(ctx context.Context, taskID uuid.UUID) (*models.Task, error)

func NewGetTaskByIDQueryHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) GetTaskByIDQueryHandler {
	return func(ctx context.Context, taskID uuid.UUID) (*models.Task, error) {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return nil, err
		}
		user := perm.User(userID)
		task := perm.Task(taskID)
		if err := hwauthz.CheckGrpcWrapper(ctx, authz, perm.NewCanUserViewTaskPermission(user, task)); err != nil {
			return nil, err
		}

		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return nil, err
		}
		return taskAggregate.Task, err
	}
}
