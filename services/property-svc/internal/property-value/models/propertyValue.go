package models

import (
	"fmt"
	pb "gen/services/property_svc/v1"
	"hwdb"
	"hwutil"
	"hwutil/errs"
	"time"

	"github.com/jackc/pgx/v5/pgtype"

	"github.com/google/uuid"
)

type PropertyValue struct {
	ID         uuid.UUID
	PropertyID uuid.UUID
	SubjectID  uuid.UUID
	Value      *SimpleTypedValue
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

type SelectValueOption struct {
	Id          uuid.UUID
	Name        string
	Description string
}

// TODO: how does this differ to TypedValue?
type SimpleTypedValue struct {
	TextValue         *string
	BoolValue         *bool
	NumberValue       *float64
	DateTimeValue     *time.Time
	DateValue         *time.Time
	SingleSelectValue *string
	MultiSelectValues []string
}

func (v SimpleTypedValue) Equals(o SimpleTypedValue) bool {
	switch {
	case v.TextValue != nil && o.TextValue != nil:
		return *v.TextValue == *o.TextValue
	case v.BoolValue != nil && o.BoolValue != nil:
		return *v.BoolValue == *o.BoolValue
	case v.NumberValue != nil && o.NumberValue != nil:
		return *v.NumberValue == *o.NumberValue
	case v.DateTimeValue != nil && o.DateTimeValue != nil:
		return *v.DateTimeValue == *o.DateTimeValue
	case v.DateValue != nil && o.DateValue != nil:
		return *v.DateValue == *o.DateValue
	case v.SingleSelectValue != nil && o.SingleSelectValue != nil:
		return *v.SingleSelectValue == *o.SingleSelectValue
	case v.MultiSelectValues != nil && o.MultiSelectValues != nil:
		return hwutil.SameItems(v.MultiSelectValues, o.MultiSelectValues)
	default:
		return false
	}
}

type TypedValue struct {
	TextValue         *string
	BoolValue         *bool
	NumberValue       *float64
	MultiSelectValues []SelectValueOption
	DateTimeValue     *time.Time
	DateValue         *time.Time
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

type MultiSelectChange struct {
	SelectValues       []string `json:"select_values,omitempty"`
	RemoveSelectValues []string `json:"remove_select_values,omitempty"`
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

func applyMultiSelectValueChange(options []string, change MultiSelectChange) []string {
	return append(
		hwutil.Without(options, change.RemoveSelectValues), // remove first
		change.SelectValues..., // add new options second
	)
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
		value.MultiSelectValues = applyMultiSelectValueChange(value.MultiSelectValues, *c.MultiSelectValues)

	default:
		return false
	}

	return true
}

type BasicChangeSettable interface {
	SetTextValue(value *string)
	SetNumberValue(value *float64)
	SetBoolValue(value *bool)
	SetDateValue(value pgtype.Date)
	SetDateTimeValue(value pgtype.Timestamp)
}

var ErrNotABasicValue = errors.New("no basic value change to set")

func (c TypedValueChange) SetBasicValues(settable BasicChangeSettable) error {
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
		return ErrNotABasicValue
	}

	return nil
}

func interfaceToStringSlice(interf interface{}) ([]string, error) {
	slice, ok := interf.([]interface{})
	if !ok {
		return nil, errs.NewCastError("[]interface{}", interf)
	}

	strings, ok := hwutil.InterfacesToStrings(slice)
	if !ok {
		return nil, errs.NewCastError("[]string", slice)
	}
	return strings, nil
}

func MultiSelectChangeFromMap(m map[string]interface{}) (MultiSelectChange, error) {
	self := MultiSelectChange{}
	if m["SelectValues"] == nil {
		self.SelectValues = []string{}
	} else {
		selectValues, err := interfaceToStringSlice(m["SelectValues"])
		if err != nil {
			return MultiSelectChange{}, fmt.Errorf("MultiSelectChangeFromMap: could not parse \"SelectValues\": %w", err)
		}
		self.SelectValues = selectValues
	}

	if m["RemoveSelectValues"] == nil {
		self.RemoveSelectValues = []string{}
	} else {
		removeSelectValues, err := interfaceToStringSlice(m["RemoveSelectValues"])
		if err != nil {
			return MultiSelectChange{}, fmt.Errorf("MultiSelectChangeFromMap: could not parse \"RemoveSelectValues\": %w", err)
		}
		self.RemoveSelectValues = removeSelectValues
	}

	return self, nil
}

func MultiSelectChangeFromInterface(value interface{}) (MultiSelectChange, error) {
	m, ok := value.(map[string]interface{})
	if !ok {
		return MultiSelectChange{}, fmt.Errorf("MultiSelectChangeFromInterface: %w",
			errs.NewCastError("map[string]interface{}", value))
	}

	return MultiSelectChangeFromMap(m)
}
