// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0

package ward_repo

import (
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
)

type Bed struct {
	ID     uuid.UUID
	RoomID uuid.UUID
	Name   string
}

type Patient struct {
	ID                      uuid.UUID
	HumanReadableIdentifier string
	Notes                   string
	BedID                   *uuid.UUID
	CreatedAt               pgtype.Timestamp
	UpdatedAt               pgtype.Timestamp
	IsDischarged            bool
}

type Room struct {
	ID     uuid.UUID
	Name   string
	WardID uuid.UUID
}

type SchemaMigration struct {
	Version int64
	Dirty   bool
}

type Subtask struct {
	ID           uuid.UUID
	TaskID       uuid.UUID
	Name         string
	Done         bool
	CreatedBy    uuid.UUID
	CreationDate pgtype.Timestamp
}

type Task struct {
	ID             uuid.UUID
	Name           string
	Description    string
	Status         int32
	AssignedUserID *uuid.UUID
	PatientID      uuid.UUID
	Public         bool
	CreatedBy      uuid.UUID
	DueAt          pgtype.Timestamp
	CreatedAt      pgtype.Timestamp
}

type TaskTemplate struct {
	ID          uuid.UUID
	Name        string
	Description string
	WardID      *uuid.UUID
	CreatedBy   uuid.UUID
}

type TaskTemplateSubtask struct {
	ID             uuid.UUID
	TaskTemplateID uuid.UUID
	Name           string
}

type Ward struct {
	ID   uuid.UUID
	Name string
}
