package models

import (
	"github.com/google/uuid"
	"tasks-svc/internal/task/models"
	"time"
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

type PatientDetails struct {
	Patient
	Tasks []*models.Task
	Bed   *Bed
	Room  *Room
}

// TODO: Use the right models here
type Bed struct {
	ID   uuid.UUID
	Name string
}

type Room struct {
	ID     uuid.UUID
	Name   string
	WardID uuid.UUID
}
