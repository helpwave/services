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

type UpdatePatientCommandHandler func(
	ctx context.Context,
	patientID uuid.UUID,
	humanReadableIdentifier *string,
	notes *string,
) (common.ConsistencyToken, error)

func NewUpdatePatientCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UpdatePatientCommandHandler {
	return func(
		ctx context.Context,
		patientID uuid.UUID,
		humanReadableIdentifier *string,
		notes *string,
	) (common.ConsistencyToken, error) {
		user := commonperm.UserFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, perm.PatientCanUserUpdate, perm.Patient(patientID))
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

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
