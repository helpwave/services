package models

import (
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
	"hwdb"
	"hwutil"
	"time"
)

type PropertyValue struct {
	ID         uuid.UUID
	PropertyID uuid.UUID
	SubjectID  uuid.UUID
	Value      *SimpleTypedValue
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

type SelectValueOption struct {
	Id          uuid.UUID `json:"id"`
	Name        string    `json:"name"`
	Description string    `json:"description,omitempty"`
}

// TODO
type SimpleTypedValue struct {
	TextValue         *string
	BoolValue         *bool
	NumberValue       *float64
	DateTimeValue     *time.Time
	DateValue         *time.Time
	SingleSelectValue *string
	MultiSelectValues []string
}

type TypedValue struct {
	TextValue         *string
	BoolValue         *bool
	NumberValue       *float64
	DateTimeValue     *time.Time
	DateValue         *time.Time
	SingleSelectValue *SelectValueOption
	MultiSelectValues []SelectValueOption
}

type MultiSelectChange struct {
	SelectValues       []string `json:"select_values,omitempty"`
	RemoveSelectValues []string `json:"remove_select_values,omitempty"`
}

type PropertyAndValue struct {
	PropertyID  uuid.UUID
	SubjectType pb.SubjectType
	FieldType   pb.FieldType

	Name        string
	Description string
	IsArchived  bool

	SetID uuid.NullUUID

	PropertyConsistency string
	ValueConsistency    *string

	Value *TypedValue
}

type TypedValueChange struct {
	ValueRemoved      bool               `json:"value_removed,omitempty"`
	TextValue         *string            `json:"text_value,omitempty"`
	BoolValue         *bool              `json:"bool_value,omitempty"`
	NumberValue       *float64           `json:"number_value,omitempty"`
	DateTimeValue     *time.Time         `json:"date_time_value,omitempty"`
	DateValue         *time.Time         `json:"date_value,omitempty"`
	SingleSelectValue *string            `json:"single_select_value,omitempty"`
	MultiSelectValues *MultiSelectChange `json:"multi_select_values,omitempty"`
}

// Apply applies a TypedValueChange to a TypedValue (except removal)
func (c TypedValueChange) Apply(value *SimpleTypedValue) bool {
	switch {
	case c.TextValue != nil:
		value.TextValue = c.TextValue
	case c.NumberValue != nil:
		value.NumberValue = c.NumberValue
	case c.BoolValue != nil:
		value.BoolValue = c.BoolValue
	case c.DateValue != nil:
		value.DateValue = c.DateValue
	case c.DateTimeValue != nil:
		value.DateTimeValue = c.DateTimeValue
	case c.SingleSelectValue != nil:
		value.SingleSelectValue = c.SingleSelectValue
	case c.MultiSelectValues != nil:
		value.MultiSelectValues = hwutil.Without(value.MultiSelectValues, c.MultiSelectValues.RemoveSelectValues)
		value.MultiSelectValues = append(value.MultiSelectValues, c.MultiSelectValues.SelectValues...)

	default:
		return false
	}

	return true
}

type BasicChangeSettable interface {
	SetTextValue(*string)
	SetNumberValue(*float64)
	SetBoolValue(*bool)
	SetDateValue(pgtype.Date)
	SetDateTimeValue(pgtype.Timestamp)
}

func (c TypedValueChange) SetBasicValues(settable BasicChangeSettable) bool {
	switch {
	case c.TextValue != nil:
		settable.SetTextValue(c.TextValue)
	case c.NumberValue != nil:
		settable.SetNumberValue(c.NumberValue)
	case c.BoolValue != nil:
		settable.SetBoolValue(c.BoolValue)
	case c.DateValue != nil:
		settable.SetDateValue(hwdb.TimeToDate(*c.DateValue))
	case c.DateTimeValue != nil:
		settable.SetDateTimeValue(hwdb.TimeToTimestamp(*c.DateTimeValue))
	default:
		return false
	}

	return true
}
