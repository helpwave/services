package v1

import (
	"context"
	"github.com/google/uuid"
	"hwdb"
	"hwes"
	"hwutil"
	"tasks-svc/internal/patient/models"
	"tasks-svc/repos/patient_repo"
)

type GetPatientsByWardQueryHandler func(ctx context.Context, wardID uuid.UUID) ([]*models.Patient, error)

func NewGetPatientsByWardQueryHandler(_ hwes.AggregateStore) GetPatientsByWardQueryHandler {
	return func(ctx context.Context, wardID uuid.UUID) ([]*models.Patient, error) {
		db := hwdb.GetDB()
		patientRepo := patient_repo.New(db)

		patients, err := patientRepo.GetPatientsByWard(ctx, wardID)
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		return hwutil.Map(patients, func(patient patient_repo.Patient) *models.Patient {
			return &models.Patient{
				ID:                      patient.ID,
				HumanReadableIdentifier: patient.HumanReadableIdentifier,
				Notes:                   patient.Notes,
				BedID:                   patient.BedID,
				IsDischarged:            patient.IsDischarged != 0,
				CreatedAt:               patient.CreatedAt.Time,
				UpdatedAt:               patient.UpdatedAt.Time,
			}
		}), nil
	}
}
