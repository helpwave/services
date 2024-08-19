package models

import (
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"time"
)

type PropertyValue struct {
	ID         uuid.UUID
	PropertyID uuid.UUID
	SubjectID  uuid.UUID
	Value      interface{}
}

func NewPropertyValue() *PropertyValue {
	return &PropertyValue{}
}

type PropertyValueWithProperty struct {
	ID            uuid.UUID
	PropertyID    uuid.UUID
	Name          string
	IsArchived    bool
	FieldType     pb.FieldType
	TextValue     *string
	BoolValue     *bool
	NumberValue   *float64
	SelectValue   uuid.NullUUID
	DateTimeValue *time.Time
	DateValue     *time.Time
}

type TypedValue struct {
	TextValue     *string
	BoolValue     *bool
	NumberValue   *float64
	SelectValue   uuid.NullUUID
	DateTimeValue *time.Time
	DateValue     *time.Time
}

type PropertyAndValue struct {
	PropertyID  uuid.UUID
	SubjectType pb.SubjectType
	FieldType   pb.FieldType

	Name        string
	Description string
	IsArchived  bool

	SetID uuid.NullUUID

	Value *TypedValue
}
