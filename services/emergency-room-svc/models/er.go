package models

import (
	"github.com/google/uuid"
	"hwgorm"
)

type EmergencyRoomBase struct {
	Name               string       `json:"name" gorm:"default:NULL" validate:"required"`
	Location           hwgorm.Point `json:"location" gorm:"default:NULL" validate:"required"`
	DisplayableAddress string       `json:"displayableAddress" gorm:"default:NULL" validate:"required"`
	Open               bool         `json:"open" gorm:"column:is_open;default:true"`
	Utilization        int16        `json:"utilization" gorm:"default:1"`
}

type EmergencyRoom struct {
	ID uuid.UUID `json:"id"`
	EmergencyRoomBase
	Departments []Department `json:"-" gorm:"many2many:rooms_have_departments" `
}
