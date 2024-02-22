package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
	"tasks-svc/internal/patient/models"
)

type GetPatientByIDQueryHandler func(ctx context.Context, taskID uuid.UUID) (*models.Patient, error)

func NewGetPatientByIDQueryHandler(as hwes.AggregateStore) GetPatientByIDQueryHandler {
	return func(ctx context.Context, patientID uuid.UUID) (*models.Patient, error) {
		patientAggregate, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return nil, err
		}
		return patientAggregate.Patient, err
	}
}
