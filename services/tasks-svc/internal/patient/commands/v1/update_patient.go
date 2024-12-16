package v1

import (
	"common"
	"context"
	v1 "gen/libs/common/v1"
	"hwauthz"
	"hwauthz/commonPerm"
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
	gender *v1.Gender,
	dateOfBirth *v1.Date,
) (common.ConsistencyToken, error)

func NewUpdatePatientCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) UpdatePatientCommandHandler {
	return func(
		ctx context.Context,
		patientID uuid.UUID,
		humanReadableIdentifier *string,
		notes *string,
		gender *v1.Gender,
		dateOfBirth *v1.Date,
	) (common.ConsistencyToken, error) {
		user := commonPerm.UserFromCtx(ctx)
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

		if gender != nil {
			if err := a.UpdateGender(ctx, *gender); err != nil {
				return 0, err
			}
		}

		if dateOfBirth != nil {
			if err := a.UpdateDateOfBirth(ctx, dateOfBirth.Date.AsTime()); err != nil {
				return 0, err
			}
		}

		return as.Save(ctx, a)
	}
}
