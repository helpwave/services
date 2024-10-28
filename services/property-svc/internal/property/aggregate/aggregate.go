package aggregate

import (
	"context"
	"fmt"
	pbTechnicalEventsV1 "gen/libs/technical_events/property_svc/v1"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"hwutil"
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
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyCreatedEvent{}), a.onPropertyCreated)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyDescriptionUpdatedEvent{}), a.onDescriptionUpdated)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertySetIDUpdatedEvent{}), a.onSetIDUpdated)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertySubjectTypeUpdatedEvent{}), a.onSubjectTypeUpdated)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyNameUpdatedEvent{}), a.onNameUpdated)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent{}), a.onFieldTypeDataCreated)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyFieldTypeDataAllowFreetextUpdatedEvent{}), a.onAllowFreetextUpdated)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsUpsertedEvent{}), a.onFieldTypeDataSelectOptionsUpserted)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsRemovedEvent{}), a.onFieldTypeDataSelectOptionsRemoved)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyArchivedEvent{}), a.onPropertyArchived)
	a.RegisterEventListener(hwes.MessageToEventName(&pbTechnicalEventsV1.PropertyRetrievedEvent{}), a.onPropertyRetrieved)
}

// Event handlers
func (a *PropertyAggregate) onPropertyCreated(evt hwes.Event) error {
	var payload pbTechnicalEventsV1.PropertyCreatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		return err
	}

	val, found := pb.FieldType_value[payload.GetFieldType().String()]
	if !found {
		return fmt.Errorf("invalid property fieldType: %s", payload.GetFieldType())
	}
	fieldType := (pb.FieldType)(val)

	val, found = pb.SubjectType_value[payload.GetSubjectType().String()]
	if !found {
		return fmt.Errorf("invalid property subjectType: %s", payload.GetSubjectType())
	}
	subjectType := (pb.SubjectType)(val)

	a.Property.SubjectType = subjectType
	a.Property.FieldType = fieldType
	a.Property.Name = payload.GetName()

	return nil
}

func (a *PropertyAggregate) onFieldTypeDataCreated(evt hwes.Event) error {
	var payload pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		return err
	}

	fieldTypeData := models.FieldTypeData{}

	if payload.GetFieldTypeData() != nil {
		opts := hwutil.Map(payload.GetFieldTypeData().GetSelectData().GetSelectOptions(), func(opt *pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent_SelectOption) models.SelectOption {
			return models.SelectOption{
				ID:          uuid.MustParse(opt.GetId()),
				Name:        opt.GetName(),
				Description: opt.Description,
				IsCustom:    opt.GetIsCustom(),
			}
		})

		fieldTypeData.SelectData = &models.SelectData{
			AllowFreetext: payload.GetFieldTypeData().GetSelectData().GetAllowFreetext(),
			SelectOptions: opts,
		}
	}

	a.Property.FieldTypeData = fieldTypeData

	return nil
}

func (a *PropertyAggregate) onDescriptionUpdated(evt hwes.Event) error {
	var payload pbTechnicalEventsV1.PropertyDescriptionUpdatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		return err
	}

	a.Property.Description = payload.GetDescription()

	return nil
}

func (a *PropertyAggregate) onSetIDUpdated(evt hwes.Event) error {
	var payload pbTechnicalEventsV1.PropertySetIDUpdatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		return err
	}

	setID := uuid.NullUUID{UUID: uuid.Nil, Valid: false}
	if len(payload.GetSetId()) > 0 {
		parsedID, err := hwutil.ParseNullUUID(&payload.SetId)
		if err != nil {
			return err
		}
		setID = parsedID
	}

	a.Property.SetID = setID
	return nil
}

func (a *PropertyAggregate) onSubjectTypeUpdated(evt hwes.Event) error {
	var payload pbTechnicalEventsV1.PropertySubjectTypeUpdatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		return err
	}

	value, found := pb.SubjectType_value[payload.GetSubjectType()]
	if !found {
		return fmt.Errorf("invalid subjectType: %s", payload.GetSubjectType())
	}
	subjectType := (pb.SubjectType)(value)

	a.Property.SubjectType = subjectType
	return nil
}

func (a *PropertyAggregate) onNameUpdated(evt hwes.Event) error {
	var payload pbTechnicalEventsV1.PropertyNameUpdatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		return err
	}

	a.Property.Name = payload.GetName()
	return nil
}

func (a *PropertyAggregate) onAllowFreetextUpdated(evt hwes.Event) error {
	var payload pbTechnicalEventsV1.PropertyFieldTypeDataAllowFreetextUpdatedEvent
	if err := evt.GetProtoData(&payload); err != nil {
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
	var payload pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsUpsertedEvent
	if err := evt.GetProtoData(&payload); err != nil {
		return err
	}

	selectOptions := make(map[uuid.UUID]models.SelectOption)

	if a.Property.FieldTypeData.SelectData != nil {
		for _, option := range a.Property.FieldTypeData.SelectData.SelectOptions {
			selectOptions[option.ID] = option
		}
	}

	for _, option := range payload.UpsertedSelectOptions {
		optionId := uuid.MustParse(option.Id)

		if _, exists := selectOptions[optionId]; !exists {
			if option.Name == nil {
				return fmt.Errorf("name missing for selectOption with id %s", optionId.String())
			}
			selectOptions[optionId] = models.SelectOption{
				ID:          optionId,
				Name:        *option.Name,
				Description: option.Description,
			}
		} else {
			updatedOpt := selectOptions[optionId]
			if option.Name != nil {
				updatedOpt.Name = *option.Name
			}
			if option.Description != nil {
				updatedOpt.Description = option.Description
			}
			if option.IsCustom != nil {
				updatedOpt.IsCustom = *option.IsCustom
			}
			selectOptions[optionId] = updatedOpt
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
	var payload pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsRemovedEvent
	if err := evt.GetProtoData(&payload); err != nil {
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

func (a *PropertyAggregate) onPropertyArchived(_ hwes.Event) error {
	a.Property.IsArchived = true
	return nil
}

func (a *PropertyAggregate) onPropertyRetrieved(_ hwes.Event) error {
	a.Property.IsArchived = false
	return nil
}
