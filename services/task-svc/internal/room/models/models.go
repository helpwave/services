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
}

type Bed struct {
	ID             uuid.UUID `gorm:"column:id"`
	RoomID         *Room     `gorm:"foreignKey:ID"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
}
