package aggregate

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	propertyEventsV1 "property-svc/internal/property/events/v1"
)

func (a *PropertyAggregate) CreateProperty(ctx context.Context, subjectID uuid.UUID, subjectType string, fieldType pb.FieldType, name string) error {
	id := a.GetID()

	event, err := propertyEventsV1.NewPropertyCreatedEvent(a, id, subjectID, subjectType, fieldType, name)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
