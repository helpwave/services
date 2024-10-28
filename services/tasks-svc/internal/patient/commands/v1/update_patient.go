package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
	"tasks-svc/internal/patient/models"
)

type UpdatePatientCommandHandler func(
	ctx context.Context,
	patientID uuid.UUID,
	expConsistency *common.ConsistencyToken,
	humanReadableIdentifier *string,
	notes *string,
) (common.ConsistencyToken, *common.Conflict[*models.Patient], error)

func NewUpdatePatientCommandHandler(as hwes.AggregateStore) UpdatePatientCommandHandler {
	return func(
		ctx context.Context,
		patientID uuid.UUID,
		expConsistency *common.ConsistencyToken,
		humanReadableIdentifier *string,
		notes *string,
	) (common.ConsistencyToken, *common.Conflict[*models.Patient], error) {
		a, oldState, err := aggregate.LoadPatientAggregateWithSnapshotAt(ctx, as, patientID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		// was an update performed since expConsistency?
		newToken := common.ConsistencyToken(a.GetVersion())
		if expConsistency != nil && *expConsistency != newToken {
			return newToken, &common.Conflict[*models.Patient]{
				Was: oldState,
				Is:  a.Patient,
			}, nil
		}

		if humanReadableIdentifier != nil {
			if err := a.UpdateHumanReadableIdentifier(ctx, *humanReadableIdentifier); err != nil {
				return 0, nil, err
			}
		}

		if notes != nil {
			if err := a.UpdateNotes(ctx, *notes); err != nil {
				return 0, nil, err
			}
		}

		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
