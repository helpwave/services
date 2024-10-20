package aggregate

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwes"
	"time"

	taskEventsV1 "tasks-svc/internal/task/events/v1"

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

func (a *TaskAggregate) UpdateStatus(ctx context.Context, status pb.TaskStatus) error {
	event, err := taskEventsV1.NewTaskStatusUpdatedEvent(ctx, a, status)
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

func (a *TaskAggregate) UpdateTaskPublic(ctx context.Context, newTaskStatus bool) error {
	var event hwes.Event
	var err error

	if newTaskStatus {
		event, err = taskEventsV1.NewTaskPublishedEvent(ctx, a)
	} else {
		event, err = taskEventsV1.NewTaskUnpublishedEvent(ctx, a)
	}

	if err != nil {
		return err
	}

	return a.Apply(event)
}

func (a *TaskAggregate) CreateSubtask(ctx context.Context, subtaskID uuid.UUID, name string, done bool) error {
	event, err := taskEventsV1.NewSubtaskCreatedEvent(ctx, a, subtaskID, name, done)
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

func (a *TaskAggregate) UpdateSubtaskDone(ctx context.Context, subtaskID uuid.UUID, newDone bool) error {
	var event hwes.Event
	var err error

	if newDone {
		event, err = taskEventsV1.NewSubtaskCompletedEvent(ctx, a, subtaskID)
	} else {
		event, err = taskEventsV1.NewSubtaskUncompletedEvent(ctx, a, subtaskID)
	}

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

func (a *TaskAggregate) RemoveTaskDueAt(ctx context.Context) error {
	event, err := taskEventsV1.NewTaskDueAtRemovedEvent(ctx, a)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *TaskAggregate) DeleteTask(ctx context.Context) error {
	event, err := taskEventsV1.NewTaskDeletedEvent(ctx, a)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
