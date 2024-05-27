package v1

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"hwdb"
	"hwes"
	patientModels "tasks-svc/internal/patient/models"
	"tasks-svc/internal/task/models"
	"tasks-svc/repos/task_repo"
)

type GetTasksWithPatientsByAssigneeQueryHandler func(ctx context.Context, assigneeID uuid.UUID) ([]*models.TaskWithPatient, error)

func NewGetTasksWithPatientsByAssigneeQueryHandler(_ hwes.AggregateStore) GetTasksWithPatientsByAssigneeQueryHandler {
	return func(ctx context.Context, assigneeID uuid.UUID) ([]*models.TaskWithPatient, error) {
		db := hwdb.GetDB()
		taskRepo := task_repo.New(db)

		rows, err := taskRepo.GetTasksWithPatientByAssignee(ctx, uuid.NullUUID{
			UUID:  assigneeID,
			Valid: true,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		tasks := make([]*models.TaskWithPatient, 0)
		tasksMap := make(map[uuid.UUID]int)

		for _, row := range rows {
			var task *models.TaskWithPatient

			if ix, exists := tasksMap[row.Task.ID]; exists {
				task = tasks[ix]
			} else {
				task = &models.TaskWithPatient{
					Task: models.Task{
						ID:            row.Task.ID,
						Name:          row.Task.Name,
						Description:   row.Task.Description,
						Status:        pb.TaskStatus(row.Task.Status),
						AssignedUsers: []uuid.UUID{row.Task.AssignedUserID.UUID}, // TODO: #760
						Public:        row.Task.Public,
						DueAt:         row.Task.DueAt.Time,
						PatientID:     row.Patient.ID,
						CreatedBy:     row.Task.CreatedBy,
						CreatedAt:     row.Task.CreatedAt.Time,
						Subtasks:      make(map[uuid.UUID]models.Subtask),
					},
					Patient: patientModels.Patient{
						ID:                      row.Patient.ID,
						HumanReadableIdentifier: row.Patient.HumanReadableIdentifier,
						Notes:                   row.Patient.Notes,
						BedID:                   row.Patient.BedID,
						IsDischarged:            row.Patient.IsDischarged != 0,
						CreatedAt:               row.Patient.CreatedAt.Time,
						UpdatedAt:               row.Patient.UpdatedAt.Time,
					},
				}
				tasks = append(tasks, task)
				tasksMap[row.Task.ID] = len(tasks) - 1
			}

			if row.SubtaskID.Valid {
				task.Subtasks[row.SubtaskID.UUID] = models.Subtask{
					ID:        row.SubtaskID.UUID,
					Name:      *row.SubtaskName,
					Done:      *row.SubtaskDone,
					CreatedBy: row.SubtaskCreatedBy.UUID,
				}
			}
		}

		return tasks, nil
	}
}
