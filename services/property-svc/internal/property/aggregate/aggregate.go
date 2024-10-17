package aggregate

import (
	"context"
	"fmt"
	pbTechnicalEventsV1 "gen/libs/technical_events/property_svc/v1"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"hwutil"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/internal/property/models"
)

const PropertyAggregateType = "property"

type PropertyAggregate struct {
	*hwes.AggregateBase
	Property *models.Property
}

func NewPropertyAggregate(id uuid.UUID) *PropertyAggregate {
	aggregate := &PropertyAggregate{
		AggregateBase: hwes.NewAggregateBase(PropertyAggregateType, id),
		Property: &models.Property{
			ID: id,
		},
	}

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

	// TODO: Resolve name not in such a way ...
	updateNameEvent := &pbTechnicalEventsV1.UpdateNameEvent{}
	updateNameEventName, err := hwes.MessageToEventName(updateNameEvent)
	if err != nil {
		panic(err)
	}

	a.RegisterEventListener(propertyEventsV1.PropertyCreated, a.onPropertyCreated)
	a.RegisterEventListener(propertyEventsV1.PropertyDescriptionUpdated, a.onDescriptionUpdated)
	a.RegisterEventListener(propertyEventsV1.PropertySetIDUpdated, a.onSetIDUpdated)
	a.RegisterEventListener(propertyEventsV1.PropertySubjectTypeUpdated, a.onSubjectTypeUpdated)
	a.RegisterEventListener(updateNameEventName, a.onNameUpdated)
	a.RegisterEventListener(propertyEventsV1.PropertyFieldTypeDataCreated, a.onFieldTypeDataCreated)
	a.RegisterEventListener(propertyEventsV1.PropertyFieldTypeDataAllowFreetextUpdated, a.onAllowFreetextUpdated)
	a.RegisterEventListener(propertyEventsV1.PropertyFieldTypeDataSelectOptionsUpserted, a.onFieldTypeDataSelectOptionsUpserted)
	a.RegisterEventListener(propertyEventsV1.PropertyFieldTypeDataSelectOptionsRemoved, a.onFieldTypeDataSelectOptionsRemoved)
	a.RegisterEventListener(propertyEventsV1.PropertyArchived, a.onPropertyArchived)
	a.RegisterEventListener(propertyEventsV1.PropertyRetrieved, a.onPropertyRetrieved)
}

// Event handlers
func (a *PropertyAggregate) onPropertyCreated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertyCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	val, found := pb.FieldType_value[payload.FieldType]
	if !found {
		return fmt.Errorf("invalid property fieldType: %s", payload.FieldType)
	}
	fieldType := (pb.FieldType)(val)

	val, found = pb.SubjectType_value[payload.SubjectType]
	if !found {
		return fmt.Errorf("invalid property subjectType: %s", payload.SubjectType)
	}
	subjectType := (pb.SubjectType)(val)

	a.Property.SubjectType = subjectType
	a.Property.FieldType = fieldType
	a.Property.Name = payload.Name

	return nil
}

func (a *PropertyAggregate) onFieldTypeDataCreated(evt hwes.Event) error {
	var payload propertyEventsV1.FieldTypeDataCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Property.FieldTypeData = payload.FieldTypeData

	return nil
}

func (a *PropertyAggregate) onDescriptionUpdated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertyDescriptionUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Property.Description = payload.Description

	return nil
}

func (a *PropertyAggregate) onSetIDUpdated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertySetIDUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	setID := uuid.NullUUID{UUID: uuid.Nil, Valid: false}
	if len(payload.SetID) > 0 {
		parsedID, err := hwutil.ParseNullUUID(&payload.SetID)
		if err != nil {
			return err
		}
		setID = parsedID
	}

	a.Property.SetID = setID
	return nil
}

