package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwdb"
	"hwutil"
	"tasks-svc/internal/patient/perm"
	wardPerm "tasks-svc/internal/ward/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/models"
	"tasks-svc/repos/patient_repo"
)

type GetPatientsByWardQueryHandler func(ctx context.Context, wardID uuid.UUID) ([]*models.PatientWithConsistency, error)

func NewGetPatientsByWardQueryHandler(authz hwauthz.AuthZ) GetPatientsByWardQueryHandler {
	return func(ctx context.Context, wardID uuid.UUID) ([]*models.PatientWithConsistency, error) {
		patientRepo := patient_repo.New(hwdb.GetDB())

		// check get-access to ward
		user := commonPerm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, wardPerm.WardCanUserGet, wardPerm.Ward(wardID))
		if err := authz.Must(ctx, check); err != nil {
			return nil, err
		}

		patients, err := patientRepo.GetPatientsByWard(ctx, wardID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		checks := hwutil.Map(patients, func(patient patient_repo.Patient) hwauthz.PermissionCheck {
			return hwauthz.NewPermissionCheck(user, perm.PatientCanUserGet, perm.Patient(patient.ID))
		})
		allowed, err := authz.BulkCheck(ctx, checks)
		if err != nil {
			return nil, err
		}

		return hwutil.FlatMapI(patients, func(i int, patient patient_repo.Patient) **models.PatientWithConsistency {
			if !allowed[i] {
				return nil
			}
			res := &models.PatientWithConsistency{
				Patient: models.Patient{
					ID:                      patient.ID,
					HumanReadableIdentifier: patient.HumanReadableIdentifier,
					Notes:                   patient.Notes,
					BedID:                   patient.BedID,
					IsDischarged:            patient.IsDischarged,
					CreatedAt:               patient.CreatedAt.Time,
					UpdatedAt:               patient.UpdatedAt.Time,
				},
				Consistency: common.ConsistencyToken(patient.Consistency).String(), //nolint:gosec
			}
			return &res
		}), nil
	}
}
