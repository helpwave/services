package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
	"tasks-svc/internal/patient/models"
)

type UnassignBedCommandHandler func(
	ctx context.Context,
	patientID uuid.UUID,
	expectedConsistency *common.ConsistencyToken,
) (common.ConsistencyToken, *common.Conflict[*models.Patient], error)

func NewUnassignBedCommandHandler(as hwes.AggregateStore) UnassignBedCommandHandler {
	return func(
		ctx context.Context,
		patientID uuid.UUID,
		expectedConsistency *common.ConsistencyToken,
	) (common.ConsistencyToken, *common.Conflict[*models.Patient], error) {
		a, oldState, err := aggregate.LoadPatientAggregateWithSnapshotAt(ctx, as, patientID, expectedConsistency)
		if err != nil {
			return 0, nil, err
		}

		// update has happened since?
		newToken := common.ConsistencyToken(a.GetVersion())
		if expectedConsistency != nil && *expectedConsistency != newToken {
			return newToken, &common.Conflict[*models.Patient]{
				Was: oldState,
				Is:  a.Patient,
			}, nil
		}

		if err := a.UnassignBed(ctx); err != nil {
			return 0, nil, err
		}
		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
