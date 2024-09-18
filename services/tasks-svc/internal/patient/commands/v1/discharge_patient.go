package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type DischargePatientCommandHandler func(ctx context.Context, patientID uuid.UUID) (uint64, error)

func NewDischargePatientCommandHandler(as hwes.AggregateStore) DischargePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) (uint64, error) {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return 0, err
		}

		if err := a.DischargePatient(ctx); err != nil {
			return 0, err
		}
		return as.Save(ctx, a)
	}
}
