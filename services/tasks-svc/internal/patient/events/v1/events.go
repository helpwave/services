package v1

import (
	"context"
	v1 "gen/libs/common/v1"
	"hwes"
	"time"

	"github.com/google/uuid"
)

const (
	PatientCreated                 = "PATIENT_CREATED_v1"
	HumanReadableIdentifierUpdated = "HUMAN_READABLE_IDENTIFIER_UPDATED_v1"
	NotesUpdated                   = "NOTES_UPDATED_v1"
	GenderUpdated                  = "GENDER_UPDATED_v1"
	DateOfBirthUpdated             = "DATE_OF_BIRTH_UPDATED_v1"
	BedAssigned                    = "BED_ASSIGNED_v1"
	BedUnsassigned                 = "BED_UNASSIGNED_v1"
	PatientDischarged              = "PATIENT_DISCHARGED_v1"
	PatientReadmitted              = "PATIENT_READMITTED_v1"
	PatientDeleted                 = "PATIENT_DELETED_v1"
)

type PatientCreatedEvent struct {
	ID                      string     `json:"id"`
	HumanReadableIdentifier string     `json:"human_readable_identifier"`
	Notes                   string     `json:"notes"`
	Gender                  v1.Gender  `json:"gender"`
	DateOfBirth             *time.Time `json:"date_of_birth"`
}

type HumanReadableIdentifierUpdatedEvent struct {
	PatientID               string `json:"patient_id"`
	HumanReadableIdentifier string `json:"human_readable_identifier"`
}

type NotesUpdatedEvent struct {
	PatientID string `json:"patient_id"`
	Notes     string `json:"notes"`
}

type GenderUpdatedEvent struct {
	PatientID string    `json:"patient_id"`
	Gender    v1.Gender `json:"gender"`
}

type DateOfBirthUpdatedEvent struct {
	PatientID   string    `json:"patient_id"`
	DateOfBirth time.Time `json:"date_of_birth"`
}

type BedAssignedEvent struct {
	BedID string `json:"bed_id"`
}

type PatientDischargedEvent struct {
	PatientID string `json:"patient_id"`
}

func NewPatientCreatedEvent(
	ctx context.Context,
	a hwes.Aggregate,
	id uuid.UUID,
	humanReadableIdentifier string,
	notes string,
	gender v1.Gender,
	dateOfBirth *time.Time,
) (hwes.Event, error) {
	payload := PatientCreatedEvent{
		ID:                      id.String(),
		HumanReadableIdentifier: humanReadableIdentifier,
		Notes:                   notes,
		Gender:                  gender,
		DateOfBirth:             dateOfBirth,
	}
	return hwes.NewEvent(a, PatientCreated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewHumanReadableIdentifierUpdatedEvent(
	ctx context.Context,
	a hwes.Aggregate,
	humanReadableIdentifier string,
) (hwes.Event, error) {
	payload := HumanReadableIdentifierUpdatedEvent{
		HumanReadableIdentifier: humanReadableIdentifier,
	}
	return hwes.NewEvent(a, HumanReadableIdentifierUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewNotesUpdatedEvent(ctx context.Context, a hwes.Aggregate, notes string) (hwes.Event, error) {
	payload := NotesUpdatedEvent{
		PatientID: a.GetID().String(),
		Notes:     notes,
	}
	return hwes.NewEvent(a, NotesUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewGenderUpdatedEvent(ctx context.Context, a hwes.Aggregate, gender v1.Gender) (hwes.Event, error) {
	payload := GenderUpdatedEvent{
		PatientID: a.GetID().String(),
		Gender:    gender,
	}
	return hwes.NewEvent(a, GenderUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewDateOfBirthUpdatedEvent(ctx context.Context, a hwes.Aggregate, dateOfBirth time.Time) (hwes.Event, error) {
	payload := DateOfBirthUpdatedEvent{
		PatientID:   a.GetID().String(),
		DateOfBirth: dateOfBirth,
	}
	return hwes.NewEvent(a, DateOfBirthUpdated, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewBedAssignedEvent(ctx context.Context, a hwes.Aggregate, bedID uuid.UUID) (hwes.Event, error) {
	payload := BedAssignedEvent{
		BedID: bedID.String(),
	}
	return hwes.NewEvent(a, BedAssigned, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewBedUnassignedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, BedUnsassigned, hwes.WithContext(ctx))
}

func NewPatientDischargedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	payload := PatientDischargedEvent{
		PatientID: a.GetID().String(),
	}
	return hwes.NewEvent(a, PatientDischarged, hwes.WithContext(ctx), hwes.WithData(payload))
}

func NewPatientReadmittedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, PatientReadmitted, hwes.WithContext(ctx))
}

func NewPatientDeletedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEvent(a, PatientDeleted, hwes.WithContext(ctx))
}
