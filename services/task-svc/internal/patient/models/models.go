package models

import (
	"github.com/google/uuid"
	taskModels "task-svc/internal/task/models"
)

type Base struct {
	HumanReadableIdentifier string `gorm:"column:human_readable_identifier"`
	Notes                   string `gorm:"column:notes"`
}

type Patient struct {
	Base
	ID             uuid.UUID         `gorm:"column:id;default:uuid_generate_v4()"`
	OrganizationID uuid.UUID         `gorm:"column:organization_id"`
	BedID          *uuid.UUID        `gorm:"column:bed_id;default:NULL"`
	Tasks          []taskModels.Task `gorm:"foreignKey:PatientId"`
	IsDischarged   bool              `gorm:"column:is_discharged;softDelete:flag;default:0"`
}
