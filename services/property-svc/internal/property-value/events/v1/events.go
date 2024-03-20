package v1

import (
	"github.com/google/uuid"
	"hwes"
)

const (
	PropertyValueCreated = "PROPERTY_VALUE_CREATED_v1"
)

type PropertyValueCreatedEvent struct {
	ID          string      `json:"id"`
	PropertyID  string      `json:"property_id"`
	SubjectID   string      `json:"subject_id"`
	SubjectType string      `json:"subject_type"`
	Value       interface{} `json:"value"`
}

func NewPropertyValueCreatedEvent(a hwes.Aggregate, id uuid.UUID, propertyID uuid.UUID, subjectID uuid.UUID, subjectType string, value interface{}) (hwes.Event, error) {
	payload := PropertyValueCreatedEvent{
		ID:          id.String(),
		PropertyID:  propertyID.String(),
		SubjectID:   subjectID.String(),
		SubjectType: subjectType,
		Value:       value,
	}
	return hwes.NewEvent(a, PropertyValueCreated, hwes.WithData(payload))
}
