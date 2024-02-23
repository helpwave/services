package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property-set/aggregate"
	"property-svc/internal/property-set/models"
)

type GetPropertySetByIDQueryHandler func(ctx context.Context, propertySetID uuid.UUID) (*models.PropertySet, error)

func NewGetPropertySetByIDQueryHandler(as hwes.AggregateStore) GetPropertySetByIDQueryHandler {
	return func(ctx context.Context, propertySetID uuid.UUID) (*models.PropertySet, error) {
		propertySetAggregate, err := aggregate.LoadPropertySetAggregate(ctx, as, propertySetID)
		if err != nil {
			return nil, err
		}
		return propertySetAggregate.PropertySet, err
	}
}
