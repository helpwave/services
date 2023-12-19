package aggregate

import (
	"context"
	"errors"
	"fmt"
	"github.com/google/uuid"
	"hwes"
	"hwutil"
	v1 "tasks-svc/internal/task/events/v1"
	"tasks-svc/internal/task/models"
)

const TaskAggregateType = "task"

type TaskAggregate struct {
	*hwes.AggregateBase
	Task *models.Task
}

func NewTaskAggregate(id uuid.UUID) *TaskAggregate {
	aggregate := &TaskAggregate{Task: models.NewTask()}
	aggregate.AggregateBase = hwes.NewAggregateBase(TaskAggregateType, id, aggregate.When)
	aggregate.Task.ID = id
	return aggregate
}

func (a *TaskAggregate) When(evt hwes.Event) error {
	switch evt.EventType {
	case v1.TaskCreated:
		return a.onTaskCreated(evt)
	case v1.TaskAssigned:
		fallthrough
	case v1.TaskSelfAssigned:
		return a.onTaskAssigned(evt)
	case v1.TaskUnassigned:
		return a.onTaskUnassigned(evt)
	default:
		return errors.New(fmt.Sprintf("event type '%s' is invalid", evt.EventType))
	}
}

// Event handlers

func (a *TaskAggregate) onTaskCreated(evt hwes.Event) error {
	var payload v1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Task.Name = payload.Name

	return nil
}

func (a *TaskAggregate) onTaskAssigned(evt hwes.Event) error {
	var userIDStr string

	switch evt.EventType {
	case v1.TaskAssigned:
		var payload v1.TaskAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			return err
		}
		userIDStr = payload.UserID
		break
	case v1.TaskSelfAssigned:
		var payload v1.TaskSelfAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			return err
		}
		userIDStr = payload.UserID
		break
	}

	userID, err := uuid.Parse(userIDStr)
	if err != nil {
		return err
	}

	if hwutil.Contains(a.Task.AssignedUsers, userID) {
		return nil
	}

	a.Task.AssignedUsers = append(a.Task.AssignedUsers, userID)

	return nil
}

func (a *TaskAggregate) onTaskUnassigned(evt hwes.Event) error {
	var payload v1.TaskUnassignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	userID, err := uuid.Parse(payload.UserID)
	if err != nil {
		return err
	}

	a.Task.AssignedUsers = hwutil.Filter(a.Task.AssignedUsers, func(assignedUserID uuid.UUID) bool {
		return assignedUserID != userID
	})

	return nil
}

func LoadTaskAggregate(ctx context.Context, as hwes.AggregateStore, id uuid.UUID) (*TaskAggregate, error) {
	task := NewTaskAggregate(id)
	if err := as.Load(ctx, task); err != nil {
		return nil, err
	}
	return task, nil
}
