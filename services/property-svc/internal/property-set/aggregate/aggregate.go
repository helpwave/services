package aggregate

import (
	"context"
	"github.com/google/uuid"
	"hwes"
	propertySetEventsV1 "property-svc/internal/property-set/events/v1"
	"property-svc/internal/property-set/models"
)

const PropertySetAggregateType = "property_set"

type PropertySetAggregate struct {
	*hwes.AggregateBase
	PropertySet *models.PropertySet
}

func NewPropertySetAggregate(id uuid.UUID) *PropertySetAggregate {
	aggregate := &PropertySetAggregate{PropertySet: models.NewPropertySet()}
	aggregate.AggregateBase = hwes.NewAggregateBase(PropertySetAggregateType, id)
	aggregate.PropertySet.ID = id
	aggregate.initEventListeners()
	return aggregate
}

func LoadPropertySetAggregate(
	ctx context.Context,
	as hwes.AggregateStore,
	id uuid.UUID,
) (*PropertySetAggregate, error) {
	propertySet := NewPropertySetAggregate(id)
	if err := as.Load(ctx, propertySet); err != nil {
		return nil, err
	}
	return propertySet, nil
}

func (a *PropertySetAggregate) initEventListeners() {
	a.RegisterEventListener(propertySetEventsV1.PropertySetCreated, a.onPropertySetCreated)
}

// Event handlers
func (a *PropertySetAggregate) onPropertySetCreated(evt hwes.Event) error {
	var payload propertySetEventsV1.PropertySetCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.PropertySet.Name = payload.Name

	return nil
}
