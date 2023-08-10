package models

import (
	"github.com/google/uuid"
)

type RoomBase struct {
	Name string `gorm:"column:name"`
}

type Room struct {
	RoomBase
	ID             uuid.UUID `gorm:"column:id;default:uuid_generate_v4()"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
	Beds           []Bed     `gorm:"foreignKey:RoomID"`
	WardID         uuid.UUID `gorm:"column:ward_id"`
}
