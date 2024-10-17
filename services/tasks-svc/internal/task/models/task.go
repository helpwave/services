package models

import (
	pb "gen/services/tasks_svc/v1"
	"time"

	"github.com/google/uuid"
)

type Task struct {
	ID        uuid.UUID
	CreatedBy uuid.UUID
	CreatedAt time.Time

	Name         string
	Description  string
	Status       pb.TaskStatus
	Public       bool
	DueAt        *time.Time
	PatientID    uuid.UUID
	AssignedUser uuid.NullUUID
	Subtasks     map[uuid.UUID]Subtask
}

type TaskWithConsistency struct {
	Task
	Consistency string
}

type Subtask struct {
	ID        uuid.UUID
	CreatedBy uuid.UUID
	CreatedAt time.Time

	Name string
	Done bool
}

type Patient struct {
	ID                      uuid.UUID
	HumanReadableIdentifier string
	Notes                   string
	BedID                   uuid.NullUUID
	IsDischarged            bool
	Consistency             string
}

type TaskWithPatient struct {
	TaskWithConsistency
	Patient Patient
}
