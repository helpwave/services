package models

import (
	"fmt"
	pb "gen/services/property_svc/v1"
	"github.com/google/uuid"
	"hwutil"
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

type SelectValueOption struct {
	Id          uuid.UUID
	Name        string
	Description string
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

	Consistency string

	Value *TypedValue
}

type MultiSelectChange struct {
	SelectValues       []string
	RemoveSelectValues []string
}

func interfaceToStringSlice(interf interface{}) ([]string, error) {
	slice, ok := interf.([]interface{})
	if !ok {
		return nil, fmt.Errorf("value is not a slice")
	}

	strings, ok := hwutil.InterfacesToStrings(slice)
	if !ok {
		return nil, fmt.Errorf("value is not a []string")
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
		return MultiSelectChange{}, fmt.Errorf("MultiSelectChangeFromInterface: value is not a map")
	}

	return MultiSelectChangeFromMap(m)
}
