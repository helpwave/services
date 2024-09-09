package aggregate

import (
	"context"
	"fmt"
	"github.com/google/uuid"
	propertyEventsV1 "property-svc/internal/property-value/events/v1"
)

func (a *PropertyValueAggregate) CreatePropertyValue(ctx context.Context, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID) error {
	id := a.GetID()

	event, err := propertyEventsV1.NewPropertyValueCreatedEvent(ctx, a, id, propertyID, value, subjectID)
	if err != nil {
		return fmt.Errorf("PropertyValueAggregate.CreatePropertyValue: %w", err)
	}
	return a.Apply(event)
}

func (a *PropertyValueAggregate) UpdatePropertyValue(ctx context.Context, value interface{}) error {
	event, err := propertyEventsV1.NewPropertyValueUpdatedEvent(ctx, a, value)
	if err != nil {
		return fmt.Errorf("PropertyValueAggregate.UpdatePropertyValue: %w", err)
	}
	return a.Apply(event)
}
