package aggregate

import (
	"context"
	patientEventsV1 "tasks-svc/internal/patient/events/v1"

	"github.com/google/uuid"
)

func (a *PatientAggregate) CreatePatient(ctx context.Context, humanReadableIdentifier string, notes string) error {
	// The "Patient" entity is our main entity in this aggregate.
	// Therefore, we are using the same ID
	id := a.GetID()
	event, err := patientEventsV1.NewPatientCreatedEvent(a, id, humanReadableIdentifier, notes)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PatientAggregate) AssignBed(ctx context.Context, newBedID uuid.UUID) error {
	event, err := patientEventsV1.NewBedAssignedEvent(a, newBedID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PatientAggregate) UnassignBed(ctx context.Context) error {
	return a.Apply(patientEventsV1.NewBedUnassignedEvent(a))
}

func (a *PatientAggregate) DischargePatient(ctx context.Context) error {
	return a.Apply(patientEventsV1.NewPatientDischargedEvent(a))
}

func (a *PatientAggregate) UpdateHumanReadableIdentifier(ctx context.Context, newHumanReadableIdentifier string) error {
	event, err := patientEventsV1.NewHumanReadableIdentifierUpdatedEvent(a, newHumanReadableIdentifier)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PatientAggregate) UpdateNotes(ctx context.Context, newNotes string) error {
	event, err := patientEventsV1.NewNotesUpdatedEvent(a, newNotes)
	if err != nil {
		return err
	}
	return a.Apply(event)
}

func (a *PatientAggregate) ReadmitPatient(ctx context.Context) error {
	return a.Apply(patientEventsV1.NewPatientReadmittedEvent(a))
}
