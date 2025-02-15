package v1

import (
	"context"
	"hwes"

	"github.com/google/uuid"
)

const (
	PropertySetCreated = "PROPERTY_SET_CREATED_v1"
)

type PropertySetCreatedEvent struct {
	ID   string `json:"id"`
	Name string `json:"name"`
}

func NewPropertySetCreatedEvent(ctx context.Context, a hwes.Aggregate, id uuid.UUID, name string) (hwes.Event, error) {
	payload := PropertySetCreatedEvent{
		ID:   id.String(),
		Name: name,
	}

	return hwes.NewEvent(a, PropertySetCreated, hwes.WithData(payload), hwes.WithContext(ctx))
}
