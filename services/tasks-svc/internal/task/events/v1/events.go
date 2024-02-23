package v1

import (
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"hwes"
)

const (
	TaskCreated            = "TASK_CREATED_v1"
	TaskNameUpdated        = "TASK_NAME_UPDATED_v1"
	TaskDescriptionUpdated = "TASK_DESCRIPTION_UPDATED_v1"
	TaskAssigned           = "TASK_ASSIGNED_v1"
	TaskSelfAssigned       = "TASK_SELF_ASSIGNED_v1"
	TaskUnassigned         = "TASK_UNASSIGNED_v1"
	TaskPublished          = "TASK_PUBLISHED_v1"
	SubtaskCreated         = "TASK_SUBTASK_CREATED_v1"
	SubtaskNameUpdated     = "TASK_SUBTASK_NAME_UPDATED_v1"
	SubtaskCompleted       = "TASK_SUBTASK_COMPLETED_v1"
	SubtaskUncompleted     = "TASK_SUBTASK_UNCOMPLETED_v1"
	SubtaskDeleted         = "TASK_SUBTASK_DELETED_v1"
)

type TaskCreatedEvent struct {
	ID        string `json:"id"`
	Name      string `json:"name"`
	PatientID string `json:"patient_id"`
	Status    string `json:"status"`
}

type TaskNameUpdatedEvent struct {
	Name string `json:"name"`
}

type TaskDescriptionUpdatedEvent struct {
	Description string `json:"description"`
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

type TaskPublishedEvent struct{}

func NewTaskCreatedEvent(a hwes.Aggregate, id uuid.UUID, name string, patientID uuid.UUID, status pb.TaskStatus) (hwes.Event, error) {
	payload := TaskCreatedEvent{
		ID:        id.String(),
		Name:      name,
		PatientID: patientID.String(),
		Status:    status.String(),
	}
	return hwes.NewEventWithData(a, TaskCreated, payload)
}

func NewTaskNameUpdatedEvent(a hwes.Aggregate, name string) (hwes.Event, error) {
	payload := TaskNameUpdatedEvent{
		Name: name,
	}
	return hwes.NewEventWithData(a, TaskNameUpdated, payload)
}

func NewTaskDescriptionUpdatedEvent(a hwes.Aggregate, description string) (hwes.Event, error) {
	payload := TaskDescriptionUpdatedEvent{
		Description: description,
	}
	return hwes.NewEventWithData(a, TaskDescriptionUpdated, payload)
}

func NewTaskAssignedEvent(a hwes.Aggregate, userID uuid.UUID) (hwes.Event, error) {
	payload := TaskAssignedEvent{
		UserID: userID.String(),
	}
	return hwes.NewEventWithData(a, TaskAssigned, payload)
}

func NewTaskSelfAssignedEvent(a hwes.Aggregate, userID uuid.UUID) (hwes.Event, error) {
	payload := TaskSelfAssignedEvent{
		UserID: userID.String(),
	}
	return hwes.NewEventWithData(a, TaskSelfAssigned, payload)
}

func NewTaskUnassignedEvent(a hwes.Aggregate, userID uuid.UUID) (hwes.Event, error) {
	payload := TaskUnassignedEvent{
		UserID: userID.String(),
	}
	return hwes.NewEventWithData(a, TaskUnassigned, payload)
}

func NewTaskPublishedEvent(a hwes.Aggregate) (hwes.Event, error) {
	payload := TaskPublishedEvent{}
	return hwes.NewEventWithData(a, TaskPublished, payload)
}

func NewSubtaskCreatedEvent(a hwes.Aggregate, subtaskID uuid.UUID, name string) (hwes.Event, error) {
	payload := SubtaskCreatedEvent{
		SubtaskID: subtaskID.String(),
		Name:      name,
	}
	return hwes.NewEventWithData(a, SubtaskCreated, payload)
}

func NewSubtaskNameUpdatedEvent(a hwes.Aggregate, subtaskID uuid.UUID, name string) (hwes.Event, error) {
	payload := SubtaskNameUpdatedEvent{
		SubtaskID: subtaskID.String(),
		Name:      name,
	}
	return hwes.NewEventWithData(a, SubtaskNameUpdated, payload)
}

func NewSubtaskCompletedEvent(a hwes.Aggregate, subtaskID uuid.UUID) (hwes.Event, error) {
	payload := SubtaskCompletedEvent{
		SubtaskID: subtaskID.String(),
	}
	return hwes.NewEventWithData(a, SubtaskCompleted, payload)
}

func NewSubtaskUncompletedEvent(a hwes.Aggregate, subtaskID uuid.UUID) (hwes.Event, error) {
	payload := SubtaskUncompletedEvent{
		SubtaskID: subtaskID.String(),
	}
	return hwes.NewEventWithData(a, SubtaskUncompleted, payload)
}

func NewSubtaskDeletedEvent(a hwes.Aggregate, subtaskID uuid.UUID) (hwes.Event, error) {
	payload := SubtaskDeletedEvent{
		SubtaskID: subtaskID.String(),
	}
	return hwes.NewEventWithData(a, SubtaskDeleted, payload)
}
