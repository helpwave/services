package models

import (
	pb "gen/proto/services/property_svc/v1"

	"github.com/google/uuid"
)

type Property struct {
	ID          uuid.UUID
	SubjectType pb.SubjectType
	FieldType   pb.FieldType

	Name        string
	Description string
	IsArchived  bool

	SetID                          *uuid.UUID
	AlwaysIncludeForCurrentContext bool
	FieldTypeData                  FieldTypeData
}

type FieldTypeData struct {
	None       *bool       `json:"none,omitempty"`
	SelectData *SelectData `json:"select_data,omitempty"`
}

type SelectData struct {
	AllowFreetext bool           `json:"allow_freetext"`
	SelectOptions []SelectOption ` json:"select_options"`
}

type SelectOption struct {
	ID          string
	Name        string
	Description string
}
