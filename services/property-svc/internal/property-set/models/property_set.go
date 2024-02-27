package models

import (
	"github.com/google/uuid"
)

type PropertySet struct {
	ID   uuid.UUID
	Name string
}

func NewPropertySet() *PropertySet {
	return &PropertySet{
		Name: "",
	}
}
