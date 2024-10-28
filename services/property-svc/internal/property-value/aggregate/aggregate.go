package aggregate

import (
	"common"
	"context"
	"fmt"
	"hwes"

	"github.com/google/uuid"
	"github.com/jinzhu/copier"

	propertyEventsV1 "property-svc/internal/property-value/events/v1"
	"property-svc/internal/property-value/models"
)

const PropertyValueAggregateType = "property_value"

type PropertyValueAggregate struct {
	*hwes.AggregateBase
	PropertyValue *models.PropertyValue
}

func NewPropertyValueAggregate(id uuid.UUID) *PropertyValueAggregate {
	aggregate := &PropertyValueAggregate{
		PropertyValue: &models.PropertyValue{
			ID:         id,
			PropertyID: uuid.UUID{},
			SubjectID:  uuid.UUID{},
			Value:      nil,
		},
		AggregateBase: hwes.NewAggregateBase(PropertyValueAggregateType, id),
	}
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

func LoadPropertyValueAggregateWithSnapshotAt(
	ctx context.Context,
	as hwes.AggregateStore,
	id uuid.UUID,
	pauseAt *common.ConsistencyToken,
) (*PropertyValueAggregate, *models.PropertyValue, error) {
	property := NewPropertyValueAggregate(id)

	var snapshot *models.PropertyValue

	if pauseAt != nil {
		//  load pauseAt+1-many events (version is 0-indexed)
		if err := as.LoadN(ctx, property, uint64(*pauseAt)+1); err != nil {
			return nil, nil, err
		}

		var cpy models.PropertyValue
		if err := copier.CopyWithOption(&cpy, property.PropertyValue, copier.Option{DeepCopy: true}); err != nil {
			return nil, nil, fmt.Errorf("LoadPropertyValueAggregateWithSnapshotAt: could not copy snapshot: %w", err)
		}
		snapshot = &cpy
	}

	// load the rest
	if err := as.Load(ctx, property); err != nil {
		return nil, nil, fmt.Errorf("LoadPropertyValueAggregateWithSnapshotAt: %w", err)
	}
	return property, snapshot, nil
}

func (a *PropertyValueAggregate) initEventListeners() {
	a.RegisterEventListener(propertyEventsV1.PropertyValueCreated, a.onPropertyValueCreated)
	a.RegisterEventListener(propertyEventsV1.PropertyValueUpdated, a.onPropertyValueUpdated)
}

func (a *PropertyValueAggregate) onPropertyValueCreated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertyValueCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
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
	payload.ValueChange.Apply(value)
	a.PropertyValue.Value = value

	return nil
}

func (a *PropertyValueAggregate) onPropertyValueUpdated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertyValueUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	if payload.ValueChange.ValueRemoved {
		a.PropertyValue.Value = nil
		return nil
	}

	payload.ValueChange.Apply(a.PropertyValue.Value)

	return nil
}
