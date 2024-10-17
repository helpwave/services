package v1

import (
	"common"
	"context"
	"hwdb"
	"hwutil"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/models"
	"tasks-svc/repos/patient_repo"
)

type GetPatientsByWardQueryHandler func(ctx context.Context, wardID uuid.UUID) ([]*models.PatientWithConsistency, error)

func NewGetPatientsByWardQueryHandler() GetPatientsByWardQueryHandler {
	return func(ctx context.Context, wardID uuid.UUID) ([]*models.PatientWithConsistency, error) {
		patientRepo := patient_repo.New(hwdb.GetDB())

		patients, err := patientRepo.GetPatientsByWard(ctx, wardID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		return hwutil.Map(patients, func(patient patient_repo.Patient) *models.PatientWithConsistency {
			return &models.PatientWithConsistency{
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
		}), nil
	}
}
