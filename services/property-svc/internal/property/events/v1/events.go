package v1

import (
	"context"
	pbTechnicalEventsV1 "gen/libs/technical_events/property_svc/v1"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"hwutil"
	"property-svc/internal/property/models"
)

func NewPropertyCreatedEvent(ctx context.Context, a hwes.Aggregate, id uuid.UUID, subjectType pb.SubjectType, fieldType pb.FieldType, name string) (hwes.Event, error) {
	payload := pbTechnicalEventsV1.PropertyCreatedEvent{
		Id:          id.String(),
		SubjectType: subjectType,
		FieldType:   fieldType,
		Name:        name,
	}
	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewFieldTypeDataCreatedEvent(ctx context.Context, a hwes.Aggregate, fieldTypeData models.FieldTypeData) (hwes.Event, error) {
	protoFieldTypeData := pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent_FieldTypeData{}

	if fieldTypeData.SelectData != nil {
		protoSelectData := pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent_SelectData{
			AllowFreetext: fieldTypeData.SelectData.AllowFreetext,
			SelectOptions: hwutil.Map(fieldTypeData.SelectData.SelectOptions, func(opt models.SelectOption) *pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent_SelectOption {
				return &pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent_SelectOption{
					Id:          opt.ID.String(),
					Name:        opt.Name,
					Description: opt.Description,
					IsCustom:    opt.IsCustom,
				}
			}),
		}

		protoFieldTypeData.SelectData = &protoSelectData
	}

	payload := pbTechnicalEventsV1.PropertyFieldTypeDataCreatedEvent{
		FieldTypeData: &protoFieldTypeData,
	}
	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewPropertyDescriptionUpdatedEvent(ctx context.Context, a hwes.Aggregate, description string) (hwes.Event, error) {
	payload := pbTechnicalEventsV1.PropertyDescriptionUpdatedEvent{
		Description: description,
	}
	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewPropertySetIDUpdatedEvent(ctx context.Context, a hwes.Aggregate, setID uuid.NullUUID) (hwes.Event, error) {
	sids := ""
	if setID.Valid {
		sids = setID.UUID.String()
	}
	payload := pbTechnicalEventsV1.PropertySetIDUpdatedEvent{
		SetId: sids,
	}
	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewPropertySubjectTypeUpdatedEvent(ctx context.Context, a hwes.Aggregate, subjectType pb.SubjectType) (hwes.Event, error) {
	payload := pbTechnicalEventsV1.PropertySubjectTypeUpdatedEvent{
		SubjectType: subjectType.String(),
	}
	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewPropertyFieldTypeUpdatedEvent(ctx context.Context, a hwes.Aggregate, fieldType pb.FieldType) (hwes.Event, error) {
	payload := pbTechnicalEventsV1.PropertyFieldTypeUpdatedEvent{
		FieldType: fieldType.String(),
	}
	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewPropertyNameUpdatedEvent(ctx context.Context, a hwes.Aggregate, name string) (hwes.Event, error) {
	payload := pbTechnicalEventsV1.PropertyNameUpdatedEvent{
		Name: name,
	}
	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewFieldTypeDataAllowFreetextUpdatedEvent(ctx context.Context, a hwes.Aggregate, newAllowFreetext bool) (hwes.Event, error) {
	payload := pbTechnicalEventsV1.PropertyFieldTypeDataAllowFreetextUpdatedEvent{
		NewAllowFreetext: newAllowFreetext,
	}
	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewFieldTypeDataSelectOptionsRemovedEvent(ctx context.Context, a hwes.Aggregate, toBeRemoved []string) (hwes.Event, error) {
	payload := pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsRemovedEvent{
		RemovedSelectOptions: toBeRemoved,
	}
	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewFieldTypeDataSelectOptionsUpsertedEvent(ctx context.Context, a hwes.Aggregate, upsertOptions []models.UpdateSelectOption) (hwes.Event, error) {
	updateSelectOptions := hwutil.Map(upsertOptions, func(upsertOptions models.UpdateSelectOption) *pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption {
		return &pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsUpsertedEvent_UpdateSelectOption{
			Id:          upsertOptions.ID.String(),
			Name:        upsertOptions.Name,
			Description: upsertOptions.Description,
			IsCustom:    upsertOptions.IsCustom,
		}
	})

	payload := pbTechnicalEventsV1.PropertyFieldTypeDataSelectOptionsUpsertedEvent{
		UpsertedSelectOptions: updateSelectOptions,
	}

	return hwes.NewEventFromProto(a, &payload, hwes.WithContext(ctx))
}

func NewPropertyArchivedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEventFromProto(a, &pbTechnicalEventsV1.PropertyArchivedEvent{}, hwes.WithContext(ctx))
}

func NewPropertyRetrievedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEventFromProto(a, &pbTechnicalEventsV1.PropertyRetrievedEvent{}, hwes.WithContext(ctx))
}
