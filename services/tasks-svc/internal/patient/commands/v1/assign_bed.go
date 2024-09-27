package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
	"tasks-svc/internal/patient/models"
)

type AssignBedConflict struct {
	Consistency uint64
	Was         *models.Patient
	Is          *models.Patient
}

type AssignBedCommandHandler func(ctx context.Context, patientID uuid.UUID, bedID uuid.UUID, expConsistency *uint64) (common.ConsistencyToken, *AssignBedConflict, error)

func NewAssignBedCommandHandler(as hwes.AggregateStore) AssignBedCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, bedID uuid.UUID, expConsistency *uint64) (common.ConsistencyToken, *AssignBedConflict, error) {
		a, oldState, err := aggregate.LoadPatientAggregateWithSnapshotAt(ctx, as, patientID, expConsistency)
		if err != nil {
			return 0, nil, err
		}

		// update happened since
		if expConsistency != nil && *expConsistency != a.GetVersion() {
			return 0, &AssignBedConflict{
				Consistency: a.GetVersion(),
				Was:         oldState,
				Is:          a.Patient,
			}, nil
		}

		if err := a.AssignBed(ctx, bedID); err != nil {
			return 0, nil, err
		}

		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
