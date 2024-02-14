package aggregate_test

import (
	"github.com/google/uuid"
	"hwes"
	"tasks-svc/internal/patient/aggregate"
	patientEventsV1 "tasks-svc/internal/patient/events/v1"
	"testing"
)

func MustApplyEvent(t *testing.T, aggregate hwes.Aggregate, newEvent func() (hwes.Event, error)) {
	event, err := newEvent()
	if err != nil {
		t.Error(err)
	}

	if err := aggregate.Progress(event); err != nil {
		t.Error(err)
	}
}

func TestPatientAggregate_CreatePatient(t *testing.T) {
	patientID := uuid.New()

	patientHumanReadableIdentifier := "tester"
	patientNotes := "test-notes"

	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(patientAggregate, patientID, patientHumanReadableIdentifier, patientNotes)
	})

	if patientAggregate.Patient.HumanReadableIdentifier != patientHumanReadableIdentifier {
		t.Errorf("Patient humanReadableIdentifier: expected '%s' got '%s'", patientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)
	}

	if patientAggregate.Patient.Notes != patientNotes {
		t.Errorf("Patient notes: expected '%s' got '%s'", patientNotes, patientAggregate.Patient.Notes)
	}
}

func TestPatientAggregate_UpdateNotes(t *testing.T) {
	patientID := uuid.New()

	patientHumanReadableIdentifier := "tester"
	initialPatientNotes := "test notes"
	updatedPatientNotes := "test notes updated"

	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(patientAggregate, patientID, patientHumanReadableIdentifier, initialPatientNotes)
	})

	if patientAggregate.Patient.Notes != initialPatientNotes {
		t.Errorf("Patient Notes: expected '%s' got '%s'", initialPatientNotes, patientAggregate.Patient.Notes)
	}

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewNotesUpdatedEvent(patientAggregate, initialPatientNotes, updatedPatientNotes)
	})

	if patientAggregate.Patient.Notes != updatedPatientNotes {
		t.Errorf("Patient Notes: expected '%s' got '%s'", updatedPatientNotes, patientAggregate.Patient.Notes)
	}
}

func TestPatientAggregate_UpdateHumanReadableIdentifier(t *testing.T) {
	patientID := uuid.New()

	initialPatientHumanReadableIdentifier := "tester"
	updatedPatientHumanReadableIdentifier := "tester updated"

	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(patientAggregate, patientID, initialPatientHumanReadableIdentifier, "")
	})

	if patientAggregate.Patient.HumanReadableIdentifier != initialPatientHumanReadableIdentifier {
		t.Errorf("Patient Notes: expected '%s' got '%s'", initialPatientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)
	}

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewHumanReadableIdentifierUpdatedEvent(patientAggregate, initialPatientHumanReadableIdentifier, updatedPatientHumanReadableIdentifier)
	})

	if patientAggregate.Patient.HumanReadableIdentifier != updatedPatientHumanReadableIdentifier {
		t.Errorf("Patient Notes: expected '%s' got '%s'", updatedPatientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)
	}
}

func TestPatientAggregate_DischargeReadmitPatient(t *testing.T) {
	patientID := uuid.New()
	patientHumanReadableIdentifier := "tester"
	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(patientAggregate, patientID, patientHumanReadableIdentifier, "")
	})

	if patientAggregate.Patient.HumanReadableIdentifier != patientHumanReadableIdentifier {
		t.Errorf("Patient humanReadableIdentifier: expected '%s' got '%s'", patientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)
	}

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientDischargedEvent(patientAggregate), nil
	})

	if !patientAggregate.Patient.IsDischarged {
		t.Error("Patient has not been discharged")
	}

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientReadmittedEvent(patientAggregate), nil
	})

	if patientAggregate.Patient.IsDischarged {
		t.Error("Patient has not been readmitted")
	}
}

func TestPatientAggregate_AssignUnassignBed(t *testing.T) {
	patientID := uuid.New()

	newBedID := uuid.New()
	patientHumanReadableIdentifier := "tester"
	patientAggregate := aggregate.NewPatientAggregate(patientID)

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewPatientCreatedEvent(patientAggregate, patientID, patientHumanReadableIdentifier, "")
	})

	if patientAggregate.Patient.HumanReadableIdentifier != patientHumanReadableIdentifier {
		t.Errorf("Patient humanReadableIdentifier: expected '%s' got '%s'", patientHumanReadableIdentifier, patientAggregate.Patient.HumanReadableIdentifier)
	}

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewBedAssignedEvent(patientAggregate, patientAggregate.Patient.BedID, newBedID)
	})

	if patientAggregate.Patient.BedID.UUID != newBedID {
		t.Errorf("Patient BedID: expected '%s' got '%s'", newBedID.String(), patientAggregate.Patient.BedID.UUID.String())
	}

	MustApplyEvent(t, patientAggregate, func() (hwes.Event, error) {
		return patientEventsV1.NewBedUnassignedEvent(patientAggregate), nil
	})

	if patientAggregate.Patient.BedID.UUID != uuid.Nil {
		t.Errorf("Patient BedID: expected '%s' got '%s'", uuid.Nil.String(), patientAggregate.Patient.BedID.UUID.String())
	}
}
