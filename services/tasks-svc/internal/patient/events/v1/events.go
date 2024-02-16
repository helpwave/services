package v1

import (
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
	PatientDeleted                 = "PATIENT_DELETED_v1"
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
	PatientID string `json:"patient_id"`
	BedID     string `json:"bed_id"`
}

type BedUnassignedEvent struct {
	PatientID string `json:"patient_id"`
}

type PatientDischargedEvent struct {
	PatientID string `json:"patient_id"`
}

type PatientDeletedEvent struct {
	PatientID string `json:"patient_id"`
}

type PatientReadmittedEvent struct {
	PatientID string `json:"patient_id"`
}

func NewPatientCreatedEvent(a hwes.Aggregate, id uuid.UUID, humanReadableIdentifier string, notes string) (hwes.Event, error) {
	payload := PatientCreatedEvent{
		ID:                      id.String(),
		HumanReadableIdentifier: humanReadableIdentifier,
		Notes:                   notes,
	}
	return hwes.NewEventWithData(a, PatientCreated, payload)
}

func NewHumanReadableIdentifierUpdatedEvent(a hwes.Aggregate, patientID uuid.UUID, humanReadableIdentifier string) (hwes.Event, error) {
	payload := HumanReadableIdentifierUpdatedEvent{
		PatientID:               patientID.String(),
		HumanReadableIdentifier: humanReadableIdentifier,
	}
	return hwes.NewEventWithData(a, HumanReadableIdentifierUpdated, payload)
}

func NewNotesUpdatedEvent(a hwes.Aggregate, patientID uuid.UUID, notes string) (hwes.Event, error) {
	payload := NotesUpdatedEvent{
		PatientID: patientID.String(),
		Notes:     notes,
	}
	return hwes.NewEventWithData(a, NotesUpdated, payload)
}

func NewBedAssignedEvent(a hwes.Aggregate, patientID uuid.UUID, bedID uuid.UUID) (hwes.Event, error) {
	payload := BedAssignedEvent{
		PatientID: patientID.String(),
		BedID:     bedID.String(),
	}
	return hwes.NewEventWithData(a, BedAssigned, payload)
}

func NewBedUnassignedEvent(a hwes.Aggregate, patientID uuid.UUID) (hwes.Event, error) {
	payload := BedUnassignedEvent{
		PatientID: patientID.String(),
	}
	return hwes.NewEventWithData(a, BedUnsassigned, payload)
}

func NewPatientDischargedEvent(a hwes.Aggregate, patientID uuid.UUID) (hwes.Event, error) {
	payload := PatientDischargedEvent{
		PatientID: patientID.String(),
	}
	return hwes.NewEventWithData(a, PatientDischarged, payload)
}

func NewPatientDeletedEvent(a hwes.Aggregate, patientID uuid.UUID) (hwes.Event, error) {
	payload := PatientDeletedEvent{
		PatientID: patientID.String(),
	}
	return hwes.NewEventWithData(a, PatientDeleted, payload)
}

func NewPatientReadmittedEvent(a hwes.Aggregate, patientID uuid.UUID) (hwes.Event, error) {
	payload := PatientReadmittedEvent{
		PatientID: patientID.String(),
	}
	return hwes.NewEventWithData(a, PatientReadmitted, payload)
}
