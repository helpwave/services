package models

import "github.com/google/uuid"

type WardBase struct {
	Name string `gorm:"column:name"`
}

type Ward struct {
	WardBase
	ID             uuid.UUID `gorm:"column:id;default:uuid_generate_v4()"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
	Rooms          []Room    `gorm:"foreignKey:WardID"`
}
