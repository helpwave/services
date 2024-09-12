package v1

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	"github.com/google/uuid"
	"hwdb"
	"tasks-svc/internal/task/models"
	"tasks-svc/repos/task_repo"
)

type GetTasksWithPatientsByAssigneeQueryHandler func(ctx context.Context, assigneeID uuid.UUID) ([]*models.TaskWithPatient, error)

func NewGetTasksWithPatientsByAssigneeQueryHandler() GetTasksWithPatientsByAssigneeQueryHandler {
	return func(ctx context.Context, assigneeID uuid.UUID) ([]*models.TaskWithPatient, error) {
		taskRepo := task_repo.New(hwdb.GetDB())

		rows, err := taskRepo.GetTasksWithPatientByAssignee(ctx, &assigneeID)
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
						ID:           row.Task.ID,
						Name:         row.Task.Name,
						Description:  row.Task.Description,
						Status:       pb.TaskStatus(row.Task.Status),
						AssignedUser: row.Task.AssignedUserID, // TODO: #760
						Public:       row.Task.Public,
						DueAt:        row.Task.DueAt.Time,
						PatientID:    row.Patient.ID,
						CreatedBy:    row.Task.CreatedBy,
						CreatedAt:    row.Task.CreatedAt.Time,
						Subtasks:     make(map[uuid.UUID]models.Subtask),
					},
					Patient: models.Patient{
						ID:                      row.Patient.ID,
						HumanReadableIdentifier: row.Patient.HumanReadableIdentifier,
						Notes:                   row.Patient.Notes,
						BedID:                   row.Patient.BedID,
						IsDischarged:            row.Patient.IsDischarged,
					},
				}
				tasks = append(tasks, task)
				tasksMap[row.Task.ID] = len(tasks) - 1
			}

			if row.SubtaskID != nil {
				task.Subtasks[*row.SubtaskID] = models.Subtask{
					ID:        *row.SubtaskID,
					Name:      *row.SubtaskName,
					Done:      *row.SubtaskDone,
					CreatedBy: *row.SubtaskCreatedBy,
				}
			}
		}

		return tasks, nil
	}
}
