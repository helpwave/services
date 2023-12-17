package v1

import (
	"context"
	"github.com/google/uuid"
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

type getTaskByIDQueryHandler struct{}

func NewGetTaskByIDQueryHandler() *getTaskByIDQueryHandler {
	return &getTaskByIDQueryHandler{}
}

func (q *getTaskByIDQueryHandler) Handle(ctx context.Context, query *GetTaskByIDQuery) (*models.Task, error) {
	return &models.Task{
		ID:   uuid.New(),
		Name: "Test",
	}, nil
}
