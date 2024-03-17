package v1

import (
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/models"
)

const (
	PropertyCreated            = "PROPERTY_CREATED_v1"
	PropertyDescriptionUpdated = "PROPERTY_DESCRIPTION_UPDATED_v1"
	PropertySetIDUpdated       = "PROPERTY_SET_ID_UPDATED_v1"
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
	return hwes.NewEvent(a, PropertyCreated, hwes.WithData(payload))
}

type PropertyDescriptionUpdatedEvent struct {
	Description string `json:"description"`
}

func NewPropertyDescriptionUpdatedEvent(a hwes.Aggregate, description string) (hwes.Event, error) {
	payload := PropertyDescriptionUpdatedEvent{
		Description: description,
	}
	return hwes.NewEvent(a, PropertyDescriptionUpdated, hwes.WithData(payload))
}

type PropertySetIDUpdatedEvent struct {
	SetID string `json:"set_id"`
}

func NewPropertySetIDUpdatedEvent(a hwes.Aggregate, setID uuid.NullUUID) (hwes.Event, error) {
	sids := ""
	if setID.Valid {
		sids = setID.UUID.String()
	}
	payload := PropertySetIDUpdatedEvent{
		SetID: sids,
	}
	return hwes.NewEvent(a, PropertySetIDUpdated, hwes.WithData(payload))
}
