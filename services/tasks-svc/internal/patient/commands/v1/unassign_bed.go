package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
)

type UnassignBedCommandHandler func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error)

func NewUnassignBedCommandHandler(as hwes.AggregateStore) UnassignBedCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error) {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return 0, err
		}

		if err := a.UnassignBed(ctx); err != nil {
			return 0, err
		}
		return as.Save(ctx, a)
	}
}
