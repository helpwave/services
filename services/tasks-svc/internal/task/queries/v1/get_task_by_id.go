package v1

import (
	"context"
	"github.com/google/uuid"
	"hwauthz"
	"hwes"
	"tasks-svc/internal/task/aggregate"
	"tasks-svc/internal/task/models"
)

type GetTaskByIDQueryHandler func(ctx context.Context, taskID uuid.UUID) (*models.Task, error)

func NewGetTaskByIDQueryHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) GetTaskByIDQueryHandler {
	return func(ctx context.Context, taskID uuid.UUID) (*models.Task, error) {
		// TODO: Use context
		userID := uuid.MustParse("18159713-5d4e-4ad5-94ad-fbb6bb147984")
		if err := hwauthz.CheckGrpcWrapper(ctx, authz, hwauthz.NewCanUserViewTaskPermission(userID, taskID)); err != nil {
			return nil, err
		}

		taskAggregate, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return nil, err
		}
		return taskAggregate.Task, err
	}
}
