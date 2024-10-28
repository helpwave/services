package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
	"tasks-svc/internal/patient/models"
)

type AssignBedCommandHandler func(
	ctx context.Context,
	patientID uuid.UUID,
	bedID uuid.UUID,
	expConsistency *common.ConsistencyToken,
) (common.ConsistencyToken, *common.Conflict[*models.Patient], error)

func NewAssignBedCommandHandler(as hwes.AggregateStore) AssignBedCommandHandler {
	return func(
		ctx context.Context,
		patientID uuid.UUID,
		bedID uuid.UUID,
		expConsistency *common.ConsistencyToken,
	) (common.ConsistencyToken, *common.Conflict[*models.Patient], error) {
		a, oldState, err := aggregate.LoadPatientAggregateWithSnapshotAt(ctx, as, patientID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		// update happened since?
		newToken := common.ConsistencyToken(a.GetVersion())
		if expConsistency != nil && *expConsistency != newToken {
			return newToken, &common.Conflict[*models.Patient]{
				Was: oldState,
				Is:  a.Patient,
			}, nil
		}

		if err := a.AssignBed(ctx, bedID); err != nil {
			return 0, nil, err
		}

		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
