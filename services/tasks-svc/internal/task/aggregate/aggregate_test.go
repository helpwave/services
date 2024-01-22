package aggregate_test

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/task/aggregate"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
	"testing"
)

func MustApplyEvent(t *testing.T, aggregate hwes.Aggregate, newEvent func() (hwes.Event, error)) {
	event, err := newEvent()
	if err != nil {
		t.Error(err)
	}

	if err := aggregate.Progress(event); err != nil {
		t.Error(err)
	}
}

func TestTaskAggregate_UpdateName(t *testing.T) {
	taskID := uuid.New()
	patientID := uuid.New()

	initialTaskName := "Test Task"
	updatedTaskName := "Test Task Updated"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskCreatedEvent(taskAggregate, taskID, initialTaskName, patientID, pb.TaskStatus_TASK_STATUS_TODO)
	})

	if taskAggregate.Task.Name != initialTaskName {
		t.Errorf("Task name: expected '%s' got '%s'", initialTaskName, taskAggregate.Task.Name)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskNameUpdatedEvent(taskAggregate, initialTaskName, updatedTaskName)
	})

	if taskAggregate.Task.Name != updatedTaskName {
		t.Errorf("Task name: expected '%s' got '%s'", updatedTaskName, taskAggregate.Task.Name)
	}
}

func TestTaskAggregate_UpdateDescription(t *testing.T) {
	taskID := uuid.New()
	patientID := uuid.New()

	initialTaskDescription := ""
	updatedTaskDescription := "Text text"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskCreatedEvent(taskAggregate, taskID, "Test task", patientID, pb.TaskStatus_TASK_STATUS_TODO)
	})

	if taskAggregate.Task.Description != initialTaskDescription {
		t.Errorf("Task description: expected '%s' got '%s'", initialTaskDescription, taskAggregate.Task.Description)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskDescriptionUpdatedEvent(taskAggregate, initialTaskDescription, updatedTaskDescription)
	})

	if taskAggregate.Task.Description != updatedTaskDescription {
		t.Errorf("Task description: expected '%s' got '%s'", updatedTaskDescription, taskAggregate.Task.Description)
	}
}

func TestTaskAggregate_UpdateSubtaskName(t *testing.T) {
	taskID := uuid.New()
	subtaskID := uuid.New()
	patientID := uuid.New()

	subtaskName := "One"
	updatedSubtaskName := "Two"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskCreatedEvent(taskAggregate, taskID, "Test task", patientID, pb.TaskStatus_TASK_STATUS_TODO)
	})

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskCreatedEvent(taskAggregate, subtaskID, subtaskName)
	})

	if taskAggregate.Task.Subtasks[subtaskID].Name != subtaskName {
		t.Errorf("Subtask name: expected '%s' got '%s'", subtaskName, taskAggregate.Task.Subtasks[subtaskID].Name)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskNameUpdatedEvent(taskAggregate, subtaskID, subtaskName)
	})

	if taskAggregate.Task.Subtasks[subtaskID].Name != subtaskName {
		t.Errorf("Subtask name: expected '%s' got '%s'", updatedSubtaskName, taskAggregate.Task.Subtasks[subtaskID].Name)
	}
}

func TestTaskAggregate_CompleteSubtask(t *testing.T) {
	taskID := uuid.New()
	subtaskID := uuid.New()
	patientID := uuid.New()

	taskName := "Test Task"
	subtaskName := "Test Subtask"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskCreatedEvent(taskAggregate, taskID, taskName, patientID, pb.TaskStatus_TASK_STATUS_TODO)
	})

	if taskAggregate.Task.Name != taskName {
		t.Errorf("Task name: expected '%s' got '%s'", taskName, taskAggregate.Task.Name)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskCreatedEvent(taskAggregate, subtaskID, subtaskName)
	})

	if taskAggregate.Task.Name != taskName {
		t.Errorf("Subtask name: expected '%s' got '%s'", subtaskName, taskAggregate.Task.Subtasks[subtaskID].Name)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskCompletedEvent(taskAggregate, subtaskID)
	})

	// Apply two times
	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskCompletedEvent(taskAggregate, subtaskID)
	})

	if !taskAggregate.Task.Subtasks[subtaskID].Done {
		t.Errorf("Expected subtask to be done")
	}
}

func TestTaskAggregate_AssignTask(t *testing.T) {
	ctx := context.Background()

	taskID := uuid.New()
	patientID := uuid.New()

	taskName := "Test Task"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	if err := taskAggregate.CreateTask(ctx, taskName, patientID, pb.TaskStatus_TASK_STATUS_TODO); err != nil {
		t.Error(err)
	}

	if i := len(taskAggregate.Task.AssignedUsers); i != 0 {
		t.Errorf("Length of AssignedUsers should be 0")
	}

	if err := taskAggregate.AssignTask(ctx, patientID); err != nil {
		t.Error(err)
	}

	if i := len(taskAggregate.Task.AssignedUsers); i != 1 {
		t.Errorf("Length of AssignedUsers should be 1")
	}
}
