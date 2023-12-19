package v1

import (
	"github.com/google/uuid"
	"hwes"
)

const (
	TaskCreated      = "TASK_CREATED_v1"
	TaskAssigned     = "TASK_ASSIGNED_v1"
	TaskSelfAssigned = "TASK_SELF_ASSIGNED_v1"
	TaskUnassigned   = "TASK_UNASSIGNED_v1"
)

type TaskCreatedEvent struct {
	ID   string `json:"id"`
	Name string `json:"name"`
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
