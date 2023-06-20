package task_template

import (
	pb "gen/proto/services/task_svc/v1"
	"github.com/google/uuid"
)

type Base struct {
	Name        string `gorm:"column:name"`
	Description string `gorm:"column:description"`
}

type TaskTemplate struct {
	Base
	ID       uuid.UUID             `gorm:"column:id"`
	Public   bool                  `gorm:"column:is_public"`
	UserID   *uuid.UUID            `gorm:"column:user_id;default:NULL"`
	WardID   *uuid.UUID            `gorm:"column:ward_id;default:NULL"`
	SubTasks []TaskTemplateSubtask `gorm:"foreignKey:ward_id"`
}

type TaskTemplateSubtask struct {
	ID             uuid.UUID `gorm:"column:id"`
	TaskTemplateID uuid.UUID `gorm:"column:task_template_id"`
	Name           string    `gorm:"column:name"`
	Done           bool      `gorm:"column:done;default:False"`
}

type ServiceServer struct {
	pb.UnimplementedTaskTemplateServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}
