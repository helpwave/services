package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
	"tasks-svc/internal/patient/models"
)

type GetPatientByIDQueryHandler func(ctx context.Context, patientID uuid.UUID) (*models.PatientWithConsistency, error)

func NewGetPatientByIDQueryHandler(as hwes.AggregateStore) GetPatientByIDQueryHandler {
	return func(ctx context.Context, patientID uuid.UUID) (*models.PatientWithConsistency, error) {
		patientAggregate, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return nil, err
		}
		return &models.PatientWithConsistency{
			Patient:     *patientAggregate.Patient,
			Consistency: common.ConsistencyToken(patientAggregate.GetVersion()).String(),
		}, nil
	}
}
