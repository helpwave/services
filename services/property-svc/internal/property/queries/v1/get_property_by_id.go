package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/aggregate"
	"property-svc/internal/property/models"
)

type GetPropertyByIDQueryHandler func(ctx context.Context, propertyID uuid.UUID) (*models.Property, error)

func NewGetPropertyByIDQueryHandler(as hwes.AggregateStore) GetPropertyByIDQueryHandler {
	return func(ctx context.Context, propertyID uuid.UUID) (*models.Property, error) {
		propertyAggregate, err := aggregate.LoadPropertyAggregate(ctx, as, propertyID)
		if err != nil {
			return nil, err
		}
		return propertyAggregate.Property, err
	}
}