func (a *PropertyAggregate) onSubjectTypeUpdated(evt hwes.Event) error {
	var payload propertyEventsV1.PropertySubjectTypeUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	value, found := pb.SubjectType_value[payload.SubjectType]
	if !found {
		return fmt.Errorf("invalid subjectType: %s", payload.SubjectType)
	}
	subjectType := (pb.SubjectType)(value)

	a.Property.SubjectType = subjectType
	return nil
}

func (a *PropertyAggregate) onNameUpdated(evt hwes.Event) error {
	var payload pbTechnicalEventsV1.UpdateNameEvent
	if err := evt.GetProtoData(&payload); err != nil {
		return err
	}

	a.Property.Name = payload.Name
	return nil
}

func (a *PropertyAggregate) onAllowFreetextUpdated(evt hwes.Event) error {
	var payload propertyEventsV1.FieldTypeDataAllowFreetextUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	if a.Property.FieldTypeData.SelectData != nil {
		a.Property.FieldTypeData.SelectData.AllowFreetext = payload.NewAllowFreetext
	} else if a.Property.FieldType == pb.FieldType_FIELD_TYPE_SELECT || a.Property.FieldType == pb.FieldType_FIELD_TYPE_MULTI_SELECT {
		a.Property.FieldTypeData.SelectData = &models.SelectData{
			AllowFreetext: payload.NewAllowFreetext,
		}
	}

	return nil
}

func (a *PropertyAggregate) onFieldTypeDataSelectOptionsUpserted(evt hwes.Event) error {
	var payload propertyEventsV1.FieldTypeDataSelectOptionsUpsertedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	selectOptions := make(map[uuid.UUID]models.SelectOption)

	if a.Property.FieldTypeData.SelectData != nil {
		for _, option := range a.Property.FieldTypeData.SelectData.SelectOptions {
			selectOptions[option.ID] = option
		}
	}

	for _, option := range payload.UpsertedSelectOptions {
		if _, exists := selectOptions[option.ID]; !exists {
			if option.Name == nil {
				return fmt.Errorf("name missing for selectOption with id %s", option.ID.String())
			}
			selectOptions[option.ID] = models.SelectOption{
				ID:          option.ID,
				Name:        *option.Name,
				Description: option.Description,
			}
		} else {
			updatedOpt := selectOptions[option.ID]
			if option.Name != nil {
				updatedOpt.Name = *option.Name
			}
			if option.Description != nil {
				updatedOpt.Description = option.Description
			}
			if option.IsCustom != nil {
				updatedOpt.IsCustom = *option.IsCustom
			}
			selectOptions[option.ID] = updatedOpt
		}
	}

	var updatedSelectOptions = make([]models.SelectOption, len(selectOptions))
	var idx uint8 = 0
	for _, opt := range selectOptions {
		updatedSelectOptions[idx] = opt
		idx++
	}

	if a.Property.FieldTypeData.SelectData != nil {
		a.Property.FieldTypeData.SelectData.SelectOptions = updatedSelectOptions
	} else {
		a.Property.FieldTypeData = models.FieldTypeData{
			SelectData: &models.SelectData{
				SelectOptions: updatedSelectOptions,
			},
		}
	}

	return nil
}

func (a *PropertyAggregate) onFieldTypeDataSelectOptionsRemoved(evt hwes.Event) error {
	var payload propertyEventsV1.FieldTypeDataSelectOptionsRemovedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	if a.Property.FieldTypeData.SelectData != nil {
		a.Property.FieldTypeData.SelectData.SelectOptions = hwutil.Filter(a.Property.FieldTypeData.SelectData.SelectOptions, func(selectOption models.SelectOption) bool {
			for _, id := range payload.RemovedSelectOptions {
				if selectOption.ID.String() == id {
					return false
				}
			}
			return true
		})
	}

	return nil
}

func (a *PropertyAggregate) onPropertyArchived(evt hwes.Event) error {
	a.Property.IsArchived = true
	return nil
}

func (a *PropertyAggregate) onPropertyRetrieved(evt hwes.Event) error {
	a.Property.IsArchived = false
	return nil
}
