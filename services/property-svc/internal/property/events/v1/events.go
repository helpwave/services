package v1

import (
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
)

const (
	PropertyCreated = "PROPERTY_CREATED_v1"
)

type PropertyCreatedEvent struct {
	ID          string `json:"id"`
	SubjectID   string `json:"subject_id"`
	SubjectType string `json:"subject_type"`
	FieldType   string `json:"field_type"`
	Name        string `json:"name"`
}

func NewPropertyCreatedEvent(a hwes.Aggregate, id uuid.UUID, subjectID uuid.UUID, subjectType string, fieldType pb.FieldType, name string) (hwes.Event, error) {
	payload := PropertyCreatedEvent{
		ID:          id.String(),
		SubjectID:   subjectID.String(),
		SubjectType: subjectType,
		FieldType:   fieldType.String(),
		Name:        name,
	}
	return hwes.NewEventWithData(a, PropertyCreated, payload)
}
