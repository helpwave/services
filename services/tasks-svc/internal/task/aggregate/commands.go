package aggregate

import (
	"context"
	"github.com/google/uuid"
	eventsV1 "tasks-svc/internal/task/events/v1"
)

func (a *TaskAggregate) CreateTask(ctx context.Context, name string) error {
	id := uuid.New()
	event, err := eventsV1.NewTaskCreatedEvent(a, id, name)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) AssignTask(ctx context.Context, userID uuid.UUID) error {
	event, err := eventsV1.NewTaskAssignedEvent(a, userID.String())
	if err != nil {
		return err
	}
	return a.Apply(event)
}
