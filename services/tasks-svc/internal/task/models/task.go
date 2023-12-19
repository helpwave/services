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
	PatientID     uuid.UUID
	AssignedUsers []uuid.UUID
	Subtasks      []Subtask
}

func NewTask() *Task {
	return &Task{
		CreatedAt:     time.Now().UTC(),
		Status:        pb.TaskStatus_TASK_STATUS_UNSPECIFIED,
		AssignedUsers: make([]uuid.UUID, 0),
		Subtasks:      make([]Subtask, 0),
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
