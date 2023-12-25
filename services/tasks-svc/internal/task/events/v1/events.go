package v1

import (
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
	SubtaskCreated         = "TASK_SUBTASK_CREATED_v1"
	SubtaskNameUpdated     = "TASK_SUBTASK_NAME_UPDATED_v1"
	SubtaskCompleted       = "TASK_SUBTASK_COMPLETED_v1"
	SubtaskUncompleted     = "TASK_SUBTASK_UNCOMPLETED_v1"
	SubtaskDeleted         = "TASK_SUBTASK_DELETED_v1"
)

type TaskCreatedEvent struct {
	ID   string `json:"id"`
	Name string `json:"name"`
}

type TaskNameUpdatedEvent struct {
	PreviousName string `json:"previous_name"`
	Name         string `json:"name"`
}

type TaskDescriptionUpdatedEvent struct {
	PreviousDescription string `json:"previous_description"`
	Description         string `json:"description"`
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

func NewTaskCreatedEvent(a hwes.Aggregate, id uuid.UUID, name string) (hwes.Event, error) {
	payload := TaskCreatedEvent{
		ID:   id.String(),
		Name: name,
	}
	event := hwes.NewBaseEvent(a, TaskCreated)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewTaskNameUpdatedEvent(a hwes.Aggregate, previousName, name string) (hwes.Event, error) {
	payload := TaskNameUpdatedEvent{
		PreviousName: previousName,
		Name:         name,
	}
	event := hwes.NewBaseEvent(a, TaskNameUpdated)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewTaskDescriptionUpdatedEvent(a hwes.Aggregate, previousDescription, description string) (hwes.Event, error) {
	payload := TaskDescriptionUpdatedEvent{
		PreviousDescription: previousDescription,
		Description:         description,
	}
	event := hwes.NewBaseEvent(a, TaskDescriptionUpdated)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewTaskAssignedEvent(a hwes.Aggregate, userID string) (hwes.Event, error) {
	payload := TaskAssignedEvent{
		UserID: userID,
	}
	event := hwes.NewBaseEvent(a, TaskAssigned)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewTaskSelfAssignedEvent(a hwes.Aggregate, userID string) (hwes.Event, error) {
	payload := TaskSelfAssignedEvent{
		UserID: userID,
	}
	event := hwes.NewBaseEvent(a, TaskSelfAssigned)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewTaskUnassignedEvent(a hwes.Aggregate, userID string) (hwes.Event, error) {
	payload := TaskUnassignedEvent{
		UserID: userID,
	}
	event := hwes.NewBaseEvent(a, TaskUnassigned)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewSubtaskCreatedEvent(a hwes.Aggregate, subtaskID uuid.UUID, name string) (hwes.Event, error) {
	payload := SubtaskCreatedEvent{
		SubtaskID: subtaskID.String(),
		Name:      name,
	}
	event := hwes.NewBaseEvent(a, SubtaskCreated)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewSubtaskNameUpdatedEvent(a hwes.Aggregate, subtaskID uuid.UUID, name string) (hwes.Event, error) {
	payload := SubtaskNameUpdatedEvent{
		SubtaskID: subtaskID.String(),
		Name:      name,
	}
	event := hwes.NewBaseEvent(a, SubtaskNameUpdated)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, err
	}
	return event, nil
}

func NewSubtaskCompletedEvent(a hwes.Aggregate, subtaskID uuid.UUID) (hwes.Event, error) {
	payload := SubtaskCompletedEvent{
		SubtaskID: subtaskID.String(),
	}
	event := hwes.NewBaseEvent(a, SubtaskCompleted)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, nil
	}
	return event, nil
}

func NewSubtaskUncompletedEvent(a hwes.Aggregate, subtaskID uuid.UUID) (hwes.Event, error) {
	payload := SubtaskUncompletedEvent{
		SubtaskID: subtaskID.String(),
	}
	event := hwes.NewBaseEvent(a, SubtaskUncompleted)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, nil
	}
	return event, nil
}

func NewSubtaskDeletedEvent(a hwes.Aggregate, subtaskID uuid.UUID) (hwes.Event, error) {
	payload := SubtaskDeletedEvent{
		SubtaskID: subtaskID.String(),
	}
	event := hwes.NewBaseEvent(a, SubtaskDeleted)
	if err := event.SetJsonData(&payload); err != nil {
		return hwes.Event{}, nil
	}
	return event, nil
}
