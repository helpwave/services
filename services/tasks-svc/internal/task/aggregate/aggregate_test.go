package aggregate_test

import (
	"common/auth"
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwes"
	"testing"

	"github.com/google/uuid"

	"tasks-svc/internal/task/aggregate"
	taskEventsV1 "tasks-svc/internal/task/events/v1"
)

func MustApplyEvent(t *testing.T, aggregate hwes.Aggregate, newEvent func() (hwes.Event, error)) {
	t.Helper()

	event, err := newEvent()
	if err != nil {
		t.Error(err)
	}

	if err := aggregate.Progress(event); err != nil {
		t.Error(err)
	}
}

func TestTaskAggregate_UpdateName(t *testing.T) {
	ctx := auth.ContextWithUserID(context.Background(), uuid.New())

	taskID := uuid.New()
	patientID := uuid.New()

	initialTaskName := "Test Task"
	updatedTaskName := "Test Task Updated"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskCreatedEvent(
			ctx,
			taskAggregate,
			taskID,
			initialTaskName,
			patientID,
			pb.TaskStatus_TASK_STATUS_TODO,
		)
	})

	if taskAggregate.Task.Name != initialTaskName {
		t.Errorf("Task name: expected '%s' got '%s'", initialTaskName, taskAggregate.Task.Name)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskNameUpdatedEvent(ctx, taskAggregate, updatedTaskName)
	})

	if taskAggregate.Task.Name != updatedTaskName {
		t.Errorf("Task name: expected '%s' got '%s'", updatedTaskName, taskAggregate.Task.Name)
	}
}

func TestTaskAggregate_UpdateDescription(t *testing.T) {
	ctx := auth.ContextWithUserID(context.Background(), uuid.New())

	taskID := uuid.New()
	patientID := uuid.New()

	initialTaskDescription := ""
	updatedTaskDescription := "Text text"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskCreatedEvent(
			ctx,
			taskAggregate,
			taskID,
			"Test task",
			patientID,
			pb.TaskStatus_TASK_STATUS_TODO,
		)
	})

	if taskAggregate.Task.Description != initialTaskDescription {
		t.Errorf("Task description: expected '%s' got '%s'",
			initialTaskDescription, taskAggregate.Task.Description)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskDescriptionUpdatedEvent(ctx, taskAggregate, updatedTaskDescription)
	})

	if taskAggregate.Task.Description != updatedTaskDescription {
		t.Errorf("Task description: expected '%s' got '%s'",
			updatedTaskDescription, taskAggregate.Task.Description)
	}
}

func TestTaskAggregate_UpdateSubtaskName(t *testing.T) {
	ctx := auth.ContextWithUserID(context.Background(), uuid.New())

	taskID := uuid.New()
	subtaskID := uuid.New()
	patientID := uuid.New()

	subtaskName := "One"
	updatedSubtaskName := "Two"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskCreatedEvent(
			ctx,
			taskAggregate,
			taskID,
			"Test task",
			patientID,
			pb.TaskStatus_TASK_STATUS_TODO,
		)
	})

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskCreatedEvent(ctx, taskAggregate, subtaskID, subtaskName, false)
	})

	if taskAggregate.Task.Subtasks[subtaskID].Name != subtaskName {
		t.Errorf("Subtask name: expected '%s' got '%s'",
			subtaskName, taskAggregate.Task.Subtasks[subtaskID].Name)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskNameUpdatedEvent(ctx, taskAggregate, subtaskID, subtaskName)
	})

	if taskAggregate.Task.Subtasks[subtaskID].Name != subtaskName {
		t.Errorf("Subtask name: expected '%s' got '%s'",
			updatedSubtaskName, taskAggregate.Task.Subtasks[subtaskID].Name)
	}
}

func TestTaskAggregate_CompleteSubtask(t *testing.T) {
	ctx := auth.ContextWithUserID(context.Background(), uuid.New())

	taskID := uuid.New()
	subtaskID := uuid.New()
	patientID := uuid.New()

	taskName := "Test Task"
	subtaskName := "Test Subtask"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewTaskCreatedEvent(
			ctx,
			taskAggregate,
			taskID,
			taskName,
			patientID,
			pb.TaskStatus_TASK_STATUS_TODO,
		)
	})

	if taskAggregate.Task.Name != taskName {
		t.Errorf("Task name: expected '%s' got '%s'", taskName, taskAggregate.Task.Name)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskCreatedEvent(ctx, taskAggregate, subtaskID, subtaskName, false)
	})

	if taskAggregate.Task.Name != taskName {
		t.Errorf("Subtask name: expected '%s' got '%s'",
			subtaskName, taskAggregate.Task.Subtasks[subtaskID].Name)
	}

	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskCompletedEvent(ctx, taskAggregate, subtaskID)
	})

	// Apply two times
	MustApplyEvent(t, taskAggregate, func() (hwes.Event, error) {
		return taskEventsV1.NewSubtaskCompletedEvent(ctx, taskAggregate, subtaskID)
	})

	if !taskAggregate.Task.Subtasks[subtaskID].Done {
		t.Errorf("Expected subtask to be done")
	}
}

func TestTaskAggregate_AssignTask(t *testing.T) {
	ctx := auth.ContextWithUserID(context.Background(), uuid.New())

	taskID := uuid.New()
	patientID := uuid.New()

	taskName := "Test Task"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	if err := taskAggregate.CreateTask(ctx, taskName, patientID, pb.TaskStatus_TASK_STATUS_TODO); err != nil {
		t.Error(err)
	}

	if taskAggregate.Task.AssignedUser.Valid {
		t.Errorf("AssignedUser should not be set")
	}

	if err := taskAggregate.AssignTask(ctx, patientID); err != nil {
		t.Error(err)
	}

	if taskAggregate.Task.AssignedUser.Valid {
		if taskAggregate.Task.AssignedUser.UUID != patientID {
			t.Errorf(
				"Invalid AssignedUserId, expected %s got %s",
				patientID.String(),
				taskAggregate.Task.AssignedUser.UUID.String(),
			)
		}
	}
}

func TestTaskAggregate_DeleteTask(t *testing.T) {
	ctx := auth.ContextWithUserID(context.Background(), uuid.New())

	taskID := uuid.New()
	patientID := uuid.New()

	taskName := "Test Task"

	taskAggregate := aggregate.NewTaskAggregate(taskID)

	if err := taskAggregate.CreateTask(ctx, taskName, patientID, pb.TaskStatus_TASK_STATUS_TODO); err != nil {
		t.Error(err)
	}

	if err := taskAggregate.DeleteTask(ctx); err != nil {
		t.Error(err)
	}

	if !taskAggregate.IsDeleted() {
		t.Errorf("Expected task to be deleted")
	}
}
