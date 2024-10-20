package v1

import (
	"context"
	"fmt"
	"hwes"

	"github.com/google/uuid"

	"property-svc/internal/property-set/aggregate"
	"property-svc/internal/property-set/models"
)

type GetPropertySetByIDQueryHandler func(ctx context.Context, propertySetID uuid.UUID) (*models.PropertySet, error)

func NewGetPropertySetByIDQueryHandler(as hwes.AggregateStore) GetPropertySetByIDQueryHandler {
	return func(ctx context.Context, propertySetID uuid.UUID) (*models.PropertySet, error) {
		propertySetAggregate, err := aggregate.LoadPropertySetAggregate(ctx, as, propertySetID)
		if err != nil {
			return nil, fmt.Errorf("GetPropertySetByIDQueryHandler: %w", err)
		}
		return propertySetAggregate.PropertySet, err
	}
}
