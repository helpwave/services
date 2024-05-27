package v1

import (
	"context"
	"github.com/google/uuid"
	"hwdb"
	"hwes"
	"tasks-svc/internal/patient/models"
	"tasks-svc/repos/patient_repo"
)

type GetPatientByBedQueryHandler func(ctx context.Context, bedID uuid.UUID) (*models.Patient, error)

func NewGetPatientByBedQueryHandler(_ hwes.AggregateStore) GetPatientByBedQueryHandler {
	return func(ctx context.Context, bedID uuid.UUID) (*models.Patient, error) {
		db := hwdb.GetDB()
		patientRepo := patient_repo.New(db)

		patient, err := patientRepo.GetPatientByBed(ctx, uuid.NullUUID{
			UUID:  bedID,
			Valid: true,
		})
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		return &models.Patient{
			ID:                      patient.ID,
			HumanReadableIdentifier: patient.HumanReadableIdentifier,
			Notes:                   patient.Notes,
			BedID:                   patient.BedID,
			IsDischarged:            patient.IsDischarged != 0,
			CreatedAt:               patient.CreatedAt.Time,
			UpdatedAt:               patient.UpdatedAt.Time,
		}, nil
	}
}
