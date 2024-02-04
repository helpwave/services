package aggregate

import (
	"context"
	"github.com/google/uuid"
	propertyEventsV1 "property-svc/internal/property-value/events/v1"
)

func (a *PropertyValueAggregate) CreatePropertyValue(ctx context.Context, propertyID uuid.UUID, subjectID uuid.UUID, subjectType string, value interface{}) error {
	id := a.GetID()

	event, err := propertyEventsV1.NewPropertyValueCreatedEvent(a, id, propertyID, subjectID, subjectType, value)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
