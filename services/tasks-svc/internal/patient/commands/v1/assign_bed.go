package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
)

type AssignBedCommandHandler func(ctx context.Context, patientID uuid.UUID, bedID uuid.UUID) error

func NewAssignBedCommandHandler(as hwes.AggregateStore) AssignBedCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID, bedID uuid.UUID) error {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return err
		}

		if err := a.AssignBed(ctx, a.Patient.BedID, bedID); err != nil {
			return err
		}
		return as.Save(ctx, a)
	}
}
