package models

import (
	"fmt"
	commonpb "gen/libs/common/v1"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
	"google.golang.org/protobuf/proto"
	"google.golang.org/protobuf/types/known/anypb"
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/wrapperspb"
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

func (v SimpleTypedValue) ToProtoMessage() proto.Message {
	switch {
	case v.TextValue != nil:
		return wrapperspb.String(*v.TextValue)
	case v.BoolValue != nil:
		return wrapperspb.Bool(*v.BoolValue)
	case v.NumberValue != nil:
		return wrapperspb.Double(*v.NumberValue)
	case v.DateTimeValue != nil:
		return timestamppb.New(*v.DateTimeValue)
	case v.DateValue != nil:
		return &pb.Date{Date: timestamppb.New(*v.DateValue)}
	case v.SingleSelectValue != nil:
		return wrapperspb.String(*v.SingleSelectValue)
	case v.MultiSelectValues != nil:
		els, err := hwutil.MapWithErr(v.MultiSelectValues, func(o string) (*anypb.Any, error) {
			return anypb.New(wrapperspb.String(o))
		})
		if err != nil {
			panic("SimpleTypedValue.ToProtoMessage: could not create anypb of string")
		}
		return &commonpb.AnyArray{Elements: els}
	default:
		panic(fmt.Sprintf("SimpleTypedValue.ToProtoMessage: unhandled state: %v", v))
	}
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

func (c TypedValueChange) ConflictPossible(value *SimpleTypedValue) bool {
	if value == nil {
		return !c.ValueRemoved
	}

	switch {
	case c.ValueRemoved:
		return false // no conflict possible
	case c.TextValue != nil:
		return value.TextValue != nil && *c.TextValue != *value.TextValue
	case c.BoolValue != nil:
		return value.BoolValue != nil && *c.BoolValue != *value.BoolValue
	case c.NumberValue != nil:
		return value.NumberValue != nil && *c.NumberValue != *value.NumberValue
	case c.DateValue != nil:
		return value.DateValue != nil && *c.DateValue != *value.DateValue
	case c.DateTimeValue != nil:
		return value.DateTimeValue != nil && *c.DateTimeValue != *value.DateTimeValue
	case c.SingleSelectValue != nil:
		return value.SingleSelectValue != nil && *c.SingleSelectValue != *value.SingleSelectValue
	case c.MultiSelectValues != nil:
		return false // no conflict possible
	default:
		panic(fmt.Sprintf("TypedValueChange.ConflictPossible: value unknown:  %v", c))
	}
}
