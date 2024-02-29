package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type UnassignBedCommandHandler func(ctx context.Context, patientID uuid.UUID) error

func NewUnassignBedCommandHandler(as hwes.AggregateStore) UnassignBedCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) error {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return err
		}

		if err := a.UnassignBed(ctx); err != nil {
			return err
		}
		return as.Save(ctx, a)
	}
}
