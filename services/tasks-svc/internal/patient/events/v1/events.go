package v1

import (
	"context"
	"github.com/google/uuid"
	"hwes"
)

const (
	PatientCreated                 = "PATIENT_CREATED_v1"
	HumanReadableIdentifierUpdated = "HUMAN_READABLE_IDENTIFIER_UPDATED_v1"
	NotesUpdated                   = "NOTES_UPDATED_v1"
	BedAssigned                    = "BED_ASSIGNED_v1"
	BedUnsassigned                 = "BED_UNASSIGNED_v1"
	PatientDischarged              = "PATIENT_DISCHARGED_v1"
	PatientReadmitted              = "PATIENT_READMITTED_v1"
)

type PatientCreatedEvent struct {
	ID                      string `json:"id"`
	HumanReadableIdentifier string `json:"human_readable_identifier"`
	Notes                   string `json:"notes"`
}

type HumanReadableIdentifierUpdatedEvent struct {
	PatientID               string `json:"patient_id"`
	HumanReadableIdentifier string `json:"human_readable_identifier"`
}

type NotesUpdatedEvent struct {
	PatientID string `json:"patient_id"`
	Notes     string `json:"notes"`
}

type BedAssignedEvent struct {
	BedID string `json:"bed_id"`
}

type PatientDischargedEvent struct {
	PatientID string `json:"patient_id"`
}

type PatientDeletedEvent struct {
	PatientID string `json:"patient_id"`
}

func NewPatientCreatedEvent(ctx context.Context, a hwes.Aggregate, id uuid.UUID, humanReadableIdentifier string, notes string) (hwes.Event, error) {
	payload := PatientCreatedEvent{
		ID:                      id.String(),
		HumanReadableIdentifier: humanReadableIdentifier,
		Notes:                   notes,
	}
	return hwes.NewEventWithUserAndData(ctx, a, PatientCreated, payload)
}

func NewHumanReadableIdentifierUpdatedEvent(ctx context.Context, a hwes.Aggregate, humanReadableIdentifier string) (hwes.Event, error) {
	payload := HumanReadableIdentifierUpdatedEvent{
		HumanReadableIdentifier: humanReadableIdentifier,
	}
	return hwes.NewEventWithUserAndData(ctx, a, HumanReadableIdentifierUpdated, payload)
}

func NewNotesUpdatedEvent(ctx context.Context, a hwes.Aggregate, notes string) (hwes.Event, error) {
	payload := NotesUpdatedEvent{
		Notes: notes,
	}
	return hwes.NewEventWithUserAndData(ctx, a, NotesUpdated, payload)
}

func NewBedAssignedEvent(ctx context.Context, a hwes.Aggregate, bedID uuid.UUID) (hwes.Event, error) {
	payload := BedAssignedEvent{
		BedID: bedID.String(),
	}
	return hwes.NewEventWithUserAndData(ctx, a, BedAssigned, payload)
}

func NewBedUnassignedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEventWithUser(ctx, a, BedUnsassigned)
}

func NewPatientDischargedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEventWithUser(ctx, a, PatientDischarged)
}

func NewPatientReadmittedEvent(ctx context.Context, a hwes.Aggregate) (hwes.Event, error) {
	return hwes.NewEventWithUser(ctx, a, PatientReadmitted)
}
