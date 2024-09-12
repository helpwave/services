package v1

import (
	"context"
	"github.com/google/uuid"
	"hwdb"
	"tasks-svc/internal/patient/models"
	"tasks-svc/repos/patient_repo"
)

type GetPatientByBedQueryHandler func(ctx context.Context, bedID uuid.UUID) (*models.Patient, error)

func NewGetPatientByBedQueryHandler() GetPatientByBedQueryHandler {
	return func(ctx context.Context, bedID uuid.UUID) (*models.Patient, error) {
		patientRepo := patient_repo.New(hwdb.GetDB())

		patient, err := hwdb.Optional(patientRepo.GetPatientByBed)(ctx, &bedID)
		if patient == nil {
			return nil, nil
		}
		if err := hwdb.Error(ctx, err); err != nil {
			return nil, err
		}

		return &models.Patient{
			ID:                      patient.ID,
			HumanReadableIdentifier: patient.HumanReadableIdentifier,
			Notes:                   patient.Notes,
			BedID:                   patient.BedID,
			IsDischarged:            patient.IsDischarged,
			CreatedAt:               patient.CreatedAt.Time,
			UpdatedAt:               patient.UpdatedAt.Time,
		}, nil
	}
}
