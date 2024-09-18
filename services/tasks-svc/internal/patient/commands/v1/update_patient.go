package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type UpdatePatientCommandHandler func(ctx context.Context, patientID uuid.UUID, humanReadableIdentifier *string, notes *string) (uint64, error)

func NewUpdatePatientCommandHandler(as hwes.AggregateStore) UpdatePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, humanReadableIdentifier *string, notes *string) (uint64, error) {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return 0, err
		}

		if humanReadableIdentifier != nil {
			if err := a.UpdateHumanReadableIdentifier(ctx, *humanReadableIdentifier); err != nil {
				return 0, err
			}
		}

		if notes != nil {
			if err := a.UpdateNotes(ctx, *notes); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
