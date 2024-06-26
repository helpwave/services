package models

import (
	pb "gen/services/tasks_svc/v1"
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

type Subtask struct {
	ID        uuid.UUID
	CreatedBy uuid.UUID
	CreatedAt time.Time

	Name string
	Done bool
}
