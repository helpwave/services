package v1

import (
	"context"
	"fmt"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"

	"property-svc/internal/property-set/perm"

	"github.com/google/uuid"

	"property-svc/internal/property-set/aggregate"
	"property-svc/internal/property-set/models"
)

type GetPropertySetByIDQueryHandler func(ctx context.Context, propertySetID uuid.UUID) (*models.PropertySet, error)

func NewGetPropertySetByIDQueryHandler(as hwes.AggregateStore, authz hwauthz.AuthZ) GetPropertySetByIDQueryHandler {
	return func(ctx context.Context, propertySetID uuid.UUID) (*models.PropertySet, error) {
		user := commonPerm.UserFromCtx(ctx)
		set := perm.PropertySet(propertySetID)
		check := hwauthz.NewPermissionCheck(user, perm.PropertySetCanUserGet, set)

		if err := authz.Must(ctx, check); err != nil {
			return nil, err
		}

		propertySetAggregate, err := aggregate.LoadPropertySetAggregate(ctx, as, propertySetID)
		if err != nil {
			return nil, fmt.Errorf("GetPropertySetByIDQueryHandler: %w", err)
		}
		return propertySetAggregate.PropertySet, err
	}
}
