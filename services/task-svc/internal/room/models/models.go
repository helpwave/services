package models

import "github.com/google/uuid"

type Base struct {
	Name string `gorm:"column:name"`
}

type Room struct {
	Base
	ID             uuid.UUID `gorm:"column:id"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
	Beds           []Bed     `gorm:"foreignKey:RoomID"`
	WardID         uuid.UUID `gorm:"column:ward_id"`
}

type Bed struct {
	ID     uuid.UUID `gorm:"column:id"`
	RoomID uuid.UUID `gorm:"column:room_id"`
}
