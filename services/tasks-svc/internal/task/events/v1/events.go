package v1

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwes"
	"time"

	"github.com/google/uuid"
)

const (
	TaskCreated            = "TASK_CREATED_v1"
	TaskNameUpdated        = "TASK_NAME_UPDATED_v1"
	TaskDescriptionUpdated = "TASK_DESCRIPTION_UPDATED_v1"
	TaskDueAtUpdated       = "TASK_DUE_AT_UPDATED_v1"
	TaskAssigned           = "TASK_ASSIGNED_v1"
	TaskSelfAssigned       = "TASK_SELF_ASSIGNED_v1"
	TaskUnassigned         = "TASK_UNASSIGNED_v1"
	TaskPublished          = "TASK_PUBLISHED_v1"
	TaskUnpublished        = "TASK_UNPUBLISHED_v1"
	SubtaskCreated         = "TASK_SUBTASK_CREATED_v1"
	SubtaskNameUpdated     = "TASK_SUBTASK_NAME_UPDATED_v1"
	SubtaskCompleted       = "TASK_SUBTASK_COMPLETED_v1"
	SubtaskUncompleted     = "TASK_SUBTASK_UNCOMPLETED_v1"
	SubtaskDeleted         = "TASK_SUBTASK_DELETED_v1"
	TaskStatusUpdated      = "TASK_STATUS_UPDATED_v1"
	TaskDueAtRemoved       = "TASK_DUE_AT_REMOVED_v1"
	TaskDeleted            = "TASK_DELETED_v1"
)

type TaskCreatedEvent struct {
	ID        string    `json:"id"`
	Name      string    `json:"name"`
	PatientID string    `json:"patient_id"`
	Status    string    `json:"status"`
	CreatedAt time.Time `json:"created_at"`
}

type TaskNameUpdatedEvent struct {
	Name string `json:"name"`
}

type TaskDescriptionUpdatedEvent struct {
	Description string `json:"description"`
}

type TaskDueAtUpdatedEvent struct {
	DueAt time.Time `json:"due_at"`
}

type TaskAssignedEvent struct {
	UserID string `json:"user_id"`
}

type TaskSelfAssignedEvent struct {
	UserID string `json:"user_id"`
}

type TaskUnassignedEvent struct {
	UserID string `json:"user_id"`
}

type SubtaskCreatedEvent struct {
	SubtaskID string `json:"subtask_id"`
	Name      string `json:"name"`
	Done      bool   `json:"done"`
}

type SubtaskNameUpdatedEvent struct {
	SubtaskID string `json:"subtask_id"`
	Name      string `json:"name"`
}

type SubtaskCompletedEvent struct {
	SubtaskID string `json:"subtask_id"`
}

type SubtaskUncompletedEvent struct {
	SubtaskID string `json:"subtask_id"`
}

type SubtaskDeletedEvent struct {
	SubtaskID string `json:"subtask_id"`
}

type TaskStatusUpdatedEvent struct {
	Status string `json:"subtask_id"`
}

func NewTaskCreatedEvent(
	ctx context.Context,
	a hwes.Aggregate,
	id uuid.UUID,
	name string,
	patientID uuid.UUID,
	status pb.TaskStatus,
) (hwes.Event, error) {
	payload := TaskCreatedEvent{
		ID:        id.String(),
		Name:      name,
		PatientID: patientID.String(),
		Status:    status.String(),
		CreatedAt: time.Now().UTC(),
	}
	return hwes.NewEvent(a, TaskCreated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewTaskStatusUpdatedEvent(ctx context.Context, a hwes.Aggregate, status pb.TaskStatus) (hwes.Event, error) {
	payload := TaskStatusUpdatedEvent{
		Status: status.String(),
	}
	return hwes.NewEvent(a, TaskStatusUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewTaskNameUpdatedEvent(ctx context.Context, a hwes.Aggregate, name string) (hwes.Event, error) {
	payload := TaskNameUpdatedEvent{
		Name: name,
	}
	return hwes.NewEvent(a, TaskNameUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewTaskDescriptionUpdatedEvent(ctx context.Context, a hwes.Aggregate, description string) (hwes.Event, error) {
	payload := TaskDescriptionUpdatedEvent{
		Description: description,
	}
	return hwes.NewEvent(a, TaskDescriptionUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewTaskDueAtUpdatedEvent(ctx context.Context, a hwes.Aggregate, dueAt time.Time) (hwes.Event, error) {
	payload := TaskDueAtUpdatedEvent{
		DueAt: dueAt,
	}
	return hwes.NewEvent(a, TaskDueAtUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewTaskAssignedEvent(ctx context.Context, a hwes.Aggregate, userID uuid.UUID) (hwes.Event, error) {
	payload := TaskAssignedEvent{
		UserID: userID.String(),
	}
	return hwes.NewEvent(a, TaskAssigned, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewTaskSelfAssignedEvent(ctx context.Context, a hwes.Aggregate, userID uuid.UUID) (hwes.Event, error) {
	payload := TaskSelfAssignedEvent{
		UserID: userID.String(),
	}
	return hwes.NewEvent(a, TaskSelfAssigned, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewTaskUnassignedEvent(ctx context.Context, a hwes.Aggregate, userID uuid.UUID) (hwes.Event, error) {
	payload := TaskUnassignedEvent{
		UserID: userID.String(),
	}
	return hwes.NewEvent(a, TaskUnassigned, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewTaskPublishedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, TaskPublished, hwes.WithContext(ctx))
}

func NewTaskUnpublishedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, TaskUnpublished, hwes.WithContext(ctx))
}

func NewSubtaskCreatedEvent(
	ctx context.Context,
	a hwes.Aggregate,
	subtaskID uuid.UUID,
	name string,
	done bool,
) (hwes.Event, error) {
	payload := SubtaskCreatedEvent{
		SubtaskID: subtaskID.String(),
		Name:      name,
		Done:      done,
	}
	return hwes.NewEvent(a, SubtaskCreated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewSubtaskNameUpdatedEvent(
	ctx context.Context,
	a hwes.Aggregate,
	subtaskID uuid.UUID,
	name string,
) (hwes.Event, error) {
	payload := SubtaskNameUpdatedEvent{
		SubtaskID: subtaskID.String(),
		Name:      name,
	}
	return hwes.NewEvent(a, SubtaskNameUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewSubtaskCompletedEvent(ctx context.Context, a hwes.Aggregate, subtaskID uuid.UUID) (hwes.Event, error) {
	payload := SubtaskCompletedEvent{
		SubtaskID: subtaskID.String(),
	}
	return hwes.NewEvent(a, SubtaskCompleted, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewSubtaskUncompletedEvent(ctx context.Context, a hwes.Aggregate, subtaskID uuid.UUID) (hwes.Event, error) {
	payload := SubtaskUncompletedEvent{
		SubtaskID: subtaskID.String(),
	}
	return hwes.NewEvent(a, SubtaskUncompleted, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewSubtaskDeletedEvent(ctx context.Context, a hwes.Aggregate, subtaskID uuid.UUID) (hwes.Event, error) {
	payload := SubtaskDeletedEvent{
		SubtaskID: subtaskID.String(),
	}
	return hwes.NewEvent(a, SubtaskDeleted, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewTaskDueAtRemovedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, TaskDueAtRemoved, hwes.WithContext(ctx))
}

func NewTaskDeletedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, TaskDeleted, hwes.WithContext(ctx))
}
