package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"

	"tasks-svc/internal/patient/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
)

type DischargePatientCommandHandler func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error)

func NewDischargePatientCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) DischargePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error) {
		user := commonPerm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, perm.PatientCanUserUpdate, perm.Patient(patientID))
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

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
