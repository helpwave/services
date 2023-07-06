package models

import (
	"github.com/google/uuid"
	bedModel "task-svc/internal/bed/models"
)

type Base struct {
	Name string `gorm:"column:name"`
}

type Room struct {
	Base
	ID             uuid.UUID      `gorm:"column:id"`
	OrganizationID uuid.UUID      `gorm:"column:organization_id"`
	Beds           []bedModel.Bed `gorm:"foreignKey:RoomID"`
	WardID         uuid.UUID      `gorm:"column:ward_id"`
}
