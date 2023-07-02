package models

import "github.com/google/uuid"

type Base struct {
	Name        string `gorm:"column:name"`
	Description string `gorm:"column:description"`
}

type TaskTemplate struct {
	Base
	ID             uuid.UUID             `gorm:"column:id"`
	OrganizationID uuid.UUID             `gorm:"column:organization_id"`
	Public         bool                  `gorm:"column:is_public"`
	UserID         uuid.UUID             `gorm:"column:user_id"`
	WardID         *uuid.UUID            `gorm:"column:ward_id;default:NULL"`
	SubTasks       []TaskTemplateSubtask `gorm:"foreignKey:TaskTemplateID"`
}

type TaskTemplateSubtask struct {
	ID             uuid.UUID `gorm:"column:id"`
	TaskTemplateID uuid.UUID `gorm:"column:task_template_id"`
	Name           string    `gorm:"column:name"`
}
