package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
	"tasks-svc/internal/task/models"
)

type GetTaskByIDQuery struct {
	ID uuid.UUID
}

func NewGetTaskByIDQuery(id uuid.UUID) *GetTaskByIDQuery {
	return &GetTaskByIDQuery{ID: id}
}

type GetTaskByIDQueryHandler interface {
	Handle(ctx context.Context, query *GetTaskByIDQuery) (*models.Task, error)
}

type getTaskByIDQueryHandler struct {
	as hwes.AggregateStore
}

func NewGetTaskByIDQueryHandler(as hwes.AggregateStore) *getTaskByIDQueryHandler {
	return &getTaskByIDQueryHandler{as: as}
}

func (q *getTaskByIDQueryHandler) Handle(ctx context.Context, query *GetTaskByIDQuery) (*models.Task, error) {
	task, err := aggregate.LoadTaskAggregate(ctx, q.as, query.ID)
	if err != nil {
		return nil, err
	}

	return &models.Task{
		ID:            task.Task.ID,
		Name:          task.Task.Name,
		Description:   task.Task.Description,
		AssignedUsers: task.Task.AssignedUsers,
		Subtasks:      task.Task.Subtasks,
		Status:        task.Task.Status,
	}, nil
}
