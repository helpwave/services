package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/task/aggregate"
)

type AssignTaskCommandHandler func(ctx context.Context, taskID, userID uuid.UUID) (common.ConsistencyToken, error)

func NewAssignTaskCommandHandler(as hwes.AggregateStore) AssignTaskCommandHandler {
	return func(ctx context.Context, taskID, userID uuid.UUID) (common.ConsistencyToken, error) {
		task, err := aggregate.LoadTaskAggregate(ctx, as, taskID)
		if err != nil {
			return 0, err
		}

		// TODO: Handle SelfAssignTask when common.GetUserID() is testable
		if err := task.AssignTask(ctx, userID); err != nil {
			return 0, err
		}

		return as.Save(ctx, task)
	}
}
