package models

import (
	pb "gen/proto/services/property_svc/v1"
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
