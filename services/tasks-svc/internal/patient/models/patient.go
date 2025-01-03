package models

import (
	v1 "gen/libs/common/v1"
	"time"

	"github.com/google/uuid"
	"tasks-svc/internal/task/models"
)

type PatientBase struct {
	ID                      uuid.UUID
	HumanReadableIdentifier string
	Gender                  v1.Gender
}

type Patient struct {
	PatientBase
	Notes        string
	BedID        uuid.NullUUID
	IsDischarged bool
	CreatedAt    time.Time
	UpdatedAt    time.Time
	DateOfBirth  *time.Time
}

type PatientWithConsistency struct {
	Patient
	Consistency string
}

type PatientBaseWithConsistency struct {
	PatientBase
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
	Patient *PatientBaseWithConsistency
}

type RoomWithBedsWithPatient struct {
	Room
	Beds []*BedWithPatient
}
