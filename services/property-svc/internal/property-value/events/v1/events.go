package v1

import (
	"github.com/google/uuid"
	"hwes"
)

const (
	PropertyValueCreated = "PROPERTY_VALUE_CREATED_v1"
	PropertyValueUpdated = "PROPERTY_VALUE_UPDATED_v1"
)

type PropertyValueCreatedEvent struct {
	ID         string      `json:"id"`
	PropertyID string      `json:"property_id"`
	Value      interface{} `json:"value"`
}

func NewPropertyValueCreatedEvent(a hwes.Aggregate, id uuid.UUID, propertyID uuid.UUID, value interface{}) (hwes.Event, error) {
	payload := PropertyValueCreatedEvent{
		ID:         id.String(),
		PropertyID: propertyID.String(),
		Value:      value,
	}
	return hwes.NewEvent(a, PropertyValueCreated, hwes.WithData(payload))
}

type PropertyValueUpdatedEvent struct {
	PropertyID *string      `json:"property_id"`
	SubjectID  *string      `json:"subject_id"`
	Value      *interface{} `json:"value"`
}

func NewPropertyValueUpdatedEvent(a hwes.Aggregate, value *interface{}) (hwes.Event, error) {
	payload := PropertyValueUpdatedEvent{
		Value: value,
	}
	return hwes.NewEvent(a, PropertyValueUpdated, hwes.WithData(payload))
}
