package aggregate

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	eventsV1 "tasks-svc/internal/task/events/v1"
)

func (a *TaskAggregate) CreateTask(ctx context.Context, name string, patientID uuid.UUID, status pb.TaskStatus) error {
	// The "Task" entity is our main entity in this aggregate.
	// Therefore, we are using the same ID
	id := a.GetID()
	event, err := eventsV1.NewTaskCreatedEvent(a, id, name, patientID, status)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UpdateName(ctx context.Context, currentName, newName string) error {
	event, err := eventsV1.NewTaskNameUpdatedEvent(a, currentName, newName)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UpdateDescription(ctx context.Context, currentDescription, newDescription string) error {
	event, err := eventsV1.NewTaskDescriptionUpdatedEvent(a, currentDescription, newDescription)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) AssignTask(ctx context.Context, userID uuid.UUID) error {
	event, err := eventsV1.NewTaskAssignedEvent(a, userID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UnassignTask(ctx context.Context, userID uuid.UUID) error {
	event, err := eventsV1.NewTaskUnassignedEvent(a, userID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) PublishTask(ctx context.Context) error {
	event, err := eventsV1.NewTaskPublishedEvent(a)
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

func (a *TaskAggregate) UpdateSubtaskName(ctx context.Context, subtaskID uuid.UUID, name string) error {
	event, err := eventsV1.NewSubtaskNameUpdatedEvent(a, subtaskID, name)
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

func (a *TaskAggregate) DeleteSubtask(ctx context.Context, subtaskID uuid.UUID) error {
	event, err := eventsV1.NewSubtaskDeletedEvent(a, subtaskID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
