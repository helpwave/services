package v1

import (
	"context"
	"hwes"

	"property-svc/internal/property-value/models"

	"github.com/google/uuid"
)

const (
	PropertyValueCreated = "PROPERTY_VALUE_CREATED_v1"
	PropertyValueUpdated = "PROPERTY_VALUE_UPDATED_v1"
)

type PropertyValueCreatedEvent struct {
	ID          string                  `json:"id"`
	PropertyID  string                  `json:"property_id"`
	ValueChange models.TypedValueChange `json:"value_change"`
	SubjectID   string                  `json:"subject_id"`
}

func NewPropertyValueCreatedEvent(
	ctx context.Context,
	a hwes.Aggregate,
	id uuid.UUID,
	propertyID uuid.UUID,
	valueChange models.TypedValueChange,
	subjectID uuid.UUID,
) (hwes.Event, error) {
	payload := PropertyValueCreatedEvent{
		ID:          id.String(),
		PropertyID:  propertyID.String(),
		ValueChange: valueChange,
		SubjectID:   subjectID.String(),
	}
	return hwes.NewEvent(a, PropertyValueCreated, hwes.WithData(payload), hwes.WithContext(ctx))
}

type PropertyValueUpdatedEvent struct {
	ValueChange models.TypedValueChange `json:"value_change"`
}

func NewPropertyValueUpdatedEvent(
	ctx context.Context,
	a hwes.Aggregate,
	value models.TypedValueChange,
) (hwes.Event, error) {
	payload := PropertyValueUpdatedEvent{
		ValueChange: value,
	}
	return hwes.NewEvent(a, PropertyValueUpdated, hwes.WithData(payload), hwes.WithContext(ctx))
}
