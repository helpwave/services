package v1

import (
	"common"
	"context"
	v1 "gen/libs/common/v1"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwdb"
	"hwes"

	"tasks-svc/internal/patient/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/models"
	th "tasks-svc/internal/task/handlers"
	"tasks-svc/repos/patient_repo"
)

type GetPatientDetailsByIDQueryHandler func(ctx context.Context, patientID uuid.UUID) (*models.PatientDetails, error)

func NewGetPatientWithDetailsByIDQueryHandler(
	as hwes.AggregateStore, authz hwauthz.AuthZ,
) GetPatientDetailsByIDQueryHandler {
	return func(ctx context.Context, patientID uuid.UUID) (*models.PatientDetails, error) {
		patientRepo := patient_repo.New(hwdb.GetDB())
		taskHandlers := th.NewTaskHandlers(as, authz)

		// check permissions
		user := commonPerm.UserFromCtx(ctx)
		taskCheck := hwauthz.NewPermissionCheck(user, perm.PatientCanUserGet, perm.Patient(patientID))
		if err := authz.Must(ctx, taskCheck); err != nil {
			return nil, err
		}

		patientRes, err := hwdb.Optional(patientRepo.GetPatientWithBedAndRoom)(ctx, patientID)
		if patientRes == nil {
			return nil, nil
		}
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		var bed *models.Bed
		var room *models.Room

		tasks, err := taskHandlers.Queries.V1.GetTasksByPatient(ctx, patientID)
		if err != nil {
			return nil, err
		}

		if patientRes.BedID.Valid {
			bed = &models.Bed{
				ID:          patientRes.BedID.UUID,
				Name:        *patientRes.BedName,
				Consistency: common.ConsistencyToken(*patientRes.BedConsistency).String(), //nolint:gosec
			}
		}

		if patientRes.RoomID.Valid {
			room = &models.Room{
				ID:          patientRes.RoomID.UUID,
				Name:        *patientRes.RoomName,
				WardID:      patientRes.WardID.UUID,
				Consistency: common.ConsistencyToken(*patientRes.RoomConsistency).String(), //nolint:gosec
			}
		}

		return &models.PatientDetails{
			PatientWithConsistency: models.PatientWithConsistency{
				Patient: models.Patient{
					PatientBase: models.PatientBase{
						ID:                      patientRes.ID,
						HumanReadableIdentifier: patientRes.HumanReadableIdentifier,
						Gender:                  v1.Gender(patientRes.Gender),
					},
					Notes:        patientRes.Notes,
					BedID:        patientRes.BedID,
					IsDischarged: patientRes.IsDischarged,
					CreatedAt:    patientRes.CreatedAt.Time,
					UpdatedAt:    patientRes.UpdatedAt.Time,
					DateOfBirth:  hwdb.DateToTime(patientRes.DateOfBirth),
				},
				Consistency: common.ConsistencyToken(patientRes.Consistency).String(), //nolint:gosec
			},
			Tasks: tasks,
			Bed:   bed,
			Room:  room,
		}, nil
	}
}
