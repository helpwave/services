package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type UpdatePatientCommandHandler func(ctx context.Context, patientID uuid.UUID, humanReadableIdentifier *string, notes *string) error

func NewUpdatePatientCommandHandler(as hwes.AggregateStore) UpdatePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, humanReadableIdentifier *string, notes *string) error {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return err
		}

		if humanReadableIdentifier != nil {
			if err := a.UpdateHumanReadableIdentifier(ctx, a.Patient.HumanReadableIdentifier, *humanReadableIdentifier); err != nil {
				return err
			}
		}

		if notes != nil {
			if err := a.UpdateNotes(ctx, a.Patient.Notes, *notes); err != nil {
				return err
			}
		}

		return as.Save(ctx, a)
	}
}
