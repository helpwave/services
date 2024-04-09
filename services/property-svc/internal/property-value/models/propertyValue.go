package models

import (
	"github.com/google/uuid"
)

type PropertyValue struct {
	ID         uuid.UUID
	PropertyID uuid.UUID
	Value      interface{}
	SubjectID  uuid.UUID
}

func NewPropertyValue() *PropertyValue {
	return &PropertyValue{}
}
