package aggregate

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"hwutil"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/internal/property/models"
)

func (a *PropertyAggregate) CreateProperty(ctx context.Context, subjectType pb.SubjectType, fieldType pb.FieldType, name string) error {
	id := a.GetID()

	event, err := propertyEventsV1.NewPropertyCreatedEvent(ctx, a, id, subjectType, fieldType, name)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) CreateFieldTypeData(ctx context.Context, fieldTypeData models.FieldTypeData) error {
	event, err := propertyEventsV1.NewFieldTypeDataCreatedEvent(ctx, a, fieldTypeData)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateDescription(ctx context.Context, newDescription string) error {
	event, err := propertyEventsV1.NewPropertyDescriptionUpdatedEvent(ctx, a, newDescription)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateSetID(ctx context.Context, newSetID string) error {
	id, err := hwutil.ParseNullUUID(&newSetID)
	if len(newSetID) > 0 && err != nil {
		return err
	}
	event, err := propertyEventsV1.NewPropertySetIDUpdatedEvent(ctx, a, id)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
func (a *PropertyAggregate) UpdateSubjectType(ctx context.Context, subjectType pb.SubjectType) error {
	event, err := propertyEventsV1.NewPropertySubjectTypeUpdatedEvent(ctx, a, subjectType)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateName(ctx context.Context, name string) error {
	event, err := propertyEventsV1.NewPropertyNameUpdatedEvent(ctx, a, name)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateAllowFreetext(ctx context.Context, allowFreetext bool) error {
	event, err := propertyEventsV1.NewFieldTypeDataAllowFreetextUpdatedEvent(ctx, a, allowFreetext)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) FieldTypeDataUpsertOptions(ctx context.Context, upsertOptions []models.UpdateSelectOption) error {
	event, err := propertyEventsV1.NewFieldTypeDataSelectOptionsUpsertedEvent(ctx, a, upsertOptions)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) FieldTypeDataRemoveOptions(ctx context.Context, removeOptions []string) error {
	event, err := propertyEventsV1.NewFieldTypeDataSelectOptionsRemovedEvent(ctx, a, removeOptions)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) ArchiveProperty(ctx context.Context) error {
	event, _ := propertyEventsV1.NewPropertyArchivedEvent(ctx, a)
	return a.Apply(event)
}

func (a *PropertyAggregate) RetrieveProperty(ctx context.Context) error {
	event, _ := propertyEventsV1.NewPropertyRetrievedEvent(ctx, a)
	return a.Apply(event)
}
