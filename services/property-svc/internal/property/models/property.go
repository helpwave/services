package models

import (
	pb "gen/services/property_svc/v1"

	"github.com/google/uuid"
)

type Property struct {
	ID          uuid.UUID
	SubjectType pb.SubjectType
	FieldType   pb.FieldType

	Name        string
	Description string
	IsArchived  bool

	SetID         uuid.NullUUID
	FieldTypeData FieldTypeData
}

type PropertyWithConsistency struct {
	Property
	Consistency string
}

type FieldTypeData struct {
	SelectData *SelectData `json:"select_data,omitempty"`
}

type SelectData struct {
	AllowFreetext bool           `json:"allow_freetext"`
	SelectOptions []SelectOption `json:"select_options"`
}

type SelectOption struct {
	ID          uuid.UUID
	Name        string
	Description *string
	IsCustom    bool
}

type UpdateSelectOption struct {
	ID          uuid.UUID
	Name        *string
	Description *string
	IsCustom    *bool
}
