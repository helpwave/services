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

		check := hwauthz.NewPermissionCheck(user, perm.CanUserViewTask, task)
		allowed, err := authz.Check(ctx, check)
		if err != nil {
			return nil, fmt.Errorf("could not check permission: %w", err)
		}
		if !allowed {
			return nil, hwauthz.StatusErrorPermissionDenied(ctx, check)
		}

		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return nil, err
		}
		return taskAggregate.Task, err
	}
}
