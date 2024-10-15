package v1

import (
	"common"
	"context"
	"hwdb"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/models"
	"tasks-svc/repos/patient_repo"
)

type GetPatientByBedQueryHandler func(ctx context.Context, bedID uuid.UUID) (*models.PatientWithConsistency, error)

func NewGetPatientByBedQueryHandler() GetPatientByBedQueryHandler {
	return func(ctx context.Context, bedID uuid.UUID) (*models.PatientWithConsistency, error) {
		patientRepo := patient_repo.New(hwdb.GetDB())

		patient, err := hwdb.Optional(patientRepo.GetPatientByBed)(ctx, uuid.NullUUID{
			UUID:  bedID,
			Valid: true,
		})
		if patient == nil {
			return nil, nil
		}
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

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
		}, nil
	}
}
