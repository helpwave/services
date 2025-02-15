package v1

import (
	"common"
	pb "gen/services/tasks_svc/v1"
	"hwauthz"
	"hwauthz/commonperm"
	"hwdb"
	"hwutil"

	"github.com/google/uuid"
	"golang.org/x/net/context"

	patientPerm "tasks-svc/internal/patient/perm"
	"tasks-svc/internal/task/perm"

	"tasks-svc/internal/task/models"
	"tasks-svc/repos/task-repo"
)

type GetTasksByPatientIDQueryHandler func(
	ctx context.Context,
	patientID uuid.UUID,
) ([]*models.TaskWithConsistency, error)

func NewGetTasksByPatientIDQueryHandler(authz hwauthz.AuthZ) GetTasksByPatientIDQueryHandler {
	return func(ctx context.Context, patientID uuid.UUID) ([]*models.TaskWithConsistency, error) {
		// check permissions
		user := commonperm.UserFromCtx(ctx)
		taskCheck := hwauthz.NewPermissionCheck(user, patientPerm.PatientCanUserGet, patientPerm.Patient(patientID))
		if err := authz.Must(ctx, taskCheck); err != nil {
			return nil, err
		}

		taskRepo := taskrepo.New(hwdb.GetDB())

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

		// filter out tasks if permissions are missing
		checks := hwutil.Map(tasks, func(task *models.TaskWithConsistency) hwauthz.PermissionCheck {
			return hwauthz.NewPermissionCheck(user, perm.TaskCanUserGet, perm.Task(task.ID))
		})
		allowed, err := authz.BulkCheck(ctx, checks)
		if err != nil {
			return nil, err
		}

		tasks = hwutil.Filter(tasks, func(i int, _ *models.TaskWithConsistency) bool {
			return allowed[i]
		})

		return tasks, nil
	}
}
