package models

import (
	"github.com/google/uuid"
	"time"
)

type Patient struct {
	ID                      uuid.UUID
	HumanReadableIdentifier string
	OrganizationID          uuid.UUID
	Notes                   string
	BedID                   uuid.NullUUID
	IsDischarged            bool
	CreatedAt               time.Time
	UpdatedAt               time.Time
}

func NewPatient() *Patient {
	return &Patient{
		HumanReadableIdentifier: "",
		Notes:                   "",
		CreatedAt:               time.Now().UTC(),
	}
}
