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

func (r *TemplateRepository) GetTaskTemplatesWithSubTasksForOrganizationAndCreator(organizationID, creatorID uuid.UUID) ([]models.TaskTemplate, error) {
	var taskTemplates []models.TaskTemplate

	query := r.db.
		Preload("SubTasks").
		Where("created_by = ? AND ward_id IS NULL AND organization_id = ?", creatorID.String(), organizationID.String()).
		Find(&taskTemplates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return taskTemplates, nil
}

func (r *TemplateRepository) UpdateTaskTemplate(templateID uuid.UUID, updates map[string]interface{}) (*models.TaskTemplate, error) {
	taskTemplate := &models.TaskTemplate{ID: templateID}

	query := r.db.
		Model(taskTemplate).
		Updates(updates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return taskTemplate, nil
}

func (r *TemplateRepository) UpdateTaskTemplateSubTask(templateSubTaskID uuid.UUID, updates map[string]interface{}) (*models.TaskTemplateSubtask, error) {
	templateSubTask := &models.TaskTemplateSubtask{ID: templateSubTaskID}

	query := r.db.
		Model(templateSubTask).
		Updates(updates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return templateSubTask, nil
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
