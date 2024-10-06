// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0

package views_repo

import (
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
)

type MultiSelectValue struct {
	ValueID      uuid.UUID
	SelectOption uuid.UUID
}

type PatientPropertyViewRule struct {
	RuleID    uuid.UUID
	WardID    uuid.NullUUID
	PatientID uuid.NullUUID
}

type Property struct {
	ID           uuid.UUID
	SubjectType  int32
	FieldType    int32
	Name         string
	Description  string
	IsArchived   bool
	SetID        uuid.NullUUID
	SelectDataID uuid.NullUUID
	Consistency  int64
}

type PropertyValue struct {
	ID            uuid.UUID
	PropertyID    uuid.UUID
	SubjectID     uuid.UUID
	TextValue     *string
	NumberValue   *float64
	BoolValue     *bool
	DateValue     pgtype.Date
	DateTimeValue pgtype.Timestamp
	Consistency   int64
}

type PropertyViewFilterAlwaysIncludeItem struct {
	DontAlwaysInclude bool
	RuleID            uuid.UUID
	PropertyID        uuid.UUID
}

type PropertyViewRule struct {
	RuleID uuid.UUID
}

type SchemaMigration struct {
	Version int64
	Dirty   bool
}

type SelectData struct {
	ID            uuid.UUID
	AllowFreetext bool
}

type SelectOption struct {
	ID           uuid.UUID
	Name         string
	Description  string
	IsCustom     bool
	SelectDataID uuid.UUID
}

type TaskPropertyViewRule struct {
	RuleID uuid.UUID
	WardID uuid.NullUUID
	TaskID uuid.NullUUID
}
