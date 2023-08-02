package repositories

import (
	"github.com/google/uuid"
	"gorm.io/gorm"
	"task-svc/internal/models"
)

type TemplateRepository struct {
	db *gorm.DB
}

func NewTemplateRepositoryWithDB(db *gorm.DB) *TemplateRepository {
	return &TemplateRepository{
		db: db,
	}
}

func (r *TemplateRepository) GetTemplateByWard(wardID uuid.UUID) ([]models.TaskTemplate, error) {
	var templates []models.TaskTemplate
	if err := r.db.Where("ward_id = ?", wardID).Find(&templates).Error; err != nil {
		return nil, err
	}

	return templates, nil
}

func (r *TemplateRepository) GetSubTasksByTemplate(templateID uuid.UUID) ([]models.TaskTemplateSubtask, error) {
	var taskTemplateSubtask []models.TaskTemplateSubtask
	if err := r.db.Where("task_template_id = ?", templateID).Find(&taskTemplateSubtask).Error; err != nil {
		return nil, err
	}

	return taskTemplateSubtask, nil
}
