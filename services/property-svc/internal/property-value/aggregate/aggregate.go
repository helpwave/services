package aggregate

import (
	"context"
	"github.com/google/uuid"
	"hwes"
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

func LoadPropertyValueAggregate(ctx context.Context, as hwes.AggregateStore, id uuid.UUID) (*PropertyValueAggregate, error) {
	property := NewPropertyValueAggregate(id)
	if err := as.Load(ctx, property); err != nil {
		return nil, err
	}
	return property, nil
}

func (a *PropertyValueAggregate) initEventListeners() {
	a.RegisterEventListener(propertyEventsV1.PropertyValueCreated, a.onPropertyValueCreated)
}

// Event handlers
func (a *PropertyValueAggregate) onPropertyValueCreated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertyValueCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	subjectID, err := uuid.Parse(payload.SubjectID)
	if err != nil {
		return err
	}

	propertyID, err := uuid.Parse(payload.PropertyID)
	if err != nil {
		return err
	}

	a.PropertyValue.PropertyID = propertyID
	a.PropertyValue.SubjectID = subjectID
	a.PropertyValue.SubjectType = payload.SubjectType
	a.PropertyValue.Value = payload.Value

	return nil
}
