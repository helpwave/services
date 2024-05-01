// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.26.0

package patient_repo

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
	BedID                   uuid.NullUUID
	IsDischarged            int32
	CreatedAt               pgtype.Timestamp
	UpdatedAt               pgtype.Timestamp
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
	AssignedUserID uuid.NullUUID
	PatientID      uuid.UUID
	Public         bool
	CreatedBy      uuid.UUID
	DueAt          pgtype.Timestamp
}

type TaskTemplate struct {
	ID          uuid.UUID
	Name        string
	Description string
	WardID      uuid.NullUUID
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
