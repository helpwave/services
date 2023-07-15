package models

import "github.com/google/uuid"

type Base struct {
	Name string `gorm:"column:name"`
}

type Ward struct {
	Base
	ID             uuid.UUID `gorm:"column:id"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
}
