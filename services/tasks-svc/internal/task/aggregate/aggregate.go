package aggregate

import (
	"context"
	"fmt"
	pb "gen/proto/services/tasks_svc/v1"
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
	aggregate.AggregateBase = hwes.NewAggregateBase(TaskAggregateType, id)
	aggregate.Task.ID = id
	aggregate.initEventListener()
	return aggregate
}

func LoadTaskAggregate(ctx context.Context, as hwes.AggregateStore, id uuid.UUID) (*TaskAggregate, error) {
	task := NewTaskAggregate(id)
	if err := as.Load(ctx, task); err != nil {
		return nil, err
	}
	return task, nil
}

func (a *TaskAggregate) initEventListener() {
	a.
		RegisterEventListener(eventsV1.TaskCreated, a.onTaskCreated).
		RegisterEventListener(eventsV1.TaskNameUpdated, a.onTaskNameUpdated).
		RegisterEventListener(eventsV1.TaskDescriptionUpdated, a.onTaskDescriptionUpdated).
		RegisterEventListener(eventsV1.TaskAssigned, a.onTaskAssigned).
		RegisterEventListener(eventsV1.TaskSelfAssigned, a.onTaskAssigned).
		RegisterEventListener(eventsV1.TaskUnassigned, a.onTaskUnassigned).
		RegisterEventListener(eventsV1.TaskPublished, a.onTaskPublished).
		RegisterEventListener(eventsV1.SubtaskCreated, a.onSubtaskCreated).
		RegisterEventListener(eventsV1.SubtaskNameUpdated, a.onSubtaskNameUpdated).
		RegisterEventListener(eventsV1.SubtaskCompleted, a.onSubtaskCompleted).
		RegisterEventListener(eventsV1.SubtaskUncompleted, a.onSubtaskUncompleted).
		RegisterEventListener(eventsV1.SubtaskDeleted, a.onSubtaskDeleted)
}

// Event handlers

func (a *TaskAggregate) onTaskCreated(evt hwes.Event) error {
	var payload eventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	patientID, err := uuid.Parse(payload.PatientID)
	if err != nil {
		return err
	}

	status := (pb.TaskStatus)(pb.TaskStatus_value[payload.Status])

	a.Task.Name = payload.Name
	a.Task.PatientID = patientID
	a.Task.Status = status
	a.Task.CreatedAt = evt.Timestamp

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
	case eventsV1.TaskSelfAssigned:
		var payload eventsV1.TaskSelfAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			return err
		}
		userIDStr = payload.UserID
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

func (a *TaskAggregate) onTaskPublished(evt hwes.Event) error {
	var payload eventsV1.TaskPublishedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Task.Public = true

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
		return fmt.Errorf("Subtask '%s' not found in task '%s'", subtaskID, a.Task.ID)
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
