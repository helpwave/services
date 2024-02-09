package models

import (
	"github.com/google/uuid"
)

type PropertyValue struct {
	ID          uuid.UUID
	PropertyID  uuid.UUID
	SubjectID   uuid.UUID
	SubjectType string
	Value       interface{}
}

func NewPropertyValue() *PropertyValue {
	return &PropertyValue{}
}
