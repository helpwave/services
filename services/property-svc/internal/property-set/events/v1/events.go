package v1

import (
	"github.com/google/uuid"
	"hwes"
)

const (
	PropertySetCreated = "PROPERTY_SET_CREATED_v1"
)

type PropertySetCreatedEvent struct {
	ID   string `json:"id"`
	Name string `json:"name"`
}

func NewPropertySetCreatedEvent(a hwes.Aggregate, id uuid.UUID, name string) (hwes.Event, error) {
	payload := PropertySetCreatedEvent{
		ID:   id.String(),
		Name: name,
	}
	return hwes.NewEventWithData(a, PropertySetCreated, payload)
}
