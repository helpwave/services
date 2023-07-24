package models

import (
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
	"time"
)

type Base struct {
	Name        string        `gorm:"column:name"`
	Description string        `gorm:"column:description;default:''"`
	Status      pb.TaskStatus `gorm:"column:status"`
}

type Task struct {
	Base
	ID             uuid.UUID     `gorm:"column:id;default:uuid_generate_v4()"`
	OrganizationID uuid.UUID     `gorm:"column:organization_id"`
	AssignedUserId uuid.NullUUID `gorm:"column:assigned_user_id;default:NULL"`
	PatientId      uuid.UUID     `gorm:"column:patient_id"`
	Subtasks       []Subtask     `gorm:"foreignKey:TaskID"`
	Public         bool          `gorm:"column:public;default:False"`
	CreatedBy      uuid.UUID     `gorm:"column:created_by"`
	DueAt          time.Time     `gorm:"column:due_at"`
}

type Subtask struct {
	ID        uuid.UUID `gorm:"column:id;default:uuid_generate_v4()"`
	TaskID    uuid.UUID `gorm:"column:task_id"`
	Name      string    `gorm:"column:name"`
	Done      bool      `gorm:"column:done;default:False"`
	CreatedBy uuid.UUID `gorm:"column:created_by"`
}
