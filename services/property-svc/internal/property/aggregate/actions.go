package aggregate

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/internal/property/models"
)

func (a *PropertyAggregate) CreateProperty(ctx context.Context, subjectType pb.SubjectType, fieldType pb.FieldType, name string, fieldTypeData models.FieldTypeData) error {
	id := a.GetID()

	event, err := propertyEventsV1.NewPropertyCreatedEvent(a, id, subjectType, fieldType, name, fieldTypeData)
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

func (a *PropertyAggregate) UpdateSetID(ctx context.Context, newSetID uuid.NullUUID) error {
	event, err := propertyEventsV1.NewPropertySetIDUpdatedEvent(a, newSetID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
func (a *PropertyAggregate) UpdateSubjectType(ctx context.Context, subjectType pb.SubjectType) error {
	event, err := propertyEventsV1.NewPropertySubjectTypeUpdatedEvent(a, subjectType)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateFieldType(ctx context.Context, fieldType pb.FieldType) error {
	event, err := propertyEventsV1.NewPropertyFieldTypeUpdatedEvent(a, fieldType)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateName(ctx context.Context, name string) error {
	event, err := propertyEventsV1.NewPropertyNameUpdatedEvent(a, name)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) UpdateAllowFreetext(ctx context.Context, allowFreetext bool) error {
	event, err := propertyEventsV1.NewFieldTypeDataAllowFreetextUpdatedEvent(a, allowFreetext)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) FieldTypeDataNoneUpdated(ctx context.Context, none bool) error {
	event, err := propertyEventsV1.NewFieldTypeDataNoneUpdatedEvent(a, none)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) FieldTypeDataUpsertOptions(ctx context.Context, upsertOptions []models.SelectOption) error {
	event, err := propertyEventsV1.NewFieldTypeDataSelectOptionsUpsertedEvent(a, upsertOptions)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) FieldTypeDataRemoveOptions(ctx context.Context, removeOptions []string) error {
	event, err := propertyEventsV1.NewFieldTypeDataSelectOptionsRemovedEvent(a, removeOptions)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PropertyAggregate) ArchiveProperty(ctx context.Context) error {
	event, _ := propertyEventsV1.NewPropertyArchivedEvent(a)
	return a.Apply(event)
}

func (a *PropertyAggregate) RetrieveProperty(ctx context.Context) error {
	event, _ := propertyEventsV1.NewPropertyRetrievedEvent(a)
	return a.Apply(event)
}
