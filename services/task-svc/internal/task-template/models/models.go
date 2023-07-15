package models

import "github.com/google/uuid"

type Base struct {
	Name        string `gorm:"column:name"`
	Description string `gorm:"column:description"`
}

type TaskTemplate struct {
	Base
	ID             uuid.UUID             `gorm:"column:id;default:uuid_generate_v4()"`
	OrganizationID uuid.UUID             `gorm:"column:organization_id"`
	CreatedBy      uuid.UUID             `gorm:"column:created_by"`
	WardID         *uuid.UUID            `gorm:"column:ward_id;default:NULL"`
	SubTasks       []TaskTemplateSubtask `gorm:"foreignKey:TaskTemplateID"`
}

type TaskTemplateSubtask struct {
	ID             uuid.UUID `gorm:"column:id;default:uuid_generate_v4()"`
	TaskTemplateID uuid.UUID `gorm:"column:task_template_id"`
	Name           string    `gorm:"column:name"`
}
