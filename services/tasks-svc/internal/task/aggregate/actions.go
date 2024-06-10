package aggregate

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
	"time"

	"github.com/google/uuid"
)

func (a *TaskAggregate) CreateTask(ctx context.Context, name string, patientID uuid.UUID, status pb.TaskStatus) error {
	// The "Task" entity is our main entity in this aggregate.
	// Therefore, we are using the same ID
	id := a.GetID()
	event, err := taskEventsV1.NewTaskCreatedEvent(ctx, a, id, name, patientID, status)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UpdateName(ctx context.Context, newName string) error {
	event, err := taskEventsV1.NewTaskNameUpdatedEvent(ctx, a, newName)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UpdateDescription(ctx context.Context, newDescription string) error {
	event, err := taskEventsV1.NewTaskDescriptionUpdatedEvent(ctx, a, newDescription)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UpdateDueAt(ctx context.Context, dueAt time.Time) error {
	event, err := taskEventsV1.NewTaskDueAtUpdatedEvent(ctx, a, dueAt)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) AssignTask(ctx context.Context, userID uuid.UUID) error {
	event, err := taskEventsV1.NewTaskAssignedEvent(ctx, a, userID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) SelfAssignTask(ctx context.Context, userID uuid.UUID) error {
	event, err := taskEventsV1.NewTaskSelfAssignedEvent(ctx, a, userID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UnassignTask(ctx context.Context, userID uuid.UUID) error {
	event, err := taskEventsV1.NewTaskUnassignedEvent(ctx, a, userID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) PublishTask(ctx context.Context) error {
	event, err := taskEventsV1.NewTaskPublishedEvent(ctx, a)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) CreateSubtask(ctx context.Context, subtaskID uuid.UUID, name string) error {
	event, err := taskEventsV1.NewSubtaskCreatedEvent(ctx, a, subtaskID, name)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UpdateSubtaskName(ctx context.Context, subtaskID uuid.UUID, name string) error {
	event, err := taskEventsV1.NewSubtaskNameUpdatedEvent(ctx, a, subtaskID, name)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) CompleteSubtask(ctx context.Context, subtaskID uuid.UUID) error {
	event, err := taskEventsV1.NewSubtaskCompletedEvent(ctx, a, subtaskID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) UncompleteSubtask(ctx context.Context, subtaskID uuid.UUID) error {
	event, err := taskEventsV1.NewSubtaskUncompletedEvent(ctx, a, subtaskID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) DeleteSubtask(ctx context.Context, subtaskID uuid.UUID) error {
	event, err := taskEventsV1.NewSubtaskDeletedEvent(ctx, a, subtaskID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
