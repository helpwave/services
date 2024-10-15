package v1

import (
	"context"
	"hwes"

	"github.com/google/uuid"
)

const (
	PatientCreated                 = "PATIENT_CREATED_v1"
	HumanReadableIdentifierUpdated = "HUMAN_READABLE_IDENTIFIER_UPDATED_v1"
	NotesUpdated                   = "NOTES_UPDATED_v1"
	BedAssigned                    = "BED_ASSIGNED_v1"
	BedUnsassigned                 = "BED_UNASSIGNED_v1"
	PatientDischarged              = "PATIENT_DISCHARGED_v1"
	PatientReadmitted              = "PATIENT_READMITTED_v1"
	PatientDeleted                 = "PATIENT_DELETED_v1"
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

func NewPatientCreatedEvent(
	ctx context.Context,
	a hwes.Aggregate,
	id uuid.UUID,
	humanReadableIdentifier string,
	notes string,
) (hwes.Event, error) {
	payload := PatientCreatedEvent{
		ID:                      id.String(),
		HumanReadableIdentifier: humanReadableIdentifier,
		Notes:                   notes,
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
