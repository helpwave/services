package repositories

import (
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"hwgorm"
	"task-svc/internal/models"
)

type TemplateRepository struct {
	db *gorm.DB
}

func TemplateRepo(logCtx context.Context) *TemplateRepository {
	return &TemplateRepository{
		db: hwgorm.GetDB(logCtx),
	}
}

func (r *TemplateRepository) DeleteTaskTemplate(templateID uuid.UUID) error {
	template := models.TaskTemplate{ID: templateID}
	query := r.db.
		Delete(&template)

	return query.Error
}

func (r *TemplateRepository) DeleteTaskTemplateSubTask(templateSubTaskID uuid.UUID) (*models.TaskTemplateSubtask, error) {
	subtask := &models.TaskTemplateSubtask{ID: templateSubTaskID}
	query := r.db.
		Delete(subtask)

	if err := query.Error; err != nil {
		return nil, err
	}
	return subtask, nil
}
