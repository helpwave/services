package aggregate

import (
	"context"
	"errors"
	"fmt"
	"github.com/google/uuid"
	"hwes"
	"hwutil"
	eventsV1 "tasks-svc/internal/task/events/v1"
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

func LoadTaskAggregate(ctx context.Context, as hwes.AggregateStore, id uuid.UUID) (*TaskAggregate, error) {
	task := NewTaskAggregate(id)
	if err := as.Load(ctx, task); err != nil {
		return nil, err
	}
	return task, nil
}

func (a *TaskAggregate) When(evt hwes.Event) error {
	switch evt.EventType {
	case eventsV1.TaskCreated:
		return a.onTaskCreated(evt)
	case eventsV1.TaskNameUpdated:
		return a.onTaskNameUpdated(evt)
	case eventsV1.TaskDescriptionUpdated:
		return a.onTaskDescriptionUpdated(evt)
	case eventsV1.TaskAssigned:
		fallthrough
	case eventsV1.TaskSelfAssigned:
		return a.onTaskAssigned(evt)
	case eventsV1.TaskUnassigned:
		return a.onTaskUnassigned(evt)
	case eventsV1.SubtaskCreated:
		return a.onSubtaskCreated(evt)
	case eventsV1.SubtaskNameUpdated:
		return a.onSubtaskNameUpdated(evt)
	case eventsV1.SubtaskCompleted:
		return a.onSubtaskCompleted(evt)
	case eventsV1.SubtaskUncompleted:
		return a.onSubtaskUncompleted(evt)
	case eventsV1.SubtaskDeleted:
		return a.onSubtaskDeleted(evt)
	default:
		return errors.New(fmt.Sprintf("event type '%s' is invalid", evt.EventType))
	}
}

// Event handlers

func (a *TaskAggregate) onTaskCreated(evt hwes.Event) error {
	var payload eventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Task.Name = payload.Name

	return nil
}

func (a *TaskAggregate) onTaskNameUpdated(evt hwes.Event) error {
	var payload eventsV1.TaskNameUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Task.Name = payload.Name

	return nil
}

func (a *TaskAggregate) onTaskDescriptionUpdated(evt hwes.Event) error {
	var payload eventsV1.TaskDescriptionUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Task.Description = payload.Description

	return nil
}

func (a *TaskAggregate) onTaskAssigned(evt hwes.Event) error {
	var userIDStr string

	switch evt.EventType {
	case eventsV1.TaskAssigned:
		var payload eventsV1.TaskAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			return err
		}
		userIDStr = payload.UserID
		break
	case eventsV1.TaskSelfAssigned:
		var payload eventsV1.TaskSelfAssignedEvent
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
	var payload eventsV1.TaskUnassignedEvent
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

func (a *TaskAggregate) onSubtaskCreated(evt hwes.Event) error {
	var payload eventsV1.SubtaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err
	}

	subtask := models.NewSubtask()
	subtask.ID = subtaskID
	subtask.Name = payload.Name

	a.Task.Subtasks[subtaskID] = *subtask

	return nil
}

func (a *TaskAggregate) onSubtaskNameUpdated(evt hwes.Event) error {
	var payload eventsV1.SubtaskNameUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err
	}

	subtask, found := a.Task.Subtasks[subtaskID]
	if !found {
		return errors.New(fmt.Sprintf("Subtask '%s' not found in task '%s'", subtaskID, a.Task.ID))
	}

	subtask.Name = payload.Name
	a.Task.Subtasks[subtaskID] = subtask

	return nil
}

func (a *TaskAggregate) onSubtaskCompleted(evt hwes.Event) error {
	var payload eventsV1.SubtaskCompletedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err
	}

	subtask := a.Task.Subtasks[subtaskID]
	subtask.Done = true
	a.Task.Subtasks[subtaskID] = subtask

	return nil
}

func (a *TaskAggregate) onSubtaskUncompleted(evt hwes.Event) error {
	var payload eventsV1.SubtaskUncompletedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err
	}

	subtask := a.Task.Subtasks[subtaskID]
	subtask.Done = false
	a.Task.Subtasks[subtaskID] = subtask

	return nil
}

func (a *TaskAggregate) onSubtaskDeleted(evt hwes.Event) error {
	var payload eventsV1.SubtaskDeletedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err
	}

	delete(a.Task.Subtasks, subtaskID)

	return nil
}
