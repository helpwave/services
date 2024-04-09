package aggregate

import (
	"context"
	"github.com/google/uuid"
	propertyEventsV1 "property-svc/internal/property-value/events/v1"
)

func (a *PropertyValueAggregate) CreatePropertyValue(ctx context.Context, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID) error {
	id := a.GetID()

	event, err := propertyEventsV1.NewPropertyValueCreatedEvent(a, id, propertyID, value, subjectID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyValueAggregate) UpdatePropertyValue(ctx context.Context, value *interface{}) error {
	event, err := propertyEventsV1.NewPropertyValueUpdatedEvent(a, value)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
