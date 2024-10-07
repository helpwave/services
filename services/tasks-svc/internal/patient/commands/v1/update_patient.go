package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
	"tasks-svc/internal/patient/models"
)

type UpdatePatientConflict struct {
	Consistency common.ConsistencyToken
	Was         *models.Patient
	Is          *models.Patient
}

type UpdatePatientCommandHandler func(ctx context.Context, patientID uuid.UUID, expConsistency *common.ConsistencyToken, humanReadableIdentifier, notes *string) (common.ConsistencyToken, *UpdatePatientConflict, error)

func NewUpdatePatientCommandHandler(as hwes.AggregateStore) UpdatePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, expConsistency *common.ConsistencyToken, humanReadableIdentifier, notes *string) (common.ConsistencyToken, *UpdatePatientConflict, error) {
		a, oldState, err := aggregate.LoadPatientAggregateWithSnapshotAt(ctx, as, patientID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		// was an update performed since expConsistency?
		newToken := common.ConsistencyToken(a.GetVersion())
		if expConsistency != nil && *expConsistency != newToken {
			return 0, &UpdatePatientConflict{
				Consistency: newToken,
				Was:         oldState,
				Is:          a.Patient,
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
