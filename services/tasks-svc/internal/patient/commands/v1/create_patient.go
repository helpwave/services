package v1

import (
	"common"
	"context"
	"errors"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"

	"tasks-svc/internal/patient/perm"

	"github.com/google/uuid"

	"tasks-svc/internal/patient/aggregate"
)

type CreatePatientCommandHandler func(
	ctx context.Context,
	patientID uuid.UUID,
	humanReadableIdentifier string,
	notes *string,
) (common.ConsistencyToken, error)

func NewCreatePatientCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CreatePatientCommandHandler {
	return func(
		ctx context.Context,
		patientID uuid.UUID,
		humanReadableIdentifier string,
		notes *string,
	) (common.ConsistencyToken, error) {
		a := aggregate.NewPatientAggregate(patientID)

		// check permissions
		user, err := commonPerm.UserFromCtx(ctx)
		if err != nil {
			return 0, err
		}
		org, err := commonPerm.OrganizationFromCtx(ctx)
		if err != nil {
			return 0, err
		}
		check := hwauthz.NewPermissionCheck(user, perm.OrganizationCanUserCreatePatient, org)
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return 0, err
		}

		if exists {
			return 0, errors.New("cannot create an already existing aggregate")
		}

		finalNotes := ""
		if notes != nil {
			finalNotes = *notes
		}

		if err := a.CreatePatient(ctx, humanReadableIdentifier, finalNotes); err != nil {
			return 0, err
		}

		return as.Save(ctx, a)
	}
}
