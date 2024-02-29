package aggregate

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/internal/property/models"
)

func (a *PropertyAggregate) CreateProperty(ctx context.Context, viewContext pb.ViewContext, subjectType pb.SubjectType, fieldType pb.FieldType, name string, fieldTypeData models.FieldTypeData) error {

	id := a.GetID()

	event, err := propertyEventsV1.NewPropertyCreatedEvent(a, id, viewContext, subjectType, fieldType, name, fieldTypeData)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateDescription(ctx context.Context, newDescription string) error {
	event, err := propertyEventsV1.NewPropertyDescriptionUpdatedEvent(a, newDescription)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateSetID(ctx context.Context, newSetID uuid.UUID) error {
	event, err := propertyEventsV1.NewPropertySetIDUpdatedEvent(a, newSetID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateAlwaysIncludeForCurrentContext(ctx context.Context, alwaysIncludeForCurrentContext bool) error {
	event, err := propertyEventsV1.NewPropertyAlwaysIncludeForCurrentContextUpdatedEvent(a, alwaysIncludeForCurrentContext)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
