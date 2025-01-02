package v1

import (
	"common"
	"context"
	v1 "gen/libs/common/v1"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"
	"hwes/errs"
	"time"

	"tasks-svc/internal/patient/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
)

type CreatePatientCommandHandler func(
	ctx context.Context,
	patientID uuid.UUID,
	humanReadableIdentifier string,
	notes *string,
	gender v1.Gender,
	dateOfBirth *time.Time,
) (common.ConsistencyToken, error)

func NewCreatePatientCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CreatePatientCommandHandler {
	return func(
		ctx context.Context,
		patientID uuid.UUID,
		humanReadableIdentifier string,
		notes *string,
		gender v1.Gender,
		dateOfBirth *time.Time,
	) (common.ConsistencyToken, error) {
		a := aggregate.NewPatientAggregate(patientID)

		// check permissions
		user := commonPerm.UserFromCtx(ctx)
		org := commonPerm.OrganizationFromCtx(ctx)
		check := hwauthz.NewPermissionCheck(user, perm.OrganizationCanUserCreatePatient, org)
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return 0, err
		}

		if exists {
			return 0, errs.ErrAlreadyExists
		}

		finalNotes := ""
		if notes != nil {
			finalNotes = *notes
		}

		if err := a.CreatePatient(ctx, humanReadableIdentifier, finalNotes, gender, dateOfBirth); err != nil {
			return 0, err
		}

		return as.Save(ctx, a)
	}
}
