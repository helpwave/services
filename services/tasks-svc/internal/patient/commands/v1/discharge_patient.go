package v1

import (
	"common"
	"context"
	"hwes"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
)

type DischargePatientCommandHandler func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error)

func NewDischargePatientCommandHandler(as hwes.AggregateStore) DischargePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error) {
		a, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return 0, err
		}

		if err := a.DischargePatient(ctx); err != nil {
			return 0, err
		}

		// If a patient is being discharged, the patient is also being unassigned from the bed
		if err := a.UnassignBed(ctx); err != nil {
			return 0, err
		}

		return as.Save(ctx, a)
	}
}
