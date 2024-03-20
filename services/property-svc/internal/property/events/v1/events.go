package v1

import (
	"context"
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
	"hwes"
	"property-svc/internal/property/models"
)

const (
	PropertyCreated                            = "PROPERTY_CREATED_v1"
	PropertyDescriptionUpdated                 = "PROPERTY_DESCRIPTION_UPDATED_v1"
	PropertySetIDUpdated                       = "PROPERTY_SET_ID_UPDATED_v1"
	PropertySubjectTypeUpdated                 = "PROPERTY_SUBJECT_TYPE_UPDATED_v1"
	PropertyFieldTypeUpdated                   = "PROPERTY_FIELD_TYPE_UPDATED_v1"
	PropertyFieldTypeDataCreated               = "PROPERTY_FIELD_TYPE_DATA_CREATED_v1"
	PropertyNameUpdated                        = "PROPERTY_NAME_UPDATED_v1"
	PropertyFieldTypeDataAllowFreetextUpdated  = "PROPERTY_FIELD_TYPE_DATA_ALLOW_FREETEXT_UPDATED_v1"
	PropertyFieldTypeDataSelectOptionsRemoved  = "PROPERTY_FIELD_TYPE_DATA_SELECT_OPTIONS_REMOVED_v1"
	PropertyFieldTypeDataSelectOptionsUpserted = "PROPERTY_FIELD_TYPE_DATA_SELECT_OPTIONS_UPSERTED_v1"
	PropertyArchived                           = "PROPERTY_ARCHIVED_v1"
	PropertyRetrieved                          = "PROPERTY_RETRIEVED_v1"
)

type PropertyCreatedEvent struct {
	ID string `json:"id"`

	SubjectType string `json:"subject_type"`
	FieldType   string `json:"field_type"`

	Name string `json:"name"`
}

func NewPropertyCreatedEvent(ctx context.Context, a hwes.Aggregate, id uuid.UUID, subjectType pb.SubjectType, fieldType pb.FieldType, name string) (hwes.Event, error) {
	payload := PropertyCreatedEvent{
		ID:          id.String(),
		SubjectType: subjectType.String(),
		FieldType:   fieldType.String(),
		Name:        name,
	}
	return hwes.NewEvent(a, PropertyCreated, hwes.WithContext(ctx), hwes.WithData(payload))
}

type FieldTypeDataCreatedEvent struct {
	FieldTypeData models.FieldTypeData
}

func NewFieldTypeDataCreatedEvent(ctx context.Context, a hwes.Aggregate, fieldTypeData models.FieldTypeData) (hwes.Event, error) {
	payload := FieldTypeDataCreatedEvent{
		FieldTypeData: fieldTypeData,
	}
	return hwes.NewEvent(a, PropertyFieldTypeDataCreated, hwes.WithContext(ctx), hwes.WithData(payload))
}

type PropertyDescriptionUpdatedEvent struct {
	Description string `json:"description"`
}

func NewPropertyDescriptionUpdatedEvent(ctx context.Context, a hwes.Aggregate, description string) (hwes.Event, error) {
	payload := PropertyDescriptionUpdatedEvent{
		Description: description,
	}
	return hwes.NewEvent(a, PropertyDescriptionUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

type PropertySetIDUpdatedEvent struct {
	SetID string `json:"set_id"`
}

func NewPropertySetIDUpdatedEvent(ctx context.Context, a hwes.Aggregate, setID uuid.NullUUID) (hwes.Event, error) {
	sids := ""
	if setID.Valid {
		sids = setID.UUID.String()
	}
	payload := PropertySetIDUpdatedEvent{
		SetID: sids,
	}
	return hwes.NewEvent(a, PropertySetIDUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

type PropertySubjectTypeUpdatedEvent struct {
	SubjectType string `json:"subject_type"`
}

func NewPropertySubjectTypeUpdatedEvent(ctx context.Context, a hwes.Aggregate, subjectType pb.SubjectType) (hwes.Event, error) {
	payload := PropertySubjectTypeUpdatedEvent{
		SubjectType: subjectType.String(),
	}
	return hwes.NewEvent(a, PropertySubjectTypeUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

type PropertyFieldTypeUpdatedEvent struct {
	FieldType string `json:"field_type"`
}

func NewPropertyFieldTypeUpdatedEvent(ctx context.Context, a hwes.Aggregate, fieldType pb.FieldType) (hwes.Event, error) {
	payload := PropertyFieldTypeUpdatedEvent{
		FieldType: fieldType.String(),
	}
	return hwes.NewEvent(a, PropertyFieldTypeUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

type PropertyNameUpdatedEvent struct {
	Name string `json:"name"`
}

func NewPropertyNameUpdatedEvent(ctx context.Context, a hwes.Aggregate, name string) (hwes.Event, error) {
	payload := PropertyNameUpdatedEvent{
		Name: name,
	}
	return hwes.NewEvent(a, PropertyNameUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

type FieldTypeDataAllowFreetextUpdatedEvent struct {
	NewAllowFreetext bool `json:"new_allow_freetext"`
}

func NewFieldTypeDataAllowFreetextUpdatedEvent(ctx context.Context, a hwes.Aggregate, newAllowFreetext bool) (hwes.Event, error) {
	payload := FieldTypeDataAllowFreetextUpdatedEvent{
		NewAllowFreetext: newAllowFreetext,
	}
	return hwes.NewEvent(a, PropertyFieldTypeDataAllowFreetextUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

type FieldTypeDataSelectOptionsRemovedEvent struct {
	RemovedSelectOptions []string `json:"removed_select_options"`
}

func NewFieldTypeDataSelectOptionsRemovedEvent(ctx context.Context, a hwes.Aggregate, toBeRemoved []string) (hwes.Event, error) {
	payload := FieldTypeDataSelectOptionsRemovedEvent{
		RemovedSelectOptions: toBeRemoved,
	}
	return hwes.NewEvent(a, PropertyFieldTypeDataSelectOptionsRemoved, hwes.WithContext(ctx), hwes.WithData(payload))
}

type FieldTypeDataSelectOptionsUpsertedEvent struct {
	UpsertedSelectOptions []models.UpdateSelectOption `json:"UpsertedSelectOptions"`
}

func NewFieldTypeDataSelectOptionsUpsertedEvent(ctx context.Context, a hwes.Aggregate, upsertOptions []models.UpdateSelectOption) (hwes.Event, error) {
	payload := FieldTypeDataSelectOptionsUpsertedEvent{
		UpsertedSelectOptions: upsertOptions,
	}
	return hwes.NewEvent(a, PropertyFieldTypeDataSelectOptionsUpserted, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewPropertyArchivedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, PropertyArchived, hwes.WithContext(ctx))
}

func NewPropertyRetrievedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, PropertyRetrieved, hwes.WithContext(ctx))
}
