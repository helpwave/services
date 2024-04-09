package v1

import (
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
)

const (
	PropertyValueCreated = "PROPERTY_VALUE_CREATED_v1"
	PropertyValueUpdated = "PROPERTY_VALUE_UPDATED_v1"
)

type PropertyValueCreatedEvent struct {
	ID          string      `json:"id"`
	PropertyID  string      `json:"property_id"`
	Value       interface{} `json:"value"`
	SubjectID   string      `json:"subject_id"`
	SubjectType string      `json:"subject_type"`
}

func NewPropertyValueCreatedEvent(a hwes.Aggregate, id uuid.UUID, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID, subjectType pb.SubjectType) (hwes.Event, error) {
	payload := PropertyValueCreatedEvent{
		ID:          id.String(),
		PropertyID:  propertyID.String(),
		Value:       value,
		SubjectID:   subjectID.String(),
		SubjectType: subjectType.String(),
	}
	return hwes.NewEvent(a, PropertyValueCreated, hwes.WithData(payload))
}

type PropertyValueUpdatedEvent struct {
	Value *interface{} `json:"value"`
}

func NewPropertyValueUpdatedEvent(a hwes.Aggregate, value *interface{}) (hwes.Event, error) {
	payload := PropertyValueUpdatedEvent{
		Value: value,
	}
	return hwes.NewEvent(a, PropertyValueUpdated, hwes.WithData(payload))
}
