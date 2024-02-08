package aggregate

import (
	"context"
	"github.com/google/uuid"
	patientEventsV1 "tasks-svc/internal/patient/events/v1"
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

func (a *PatientAggregate) AssignBed(ctx context.Context, currentBedID uuid.NullUUID, newBedID uuid.UUID) error {
	event, err := patientEventsV1.NewBedAssignedEvent(a, currentBedID, newBedID)
	if err != nil {
		return err
	}
	return a.Apply(event)
}
