package aggregate

import (
	"context"
	"fmt"
	pb "gen/services/tasks_svc/v1"
	"hwes"
	"time"

	"github.com/google/uuid"

	taskEventsV1 "tasks-svc/internal/task/events/v1"
	"tasks-svc/internal/task/models"
)

const TaskAggregateType = "task"

type TaskAggregate struct {
	*hwes.AggregateBase
	Task *models.Task
}

func NewTaskAggregate(id uuid.UUID) *TaskAggregate {
	aggregate := &TaskAggregate{Task: &models.Task{
		ID:           id,
		CreatedAt:    time.Now().UTC(),
		AssignedUser: uuid.NullUUID{},
		Subtasks:     make(map[uuid.UUID]models.Subtask, 0),
	}}
	aggregate.AggregateBase = hwes.NewAggregateBase(TaskAggregateType, id)
	aggregate.initEventListeners()
	return aggregate
}

func LoadTaskAggregate(ctx context.Context, as hwes.AggregateStore, id uuid.UUID) (*TaskAggregate, error) {
	taskAggregate := NewTaskAggregate(id)
	if err := as.Load(ctx, taskAggregate); err != nil {
		return nil, err
	}

	return taskAggregate, nil
}

func (a *TaskAggregate) initEventListeners() {
	a.
		RegisterEventListener(taskEventsV1.TaskCreated, a.onTaskCreated).
		RegisterEventListener(taskEventsV1.TaskNameUpdated, a.onTaskNameUpdated).
		RegisterEventListener(taskEventsV1.TaskDescriptionUpdated, a.onTaskDescriptionUpdated).
		RegisterEventListener(taskEventsV1.TaskDueAtUpdated, a.onTaskDueAtUpdated).
		RegisterEventListener(taskEventsV1.TaskAssigned, a.onTaskAssigned).
		RegisterEventListener(taskEventsV1.TaskSelfAssigned, a.onTaskAssigned).
		RegisterEventListener(taskEventsV1.TaskUnassigned, a.onTaskUnassigned).
		RegisterEventListener(taskEventsV1.TaskPublished, a.onTaskPublished).
		RegisterEventListener(taskEventsV1.TaskUnpublished, a.onTaskUnpublished).
		RegisterEventListener(taskEventsV1.SubtaskCreated, a.onSubtaskCreated).
		RegisterEventListener(taskEventsV1.SubtaskNameUpdated, a.onSubtaskNameUpdated).
		RegisterEventListener(taskEventsV1.SubtaskCompleted, a.onSubtaskCompleted).
		RegisterEventListener(taskEventsV1.SubtaskUncompleted, a.onSubtaskUncompleted).
		RegisterEventListener(taskEventsV1.SubtaskDeleted, a.onSubtaskDeleted).
		RegisterEventListener(taskEventsV1.TaskStatusUpdated, a.onTaskStatusUpdated).
		RegisterEventListener(taskEventsV1.TaskDueAtRemoved, a.onTaskDueAtRemoved).
		RegisterEventListener(taskEventsV1.TaskDeleted, a.onTaskDeleted)
}

// Event handlers

func (a *TaskAggregate) onTaskCreated(evt hwes.Event) error {
	var payload taskEventsV1.TaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	patientID, err := uuid.Parse(payload.PatientID)
	if err != nil {
		return err
	}

	value, found := pb.TaskStatus_value[payload.Status]
	if !found {
		return fmt.Errorf("invalid taskStatus: %s", payload.Status)
	}
	status := (pb.TaskStatus)(value)

	a.Task.Name = payload.Name
	a.Task.PatientID = patientID
	a.Task.Status = status
	a.Task.CreatedAt = evt.Timestamp

	return nil
}

func (a *TaskAggregate) onTaskStatusUpdated(evt hwes.Event) error {
	var payload taskEventsV1.TaskStatusUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	value, found := pb.TaskStatus_value[payload.Status]
	if !found {
		return fmt.Errorf("invalid taskStatus: %s", payload.Status)
	}
	status := (pb.TaskStatus)(value)

	a.Task.Status = status

	return nil
}

func (a *TaskAggregate) onTaskNameUpdated(evt hwes.Event) error {
	var payload taskEventsV1.TaskNameUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Task.Name = payload.Name

	return nil
}

func (a *TaskAggregate) onTaskDescriptionUpdated(evt hwes.Event) error {
	var payload taskEventsV1.TaskDescriptionUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Task.Description = payload.Description

	return nil
}

func (a *TaskAggregate) onTaskDueAtUpdated(evt hwes.Event) error {
	var payload taskEventsV1.TaskDueAtUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Task.DueAt = &payload.DueAt

	return nil
}

func (a *TaskAggregate) onTaskAssigned(evt hwes.Event) error {
	var userIDStr string

	switch evt.EventType {
	case taskEventsV1.TaskAssigned:
		var payload taskEventsV1.TaskAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			return err
		}
		userIDStr = payload.UserID
	case taskEventsV1.TaskSelfAssigned:
		var payload taskEventsV1.TaskSelfAssignedEvent
		if err := evt.GetJsonData(&payload); err != nil {
			return err
		}
		userIDStr = payload.UserID
	}

	userID, err := uuid.Parse(userIDStr)
	if err != nil {
		return err
	}

	a.Task.AssignedUser = uuid.NullUUID{UUID: userID, Valid: true}

	return nil
}

func (a *TaskAggregate) onTaskUnassigned(evt hwes.Event) error {
	var payload taskEventsV1.TaskUnassignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Task.AssignedUser = uuid.NullUUID{UUID: uuid.Nil, Valid: false}

	return nil
}

func (a *TaskAggregate) onTaskPublished(_ hwes.Event) error {
	a.Task.Public = true
	return nil
}

func (a *TaskAggregate) onTaskUnpublished(_ hwes.Event) error {
	a.Task.Public = false
	return nil
}

func (a *TaskAggregate) onSubtaskCreated(evt hwes.Event) error {
	var payload taskEventsV1.SubtaskCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	subtaskID, err := uuid.Parse(payload.SubtaskID)
	if err != nil {
		return err
	}

	subtask := &models.Subtask{
		ID:        subtaskID,
		Name:      payload.Name,
		CreatedAt: time.Now().UTC(),
		Done:      payload.Done,
	}

	a.Task.Subtasks[subtaskID] = *subtask

	return nil
}

func (a *TaskAggregate) onSubtaskNameUpdated(evt hwes.Event) error {
	var payload taskEventsV1.SubtaskNameUpdatedEvent
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
	var payload taskEventsV1.SubtaskCompletedEvent
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
	var payload taskEventsV1.SubtaskUncompletedEvent
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
	var payload taskEventsV1.SubtaskDeletedEvent
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

func (a *TaskAggregate) onTaskDueAtRemoved(_ hwes.Event) error {
	a.Task.DueAt = nil
	return nil
}

func (a *TaskAggregate) onTaskDeleted(_ hwes.Event) error {
	a.MarkAsDeleted()
	return nil
}
