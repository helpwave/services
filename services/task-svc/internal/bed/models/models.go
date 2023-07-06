package models

import (
	"github.com/google/uuid"
	"task-svc/internal/patient/models"
	roomModel "task-svc/internal/room/models"
)

type Base struct {
	/* Empty for the later extension and use */
}

type Bed struct {
	ID             uuid.UUID       `gorm:"column:id"`
	RoomID         uuid.UUID       `gorm:"column:room_id"`
	Room           *roomModel.Room `gorm:"foreignKey:ID"`
	Patient        *models.Patient `gorm:"foreignKey:BedID"`
	OrganizationID uuid.UUID       `gorm:"column:organization_id"`
}
