package models

import (
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"time"
)

type Task struct {
	ID             uuid.UUID
	OrganizationID uuid.UUID
	CreatedBy      uuid.UUID
	CreatedAt      time.Time

	Name          string
	Description   string
	Status        pb.TaskStatus
	Public        bool
	DueAt         time.Time
	PatientID     uuid.UUID
	AssignedUsers []uuid.UUID
	Subtasks      map[uuid.UUID]Subtask
}

func NewTask() *Task {
	return &Task{
		Name:          "",
		Description:   "",
		CreatedAt:     time.Now().UTC(),
		Status:        pb.TaskStatus_TASK_STATUS_TODO,
		AssignedUsers: make([]uuid.UUID, 0),
		Subtasks:      make(map[uuid.UUID]Subtask, 0),
	}
}

type Subtask struct {
	ID        uuid.UUID
	CreatedBy uuid.UUID
	CreatedAt time.Time

	Name string
	Done bool
}

func NewSubtask() *Subtask {
	return &Subtask{
		CreatedAt: time.Now().UTC(),
		Done:      false,
	}
}
