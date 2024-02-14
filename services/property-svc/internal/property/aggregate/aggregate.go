package aggregate

import (
	"context"
	"fmt"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/internal/property/models"
)

const PropertyAggregateType = "property"

type PropertyAggregate struct {
	*hwes.AggregateBase
	Property *models.Property
}

func NewPropertyAggregate(id uuid.UUID) *PropertyAggregate {
	aggregate := &PropertyAggregate{Property: models.NewProperty()}
	aggregate.AggregateBase = hwes.NewAggregateBase(PropertyAggregateType, id)
	aggregate.Property.ID = id
	aggregate.initEventListeners()
	return aggregate
}

func LoadPropertyAggregate(ctx context.Context, as hwes.AggregateStore, id uuid.UUID) (*PropertyAggregate, error) {
	property := NewPropertyAggregate(id)
	if err := as.Load(ctx, property); err != nil {
		return nil, err
	}
	return property, nil
}

func (a *PropertyAggregate) initEventListeners() {
	a.RegisterEventListener(propertyEventsV1.PropertyCreated, a.onPropertyCreated)
}

// Event handlers
func (a *PropertyAggregate) onPropertyCreated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertyCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	subjectID, err := uuid.Parse(payload.SubjectID)
	if err != nil {
		return err
	}

	value, found := pb.FieldType_value[payload.FieldType]
	if !found {
		return fmt.Errorf("invalid property fieldType: %s", payload.FieldType)
	}

	fieldType := (pb.FieldType)(value)

	a.Property.SubjectID = subjectID
	a.Property.SubjectType = payload.SubjectType
	a.Property.FieldType = fieldType
	a.Property.Name = payload.Name

	return nil
}
