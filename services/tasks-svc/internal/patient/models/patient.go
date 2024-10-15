package models

import (
	"time"

	"github.com/google/uuid"
	"tasks-svc/internal/task/models"
)

type Patient struct {
	ID                      uuid.UUID
	HumanReadableIdentifier string
	Notes                   string
	BedID                   uuid.NullUUID
	IsDischarged            bool
	CreatedAt               time.Time
	UpdatedAt               time.Time
}

type PatientWithConsistency struct {
	Patient
	Consistency string
}

type PatientDetails struct {
	PatientWithConsistency
	Tasks []*models.TaskWithConsistency
	Bed   *Bed
	Room  *Room
}

type Bed struct {
	ID          uuid.UUID
	Name        string
	Consistency string
}

type Room struct {
	ID          uuid.UUID
	Name        string
	WardID      uuid.UUID
	Consistency string
}

type BedWithPatient struct {
	Bed
	Patient *PatientWithConsistency
}

type RoomWithBedsWithPatient struct {
	Room
	Beds []*BedWithPatient
}
