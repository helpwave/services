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

func (r *TemplateRepository) CreateTaskTemplate(template *models.TaskTemplate) (*models.TaskTemplate, error) {
	query := r.db.
		Create(template)

	if err := query.Error; err != nil {
		return nil, err
	}
	return template, nil
}

func (r *TemplateRepository) SaveTaskTemplate(template *models.TaskTemplate) (*models.TaskTemplate, error) {
	query := r.db.
		Save(template)

	if err := query.Error; err != nil {
		return nil, err
	}
	return template, nil
}

func (r *TemplateRepository) CreateTaskTemplateSubTask(subtask *models.TaskTemplateSubtask) (*models.TaskTemplateSubtask, error) {
	query := r.db.
		Create(subtask)

	if err := query.Error; err != nil {
		return nil, err
	}
	return subtask, nil
}

func (r *TemplateRepository) GetTaskTemplatesByWard(wardID uuid.UUID) ([]models.TaskTemplate, error) {
	var templates []models.TaskTemplate
	query := r.db.
		Where("ward_id = ?", wardID).
		Find(&templates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return templates, nil
}

func (r *TemplateRepository) GetTaskTemplatesByWardWithSubtasks(wardID uuid.UUID) ([]models.TaskTemplate, error) {
	var templates []models.TaskTemplate
	query := r.db.
		Preload("SubTasks").
		Where("ward_id = ?", wardID).
		Find(&templates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return templates, nil
}

func (r *TemplateRepository) GetSubTasksForTaskTemplate(templateID uuid.UUID) ([]models.TaskTemplateSubtask, error) {
	var taskTemplateSubtask []models.TaskTemplateSubtask
	query := r.db.
		Where("task_template_id = ?", templateID).
		Find(&taskTemplateSubtask)

	if err := query.Error; err != nil {
		return nil, err
	}
	return taskTemplateSubtask, nil
}

func (r *TemplateRepository) GetAllTaskTemplatesWithSubTasksForOrganization(organizationID uuid.UUID) ([]models.TaskTemplate, error) {
	var taskTemplates []models.TaskTemplate

	query := r.db.
		Preload("SubTasks").
		Where("organization_id = ?", organizationID).
		Find(&taskTemplates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return taskTemplates, nil
}

func (r *TemplateRepository) GetTaskTemplatesWithSubTasksForWard(wardId uuid.UUID) ([]models.TaskTemplate, error) {
	var taskTemplates []models.TaskTemplate

	query := r.db.
		Preload("SubTasks").
		Where("ward_id = ?", wardId.String()).
		Find(&taskTemplates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return taskTemplates, nil
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
