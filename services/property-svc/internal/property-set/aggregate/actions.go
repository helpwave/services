package aggregate

import (
	"context"

	propertyEventsV1 "property-svc/internal/property-set/events/v1"
)

func (a *PropertySetAggregate) CreatePropertySet(ctx context.Context, name string) error {
	id := a.GetID()

	event, err := propertyEventsV1.NewPropertySetCreatedEvent(ctx, a, id, name)
	if err != nil {
		return err
	}

	return a.Apply(event)
}
