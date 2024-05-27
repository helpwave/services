package models

import (
	"github.com/google/uuid"
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
