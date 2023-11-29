package models

import (
	"github.com/google/uuid"
)

type Bed struct {
	ID             uuid.UUID `gorm:"column:id;default:uuid_generate_v4()"`
	RoomID         uuid.UUID `gorm:"column:room_id"`
	Room           *Room     `gorm:"foreignKey:RoomID"`
	Patient        *Patient  `gorm:"foreignKey:BedID"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
	Name           string    `gorm:"column:name"`
}
