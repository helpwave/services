package models

import (
	pb "gen/proto/services/property_svc/v1"
	"github.com/google/uuid"
)

type Property struct {
	ID          uuid.UUID
	SubjectID   uuid.UUID
	SubjectType string
	FieldType   pb.FieldType

	Name        string
	Description string
	IsArchived  bool

	_setID uuid.UUID //nolint:unused

	SelectOptions []SelectOption
}

func NewProperty() *Property {
	return &Property{
		Name:        "",
		Description: "",
		IsArchived:  false,
	}
}

type SelectOption struct {
	ID          uuid.UUID
	Name        string
	Description string
}

func NewSelectOption() *SelectOption {
	return &SelectOption{
		Name: "",
	}
}
