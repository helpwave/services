package repositories

import (
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"hwgorm"
	"task-svc/internal/models"
)

type TaskRepository struct {
	db *gorm.DB
}

func TaskRepo(ctx context.Context) TaskRepository {
	return TaskRepository{
		db: hwgorm.GetDB(ctx),
	}
}

func (r *TaskRepository) GetTasksWithSubTasksByPatientForOrganization(patientID, organizationID uuid.UUID) ([]models.Task, error) {
	var tasks []models.Task
	query := r.db.
		Preload("Subtasks").
		Where("patient_id = ? AND organization_id = ?", patientID, organizationID).
		Find(&tasks)

	if err := query.Error; err != nil {
		return nil, err
	}
	return tasks, nil
}
