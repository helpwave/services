package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwauthz"
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
	as    hwes.AggregateStore
	authz hwauthz.AuthZ
}

func NewGetTaskByIDQueryHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) *getTaskByIDQueryHandler {
	return &getTaskByIDQueryHandler{as: as, authz: authz}
}

func (q *getTaskByIDQueryHandler) Handle(ctx context.Context, query *GetTaskByIDQuery) (*models.Task, error) {
	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, err
	}

	if err := hwauthz.CheckGrpcWrapper(
		ctx,
		q.authz,
		hwauthz.NewCanUserViewTaskPermission(userID, query.ID),
	); err != nil {
		return nil, err
	}

	taskAggregate, err := aggregate.LoadTaskAggregate(ctx, q.as, query.ID)
	if err != nil {
		return nil, err
	}
	return taskAggregate.Task, err
}
