package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
	"tasks-svc/internal/task/models"
)

type GetTaskByIDQueryHandler func(ctx context.Context, taskID uuid.UUID) (*models.Task, error)

func NewGetTaskByIDQueryHandler(as hwes.AggregateStore) GetTaskByIDQueryHandler {
	return func(ctx context.Context, taskID uuid.UUID) (*models.Task, error) {
		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return nil, err
		}
		return taskAggregate.Task, err
	}
}
