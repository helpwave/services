package models

import (
	"github.com/google/uuid"
	"gorm.io/plugin/soft_delete"
)

type PatientBase struct {
	HumanReadableIdentifier string `gorm:"column:human_readable_identifier"`
	Notes                   string `gorm:"column:notes"`
}

type Patient struct {
	PatientBase
	ID             uuid.UUID             `gorm:"column:id;default:uuid_generate_v4()"`
	OrganizationID uuid.UUID             `gorm:"column:organization_id"`
	BedID          *uuid.UUID            `gorm:"column:bed_id;default:NULL"`
	Tasks          []Task                `gorm:"foreignKey:PatientId"`
	IsDischarged   soft_delete.DeletedAt `gorm:"column:is_discharged;softDelete:flag;default:0"`
}
