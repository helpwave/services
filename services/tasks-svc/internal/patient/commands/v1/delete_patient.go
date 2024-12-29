package v1

import (
	"common"
	"context"
	"hwauthz"
	"hwauthz/commonperm"
	"hwes"

	"tasks-svc/internal/patient/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
)

type DeletePatientCommandHandler func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error)

func NewDeletePatientCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) DeletePatientCommandHandler {
	return func(ctx context.Context, patientID uuid.UUID) (common.ConsistencyToken, error) {
		user := commonperm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, perm.PatientCanUserDelete, perm.Patient(patientID))
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		patientAggregate, err := aggregate.LoadPatientAggregate(ctx, as, patientID)
		if err != nil {
			return 0, err
		}

		if err := patientAggregate.DeletePatient(ctx); err != nil {
			return 0, err
		}

		return as.Save(ctx, patientAggregate)
	}
}
