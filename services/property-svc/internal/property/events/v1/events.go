package v1

import (
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/models"
)

const (
	PropertyCreated                               = "PROPERTY_CREATED_v1"
	PropertyDescriptionUpdated                    = "PROPERTY_DESCRIPTION_UPDATED_v1"
	PropertySetIDUpdated                          = "PROPERTY_SET_ID_UPDATED_v1"
	PropertyAlwaysIncludeForCurrentContextUpdated = "PROPERTY_ALWAYS_INCLUDE_FOR_CURRENT_CONTEXT_UPDATED_v1"
	PropertySubjectTypeUpdated                    = "PROPERTY_SUBJECT_TYPE_UPDATED_v1"
	PropertyFieldTypeUpdated                      = "PROPERTY_FIELD_TYPE_UPDATED_v1"
	PropertyNameUpdated                           = "PROPERTY_NAME_UPDATED_v1"
	PropertyFieldTypeDataNoneUpdated              = "PROPERTY_FIELD_TYPE_DATA_NONE_UPDATED_v1"
	PropertyFieldTypeDataAllowFreetextUpdated     = "PROPERTY_FIELD_TYPE_DATA_ALLOW_FREETEXT_UPDATED_v1"
	PropertyFieldTypeDataSelectOptionsRemoved     = "PROPERTY_FIELD_TYPE_DATA_SELECT_OPTIONS_REMOVED_v1"
	PropertyFieldTypeDataSelectOptionsUpserted    = "PROPERTY_FIELD_TYPE_DATA_SELECT_OPTIONS_UPSERTED_v1"
)

type PropertyCreatedEvent struct {
	ID string `json:"id"`

	SubjectType string `json:"subject_type"`
	FieldType   string `json:"field_type"`

	Name          string               `json:"name"`
	FieldTypeData models.FieldTypeData `json:"field_type_data"`
}

func NewPropertyCreatedEvent(a hwes.Aggregate, id uuid.UUID, subjectType pb.SubjectType, fieldType pb.FieldType, name string, fieldTypeData models.FieldTypeData) (hwes.Event, error) {
	payload := PropertyCreatedEvent{
		ID:            id.String(),
		SubjectType:   subjectType.String(),
		FieldType:     fieldType.String(),
		Name:          name,
		FieldTypeData: fieldTypeData,
	}
	return hwes.NewEventWithData(a, PropertyCreated, payload)
}

type PropertyDescriptionUpdatedEvent struct {
	Description string `json:"description"`
}

func NewPropertyDescriptionUpdatedEvent(a hwes.Aggregate, description string) (hwes.Event, error) {
	payload := PropertyDescriptionUpdatedEvent{
		Description: description,
	}
	return hwes.NewEventWithData(a, PropertyDescriptionUpdated, payload)
}

type PropertySetIDUpdatedEvent struct {
	SetID string `json:"set_id"`
}

func NewPropertySetIDUpdatedEvent(a hwes.Aggregate, setID uuid.UUID) (hwes.Event, error) {
	payload := PropertySetIDUpdatedEvent{
		SetID: setID.String(),
	}
	return hwes.NewEventWithData(a, PropertySetIDUpdated, payload)
}

type PropertyAlwaysIncludeForCurrentContextUpdatedEvent struct {
	AlwaysIncludeForCurrentContext bool `json:"always_include_for_current_context"`
}

func NewPropertyAlwaysIncludeForCurrentContextUpdatedEvent(a hwes.Aggregate, alwaysIncludeForCurrentContext bool) (hwes.Event, error) {
	payload := PropertyAlwaysIncludeForCurrentContextUpdatedEvent{
		AlwaysIncludeForCurrentContext: alwaysIncludeForCurrentContext,
	}
	return hwes.NewEventWithData(a, PropertyAlwaysIncludeForCurrentContextUpdated, payload)
}

type PropertySubjectTypeUpdatedEvent struct {
	SubjectType string `json:"subject_type"`
}

func NewPropertySubjectTypeUpdatedEvent(a hwes.Aggregate, subjectType pb.SubjectType) (hwes.Event, error) {
	payload := PropertySubjectTypeUpdatedEvent{
		SubjectType: subjectType.String(),
	}
	return hwes.NewEventWithData(a, PropertySubjectTypeUpdated, payload)
}

type PropertyFieldTypeUpdatedEvent struct {
	FieldType string `json:"field_type"`
}

func NewPropertyFieldTypeUpdatedEvent(a hwes.Aggregate, fieldType pb.FieldType) (hwes.Event, error) {
	payload := PropertyFieldTypeUpdatedEvent{
		FieldType: fieldType.String(),
	}
	return hwes.NewEventWithData(a, PropertyFieldTypeUpdated, payload)
}

type PropertyNameUpdatedEvent struct {
	Name string `json:"name"`
}

func NewPropertyNameUpdatedEvent(a hwes.Aggregate, name string) (hwes.Event, error) {
	payload := PropertyNameUpdatedEvent{
		Name: name,
	}
	return hwes.NewEventWithData(a, PropertyNameUpdated, payload)
}

type FieldTypeDataNoneUpdatedEvent struct {
	None bool `json:"none"`
}

func NewFieldTypeDataNoneUpdatedEvent(a hwes.Aggregate, none bool) (hwes.Event, error) {
	payload := FieldTypeDataNoneUpdatedEvent{
		None: none,
	}
	return hwes.NewEventWithData(a, PropertyFieldTypeDataNoneUpdated, payload)
}

type FieldTypeDataAllowFreetextUpdatedEvent struct {
	NewAllowFreetext bool `json:"new_allow_freetext"`
}

func NewFieldTypeDataAllowFreetextUpdatedEvent(a hwes.Aggregate, newAllowFreetext bool) (hwes.Event, error) {
	payload := FieldTypeDataAllowFreetextUpdatedEvent{
		NewAllowFreetext: newAllowFreetext,
	}
	return hwes.NewEventWithData(a, PropertyFieldTypeDataAllowFreetextUpdated, payload)
}

type FieldTypeDataSelectOptionsRemovedEvent struct {
	RemovedSelectOptions []string `json:"removed_select_options"`
}

func NewFieldTypeDataSelectOptionsRemovedEvent(a hwes.Aggregate, toBeRemoved []string) (hwes.Event, error) {
	payload := FieldTypeDataSelectOptionsRemovedEvent{
		RemovedSelectOptions: toBeRemoved,
	}
	return hwes.NewEventWithData(a, PropertyFieldTypeDataSelectOptionsRemoved, payload)
}

type FieldTypeDataSelectOptionsUpsertedEvent struct {
	UpsertedSelectOptions []models.SelectOption `json:"UpsertedSelectOptions"`
}

func NewFieldTypeDataSelectOptionsUpsertedEvent(a hwes.Aggregate, toBeAdded []models.SelectOption) (hwes.Event, error) {
	payload := FieldTypeDataSelectOptionsUpsertedEvent{
		UpsertedSelectOptions: toBeAdded,
	}
	return hwes.NewEventWithData(a, PropertyFieldTypeDataSelectOptionsUpserted, payload)
}
