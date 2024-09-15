package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type DeletePatientCommandHandler func(ctx context.Context, patientID uuid.UUID) error

func NewDeletePatientCommandHandler(as hwes.AggregateStore) DeletePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) error {
		patientAggregate, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return err
		}

		if err := patientAggregate.DeletePatient(ctx); err != nil {
			return err
		}

		return as.Save(ctx, patientAggregate)
	}
}
