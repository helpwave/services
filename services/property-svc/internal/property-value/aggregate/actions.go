package aggregate

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	propertyEventsV1 "property-svc/internal/property-value/events/v1"
)

func (a *PropertyValueAggregate) CreatePropertyValue(ctx context.Context, propertyID uuid.UUID, value interface{}, subjectID uuid.UUID, subjectType pb.SubjectType) error {
	id := a.GetID()

	event, err := propertyEventsV1.NewPropertyValueCreatedEvent(a, id, propertyID, value, subjectID, subjectType)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyValueAggregate) UpdatePropertyValue(ctx context.Context, value *interface{}) error {
	event, err := propertyEventsV1.NewPropertyValueUpdatedEvent(a, value)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
