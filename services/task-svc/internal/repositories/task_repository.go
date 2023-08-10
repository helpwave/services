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

func (r *TaskRepository) CreateTask(task *models.Task) (*models.Task, error) {
	query := r.db.
		Create(task)

	if err := query.Error; err != nil {
		return nil, err
	}
	return task, nil
}

func (r *TaskRepository) CreateSubTask(subtask *models.Subtask) (*models.Subtask, error) {
	query := r.db.
		Create(subtask)

	if err := query.Error; err != nil {
		return nil, err
	}
	return subtask, nil
}

func (r *TaskRepository) GetTaskWithSubTasks(taskID uuid.UUID) (*models.Task, error) {
	task := &models.Task{ID: taskID}
	query := r.db.
		Preload("Subtasks").
		First(task)

	if err := query.Error; err != nil {
		return nil, err
	}
	return task, nil
}

func (r *TaskRepository) GetTasksWithSubTasksByPatient(patientId uuid.UUID) ([]models.Task, error) {
	var tasks []models.Task

	query := r.db.
		Preload("Subtasks").
		Where("patient_id = ?", patientId).
		Find(&tasks)

	if err := query.Error; err != nil {
		return nil, err
	}
	return tasks, nil
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

func (r *TaskRepository) UpdateTask(taskID uuid.UUID, updates map[string]interface{}) (*models.Task, error) {
	task := &models.Task{ID: taskID}
	query := r.db.
		Model(task).
		Updates(updates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return task, nil
}

func (r *TaskRepository) UpdateSubTask(subtaskID uuid.UUID, updates map[string]interface{}) (*models.Subtask, error) {
	subtask := &models.Subtask{ID: subtaskID}
	query := r.db.
		Model(subtask).
		Updates(updates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return subtask, nil
}

func (r *TaskRepository) DeleteTask(taskID uuid.UUID) error {
	task := &models.Task{ID: taskID}
	query := r.db.
		Delete(task)

	return query.Error
}

func (r *TaskRepository) DeleteSubTask(subtaskID uuid.UUID) error {
	subtask := &models.Subtask{ID: subtaskID}
	query := r.db.
		Delete(subtask)

	return query.Error
}
