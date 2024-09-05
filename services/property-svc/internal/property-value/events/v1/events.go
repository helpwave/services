package v1

import (
	"context"
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
	SubjectID  string      `json:"subject_id"`
}

func NewPropertyValueCreatedEvent(ctx context.Context, a hwes.Aggregate, id uuid.UUID, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID) (hwes.Event, error) {
	payload := PropertyValueCreatedEvent{
		ID:         id.String(),
		PropertyID: propertyID.String(),
		Value:      value,
		SubjectID:  subjectID.String(),
	}
	return hwes.NewEvent(a, PropertyValueCreated, hwes.WithData(payload), hwes.WithContext(ctx))
}

type PropertyValueUpdatedEvent struct {
	Value interface{} `json:"value"`
}

func NewPropertyValueUpdatedEvent(ctx context.Context, a hwes.Aggregate, value interface{}) (hwes.Event, error) {
	payload := PropertyValueUpdatedEvent{
		Value: value,
	}
	return hwes.NewEvent(a, PropertyValueUpdated, hwes.WithData(payload), hwes.WithContext(ctx))
}
