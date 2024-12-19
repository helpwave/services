package v1

import (
	"common"
	"common/auth"
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwdb"
	"hwutil"

	"tasks-svc/internal/patient/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/models"
	tasksModels "tasks-svc/internal/task/models"
	"tasks-svc/repos/patient_repo"
)

type GetAllPatientsWithDetailsQueryHandler func(ctx context.Context) ([]*models.PatientDetails, error)

func NewGetAllPatientsWithDetailsQueryHandler(authz hwauthz.AuthZ) GetAllPatientsWithDetailsQueryHandler {
	return func(ctx context.Context) ([]*models.PatientDetails, error) {
		patientRepo := patient_repo.New(hwdb.GetDB(ctx))

		// gather inputs
		organizationID := auth.MustGetOrganizationID(ctx)
		user := commonPerm.UserFromCtx(ctx)

		// do query
		rows, err := patientRepo.GetAllPatientsWithTasksBedAndRoom(ctx, organizationID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		patientDetails := make([]*models.PatientDetails, 0)
		patientDetailsMap := make(map[uuid.UUID]int)
		tasksMap := make(map[uuid.UUID]int)

		for _, row := range rows {
			var patientDetail *models.PatientDetails

			if patientIx, existed := patientDetailsMap[row.Patient.ID]; existed {
				patientDetail = patientDetails[patientIx]
			} else {
				var room *models.Room
				var bed *models.Bed
				if row.RoomID.Valid {
					room = &models.Room{
						ID:          row.RoomID.UUID,
						Name:        *row.RoomName,
						WardID:      row.WardID.UUID,
						Consistency: common.ConsistencyToken(*row.RoomConsistency).String(), //nolint:gosec
					}
				}

				if row.BedID.Valid {
					bed = &models.Bed{
						ID:          row.BedID.UUID,
						Name:        *row.BedName,
						Consistency: common.ConsistencyToken(*row.BedsConsistency).String(), //nolint:gosec
					}
				}

				patientDetail = &models.PatientDetails{
					PatientWithConsistency: models.PatientWithConsistency{
						Patient: models.Patient{
							ID:                      row.Patient.ID,
							HumanReadableIdentifier: row.Patient.HumanReadableIdentifier,
							Notes:                   row.Patient.Notes,
							BedID:                   row.Patient.BedID,
							IsDischarged:            row.Patient.IsDischarged,
							CreatedAt:               row.Patient.CreatedAt.Time,
							UpdatedAt:               row.Patient.UpdatedAt.Time,
						},
						Consistency: common.ConsistencyToken(row.Patient.Consistency).String(), //nolint:gosec
					},
					Room:  room,
					Bed:   bed,
					Tasks: make([]*tasksModels.TaskWithConsistency, 0),
				}

				patientDetails = append(patientDetails, patientDetail)
				patientDetailsMap[row.Patient.ID] = len(patientDetails) - 1
			}

			if !row.TaskID.Valid {
				continue
			}

			var task *tasksModels.TaskWithConsistency
			if taskIx, existed := tasksMap[row.TaskID.UUID]; existed {
				task = patientDetail.Tasks[taskIx]
			} else {
				task = &tasksModels.TaskWithConsistency{
					Task: tasksModels.Task{
						ID:           row.TaskID.UUID,
						Name:         *row.TaskName,
						Description:  *row.TaskDescription,
						Status:       pb.TaskStatus(*row.TaskStatus),
						AssignedUser: row.TaskAssignedUserID, // TODO: #760
						PatientID:    row.Patient.ID,
						Public:       *row.TaskPublic,
						Subtasks:     make(map[uuid.UUID]tasksModels.Subtask),
					},
					Consistency: common.ConsistencyToken(*row.TaskConsistency).String(), //nolint:gosec
				}
				patientDetail.Tasks = append(patientDetail.Tasks, task)
				tasksMap[row.TaskID.UUID] = len(patientDetail.Tasks) - 1
			}

			if row.SubtaskID.Valid {
				task.Subtasks[row.SubtaskID.UUID] = tasksModels.Subtask{
					ID:   row.SubtaskID.UUID,
					Name: *row.SubtaskName,
					Done: *row.SubtaskDone,
				}
			}
		}

		// filter out patients where user is lacking permissions
		//
		// CAUTION: IMPORTANT!
		// WE CURRENTLY DON'T HAVE A WAY TO COMMUNICATE "FORBIDDEN" VALUES TO THE API CONSUMERS
		// ALSO EVERYTHING IS SCOPED TO THE ORG RIGHT NOW
		// THAT'S WE DO NOT DO ANY FURTHER FILTERING (E.G. ROOMS, BEDS, TASKS) HERE
		// THIS NEEDS A SECOND LOOK ONCE PERMISSIONS BECOME MORE FLEXIBLE!

		checks := hwutil.Map(patientDetails, func(detail *models.PatientDetails) hwauthz.PermissionCheck {
			return hwauthz.NewPermissionCheck(user, perm.PatientCanUserGet, perm.Patient(detail.ID))
		})
		allowed, err := authz.BulkCheck(ctx, checks)
		if err != nil {
			return nil, err
		}

		patientDetails = hwutil.Filter(patientDetails, func(i int, _ *models.PatientDetails) bool {
			return allowed[i]
		})

		return patientDetails, nil
	}
}
