package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"strconv"
	"tasks-svc/internal/perm"
	"tasks-svc/internal/task/aggregate"
	"tasks-svc/internal/task/models"
)

type GetTaskByIDQueryHandler func(ctx context.Context, taskID uuid.UUID) (*models.TaskWithConsistency, error)

func NewGetTaskByIDQueryHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) GetTaskByIDQueryHandler {
	return func(ctx context.Context, taskID uuid.UUID) (*models.TaskWithConsistency, error) {
		userID, err := common.GetUserID(ctx)
		if err != nil {
			return nil, err
		}
		user := perm.User(userID)
		task := perm.Task(taskID)

		check := hwauthz.NewPermissionCheck(user, perm.CanUserViewTask, task)
		if err = authz.Must(ctx, check); err != nil {
			return nil, err
		}

		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return nil, err
		}

		return &models.TaskWithConsistency{
			Task:        *taskAggregate.Task,
			Consistency: strconv.FormatUint(taskAggregate.GetVersion(), 10),
		}, nil
	}
}
