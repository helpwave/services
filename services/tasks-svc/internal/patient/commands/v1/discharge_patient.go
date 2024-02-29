package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type DischargePatientCommandHandler func(ctx context.Context, patientID uuid.UUID) error

func NewDischargePatientCommandHandler(as hwes.AggregateStore) DischargePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) error {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return err
		}

		if err := a.DischargePatient(ctx); err != nil {
			return err
		}
		return as.Save(ctx, a)
	}
}
