package v1

import (
	"common"
	"context"
	"errors"
	"fmt"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"

	"property-svc/internal/property-set/perm"

	"github.com/google/uuid"

	"property-svc/internal/property-set/aggregate"
)

var ErrAlreadyExists = errors.New("cannot create an already existing aggregate")

type CreatePropertySetCommandHandler func(
	ctx context.Context,
	propertySetID uuid.UUID,
	name string,
) (common.ConsistencyToken, error)

func NewCreatePropertySetCommandHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) CreatePropertySetCommandHandler {
	return func(ctx context.Context, propertySetID uuid.UUID, name string) (common.ConsistencyToken, error) {
		user, err := commonPerm.UserFromCtx(ctx)
		if err != nil {
			return 0, err
		}
		org, err := commonPerm.OrganizationFromCtx(ctx)
		if err != nil {
			return 0, err
		}

		check := hwauthz.NewPermissionCheck(user, perm.OrganizationCanUserCreatePropertySet, org)
		if err := authz.Must(ctx, check); err != nil {
			return 0, err
		}

		a := aggregate.NewPropertySetAggregate(propertySetID)

		exists, err := as.Exists(ctx, a)
		if err != nil {
			return 0, fmt.Errorf("CreatePropertySetCommandHandler: Exists failed: %w", err)
		}

		if exists {
			return 0, ErrAlreadyExists
		}

		if err := a.CreatePropertySet(ctx, name); err != nil {
			return 0, fmt.Errorf("CreatePropertySetCommandHandler: %w", err)
		}

		return as.Save(ctx, a)
	}
}
