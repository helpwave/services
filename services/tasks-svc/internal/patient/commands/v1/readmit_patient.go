package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
)

type ReadmitPatientCommandHandler func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error)

func NewReadmitPatientCommandHandler(as hwes.AggregateStore) ReadmitPatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error) {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return 0, err
		}

		if err := a.ReadmitPatient(ctx); err != nil {
			return 0, err
		}
		return as.Save(ctx, a)
	}
}
