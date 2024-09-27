package v1

import (
	"common"
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
	"tasks-svc/internal/patient/models"
)

type UnassignBedConflict struct {
	Consistency uint64
	Was         *models.Patient
	Is          *models.Patient
}

type UnassignBedCommandHandler func(ctx context.Context, patientID uuid.UUID, expectedConsistency *uint64) (common.ConsistencyToken, *UnassignBedConflict, error)

func NewUnassignBedCommandHandler(as hwes.AggregateStore) UnassignBedCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, expectedConsistency *uint64) (common.ConsistencyToken, *UnassignBedConflict, error) {
		a, oldState, err := aggregate.LoadPatientAggregateWithSnapshotAt(ctx, as, patientID, expectedConsistency)
		if err != nil {
			return 0, nil, err
		}

		// update has happened since
		if expectedConsistency != nil && *expectedConsistency != a.GetVersion() {
			return 0, &UnassignBedConflict{
				Consistency: a.GetVersion(),
				Was:         oldState,
				Is:          a.Patient,
			}, nil
		}

		if err := a.UnassignBed(ctx); err != nil {
			return 0, nil, err
		}
		consistency, err := as.Save(ctx, a)
		return consistency, nil, err
	}
}
