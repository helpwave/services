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
)

type PropertyCreatedEvent struct {
	ID string `json:"id"`

	ViewContext string `json:"context"`
	SubjectType string `json:"subject_type"`
	FieldType   string `json:"field_type"`

	Name          string               `json:"name"`
	FieldTypeData models.FieldTypeData `json:"field_type_data"`
}

func NewPropertyCreatedEvent(a hwes.Aggregate, id uuid.UUID, viewContext pb.ViewContext, subjectType pb.SubjectType, fieldType pb.FieldType, name string, fieldTypeData models.FieldTypeData) (hwes.Event, error) {
	payload := PropertyCreatedEvent{
		ID:            id.String(),
		ViewContext:   viewContext.String(),
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
