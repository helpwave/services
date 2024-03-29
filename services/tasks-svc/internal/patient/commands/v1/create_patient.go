package v1

import (
	"context"
	"errors"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type CreatePatientCommandHandler func(ctx context.Context, patientID uuid.UUID, humanReadableIdentifier string, notes *string) error

func NewCreatePatientCommandHandler(as hwes.AggregateStore) CreatePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, humanReadableIdentifier string, notes *string) error {
		a := aggregate.NewPatientAggregate(patientID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return err
		}

		if exists {
			return errors.New("cannot create an already existing aggregate")
		}

		var finalNotes = ""
		if notes != nil {
			finalNotes = *notes
		}

		if err := a.CreatePatient(ctx, humanReadableIdentifier, finalNotes); err != nil {
			return err
		}

		return as.Save(ctx, a)
	}
}
