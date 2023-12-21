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

func (a *TaskAggregate) CreateSubtask(ctx context.Context, subtaskID uuid.UUID, name string) error {
	event, err := eventsV1.NewSubtaskCreatedEvent(a, subtaskID, name)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) CompleteSubtask(ctx context.Context, subtaskID uuid.UUID) error {
	event, err := eventsV1.NewSubtaskCompletedEvent(a, subtaskID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UncompleteSubtask(ctx context.Context, subtaskID uuid.UUID) error {
	event, err := eventsV1.NewSubtaskUncompletedEvent(a, subtaskID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
