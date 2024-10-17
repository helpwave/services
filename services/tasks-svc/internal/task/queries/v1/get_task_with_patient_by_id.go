package v1

import (
	"common"
	"context"
	"fmt"
	pb "gen/services/tasks_svc/v1"
	"hwdb"

	"github.com/google/uuid"

	"tasks-svc/internal/task/models"
	"tasks-svc/repos/task_repo"
)

type GetTaskWithPatientByIDQueryHandler func(ctx context.Context, taskID uuid.UUID) (*models.TaskWithPatient, error)

func NewGetTaskWithPatientByIDQueryHandler() GetTaskWithPatientByIDQueryHandler {
	return func(ctx context.Context, taskID uuid.UUID) (*models.TaskWithPatient, error) {
		taskRepo := task_repo.New(hwdb.GetDB())

		rows, err := taskRepo.GetTaskWithPatientById(ctx, taskID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}
		if len(rows) == 0 {
			return nil, fmt.Errorf("could not find record with ID %s", taskID.String())
		}

		task := &models.TaskWithPatient{
			TaskWithConsistency: models.TaskWithConsistency{
				Task: models.Task{
					ID:           rows[0].Task.ID,
					Name:         rows[0].Task.Name,
					Description:  rows[0].Task.Description,
					Status:       pb.TaskStatus(rows[0].Task.Status),
					AssignedUser: rows[0].Task.AssignedUserID, // TODO: #760
					Public:       rows[0].Task.Public,
					DueAt:        nil, // Will be set below
					PatientID:    rows[0].Patient.ID,
					CreatedBy:    rows[0].Task.CreatedBy,
					CreatedAt:    rows[0].Task.CreatedAt.Time,
					Subtasks:     make(map[uuid.UUID]models.Subtask),
				},
				Consistency: common.ConsistencyToken(rows[0].Task.Consistency).String(), //nolint:gosec
			},
			Patient: models.Patient{
				ID:                      rows[0].Patient.ID,
				HumanReadableIdentifier: rows[0].Patient.HumanReadableIdentifier,
				Notes:                   rows[0].Patient.Notes,
				BedID:                   rows[0].Patient.BedID,
				IsDischarged:            rows[0].Patient.IsDischarged,
			},
		}

		if rows[0].Task.DueAt.Valid {
			task.DueAt = &rows[0].Task.DueAt.Time
		}

		for _, row := range rows {
			if row.SubtaskID.Valid {
				task.Subtasks[row.SubtaskID.UUID] = models.Subtask{
					ID:        row.SubtaskID.UUID,
					Name:      *row.SubtaskName,
					Done:      *row.SubtaskDone,
					CreatedBy: row.SubtaskCreatedBy.UUID,
				}
			}
		}

		return task, nil
	}
}
