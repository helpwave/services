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
	Consistency uint64
	Was         *models.Patient
	Is          *models.Patient
}

type UpdatePatientCommandHandler func(ctx context.Context, patientID uuid.UUID, expConsistency *uint64, humanReadableIdentifier, notes *string) (common.ConsistencyToken, *UpdatePatientConflict, error)

func NewUpdatePatientCommandHandler(as hwes.AggregateStore) UpdatePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, expConsistency *uint64, humanReadableIdentifier, notes *string) (common.ConsistencyToken, *UpdatePatientConflict, error) {
		a, oldState, err := aggregate.LoadPatientAggregateWithSnapshotAt(ctx, as, patientID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		// an update was performed since expConsistency
		if expConsistency != nil && *expConsistency != a.GetVersion() {
			return 0, &UpdatePatientConflict{
				Consistency: a.GetVersion(),
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
