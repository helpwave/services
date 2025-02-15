package aggregate

import (
	"context"
	"fmt"
	"hwes"

	"github.com/google/uuid"

	propertyEventsV1 "property-svc/internal/property-value/events/v1"
	"property-svc/internal/property-value/models"
)

const PropertyValueAggregateType = "property_value"

type PropertyValueAggregate struct {
	*hwes.AggregateBase
	PropertyValue *models.PropertyValue
}

func NewPropertyValueAggregate(id uuid.UUID) *PropertyValueAggregate {
	aggregate := &PropertyValueAggregate{PropertyValue: models.NewPropertyValue()}
	aggregate.AggregateBase = hwes.NewAggregateBase(PropertyValueAggregateType, id)
	aggregate.PropertyValue.ID = id
	aggregate.initEventListeners()
	return aggregate
}

func LoadPropertyValueAggregate(
	ctx context.Context,
	as hwes.AggregateStore,
	id uuid.UUID,
) (*PropertyValueAggregate, error) {
	property := NewPropertyValueAggregate(id)
	if err := as.Load(ctx, property); err != nil {
		return nil, fmt.Errorf("LoadPropertyValueAggregate: %w", err)
	}
	return property, nil
}

func (a *PropertyValueAggregate) initEventListeners() {
	a.RegisterEventListener(propertyEventsV1.PropertyValueCreated, a.onPropertyValueCreated)
	a.RegisterEventListener(propertyEventsV1.PropertyValueUpdated, a.onPropertyValueUpdated)
}

func (a *PropertyValueAggregate) onPropertyValueCreated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertyValueCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		return fmt.Errorf("PropertyValueAggregate.onPropertyValueCreated: invalid payload: %w", err)
	}

	propertyID, err := uuid.Parse(payload.PropertyID)
	if err != nil {
		return fmt.Errorf("PropertyValueAggregate.onPropertyValueCreated: invalid PropertyID: %w", err)
	}

	subjectID, err := uuid.Parse(payload.SubjectID)
	if err != nil {
		return fmt.Errorf("PropertyValueAggregate.onPropertyValueCreated: invalid SubjectID: %w", err)
	}

	a.PropertyValue.PropertyID = propertyID
	a.PropertyValue.SubjectID = subjectID

	value := &models.SimpleTypedValue{}
	payload.Change.Apply(value)
	a.PropertyValue.Value = value

	return nil
}

func (a *PropertyValueAggregate) onPropertyValueUpdated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertyValueUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		return err
	}

	if payload.Change.ValueRemoved {
		a.PropertyValue.Value = nil
		return nil
	}

	payload.Change.Apply(a.PropertyValue.Value)

	return nil
}
