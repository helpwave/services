package v1

import (
	"common"
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwdb"

	"github.com/google/uuid"

	"tasks-svc/internal/task/models"
	"tasks-svc/repos/task_repo"
)

type GetTasksWithPatientsByAssigneeQueryHandler func(
	ctx context.Context,
	assigneeID uuid.UUID,
) ([]*models.TaskWithPatient, error)

func NewGetTasksWithPatientsByAssigneeQueryHandler() GetTasksWithPatientsByAssigneeQueryHandler {
	return func(ctx context.Context, assigneeID uuid.UUID) ([]*models.TaskWithPatient, error) {
		taskRepo := task_repo.New(hwdb.GetDB())

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
					TaskWithConsistency: models.TaskWithConsistency{
						Task: models.Task{
							ID:           row.Task.ID,
							Name:         row.Task.Name,
							Description:  row.Task.Description,
							Status:       pb.TaskStatus(row.Task.Status),
							AssignedUser: row.Task.AssignedUserID, // TODO: #760
							Public:       row.Task.Public,
							DueAt:        nil, // may be set below
							PatientID:    row.Patient.ID,
							CreatedBy:    row.Task.CreatedBy,
							CreatedAt:    row.Task.CreatedAt.Time,
							Subtasks:     make(map[uuid.UUID]models.Subtask),
						},
						Consistency: common.ConsistencyToken(row.Task.Consistency).String(), //nolint:gosec
					},
					Patient: models.Patient{
						ID:                      row.Patient.ID,
						HumanReadableIdentifier: row.Patient.HumanReadableIdentifier,
						Notes:                   row.Patient.Notes,
						BedID:                   row.Patient.BedID,
						IsDischarged:            row.Patient.IsDischarged,
						Consistency:             common.ConsistencyToken(row.Patient.Consistency).String(), //nolint:gosec
					},
				}

				if row.Task.DueAt.Valid {
					task.Task.DueAt = &row.Task.DueAt.Time
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
