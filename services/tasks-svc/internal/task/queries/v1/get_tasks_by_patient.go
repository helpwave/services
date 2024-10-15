package v1

import (
	"common"
	pb "gen/services/tasks_svc/v1"
	"hwdb"

	"github.com/google/uuid"
	"golang.org/x/net/context"

	"tasks-svc/internal/task/models"
	"tasks-svc/repos/task_repo"
)

type GetTasksByPatientIDQueryHandler func(
	ctx context.Context,
	patientID uuid.UUID,
) ([]*models.TaskWithConsistency, error)

func NewGetTasksByPatientIDQueryHandler() GetTasksByPatientIDQueryHandler {
	return func(ctx context.Context, patientID uuid.UUID) ([]*models.TaskWithConsistency, error) {
		taskRepo := task_repo.New(hwdb.GetDB())

		tasksWithSubtasks, err := taskRepo.GetTasksWithSubtasksByPatient(ctx, patientID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		tasks := make([]*models.TaskWithConsistency, 0)
		tasksMap := make(map[uuid.UUID]int)

		for _, row := range tasksWithSubtasks {
			var task *models.TaskWithConsistency

			if ix, exists := tasksMap[row.Task.ID]; exists {
				task = tasks[ix]
			} else {
				task = &models.TaskWithConsistency{
					Task: models.Task{
						ID:           row.Task.ID,
						Name:         row.Task.Name,
						Description:  row.Task.Description,
						Status:       pb.TaskStatus(row.Task.Status),
						AssignedUser: row.Task.AssignedUserID, // TODO: #760
						PatientID:    row.Task.PatientID,
						Public:       row.Task.Public,
						DueAt:        nil, // may be set below
						CreatedBy:    row.Task.CreatedBy,
						CreatedAt:    row.Task.CreatedAt.Time,
						Subtasks:     make(map[uuid.UUID]models.Subtask),
					},
					Consistency: common.ConsistencyToken(row.Task.Consistency).String(), //nolint:gosec
				}

				if row.Task.DueAt.Valid {
					task.DueAt = &row.Task.DueAt.Time
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
