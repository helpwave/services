package v1

import (
	"context"
	"hwes"

	"github.com/google/uuid"

	"property-svc/internal/property-value/aggregate"
	"property-svc/internal/property-value/models"
)

type GetPropertyValueByIDQueryHandler func(ctx context.Context, propertyID uuid.UUID) (*models.PropertyValue, error)

func NewGetPropertyValueByIDQueryHandler(as hwes.AggregateStore) GetPropertyValueByIDQueryHandler {
	return func(ctx context.Context, propertyID uuid.UUID) (*models.PropertyValue, error) {
		propertyAggregate, err := aggregate.LoadPropertyValueAggregate(ctx, as, propertyID)
		if err != nil {
			return nil, err
		}
		return propertyAggregate.PropertyValue, err
	}
}
