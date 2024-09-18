package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type AssignBedCommandHandler func(ctx context.Context, patientID uuid.UUID, bedID uuid.UUID) (uint64, error)

func NewAssignBedCommandHandler(as hwes.AggregateStore) AssignBedCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, bedID uuid.UUID) (uint64, error) {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return 0, err
		}

		if err := a.AssignBed(ctx, bedID); err != nil {
			return 0, err
		}
		return as.Save(ctx, a)
	}
}
