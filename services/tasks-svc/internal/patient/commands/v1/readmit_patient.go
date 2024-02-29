package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type ReadmitPatientCommandHandler func(ctx context.Context, patientID uuid.UUID) error

func NewReadmitPatientCommandHandler(as hwes.AggregateStore) ReadmitPatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) error {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return err
		}

		if err := a.ReadmitPatient(ctx); err != nil {
			return err
		}
		return as.Save(ctx, a)
	}
}
