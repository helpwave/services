package repositories

import (
	"context"
	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
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

func (r *TaskRepository) GetTaskWithSubTasks(taskID uuid.UUID) (*models.Task, error) {
	task := &models.Task{ID: taskID}
	query := r.db.
		Preload("Subtasks", func(db *gorm.DB) *gorm.DB {
			return db.Order("creation_date ASC")
		}).
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

// GetPatientsWithTasksByAssignee
func (r *TaskRepository) GetPatientsWithTasksByAssignee(ctx context.Context, assigneeID uuid.UUID) ([]models.Patient, error) {
	db := hwgorm.GetDB(ctx)
	var patients []models.Patient
	if err := db.
		Table("patients").
		Group("patients.id").
		Joins("JOIN tasks ON patients.id = tasks.patient_id").
		Where("tasks.assigned_user_id = ?", assigneeID).
		Preload("Tasks").
		Find(&patients).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}
	return patients, nil
}
