package v1

import (
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"golang.org/x/net/context"
	"hwdb"
	"hwes"
	"tasks-svc/internal/task/models"
	"tasks-svc/repos/task_repo"
)

type GetTasksByPatientIDQueryHandler func(ctx context.Context, patientID uuid.UUID) ([]*models.Task, error)

func NewGetTasksByPatientIDQueryHandler(as hwes.AggregateStore) GetTasksByPatientIDQueryHandler {
	return func(ctx context.Context, patientID uuid.UUID) ([]*models.Task, error) {
		db := hwdb.GetDB()
		taskRepo := task_repo.New(db)

		tasksWithSubtasks, err := taskRepo.GetTasksWithSubtasksByPatient(ctx, patientID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		tasks := make([]*models.Task, 0)
		tasksMap := make(map[uuid.UUID]int)

		for _, row := range tasksWithSubtasks {
			var task *models.Task

			if ix, exists := tasksMap[row.Task.ID]; exists {
				task = tasks[ix]
			} else {
				task = &models.Task{
					ID:            row.Task.ID,
					Name:          row.Task.Name,
					Description:   row.Task.Description,
					Status:        pb.TaskStatus(row.Task.Status),
					AssignedUsers: []uuid.UUID{row.Task.AssignedUserID.UUID}, // TODO: #760
					PatientID:     row.Task.PatientID,
					Public:        row.Task.Public,
					DueAt:         row.Task.DueAt.Time,
					CreatedBy:     row.Task.CreatedBy,
					CreatedAt:     row.Task.CreatedAt.Time,
					Subtasks:      make(map[uuid.UUID]models.Subtask),
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
