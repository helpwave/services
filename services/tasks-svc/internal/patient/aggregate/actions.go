package aggregate

import (
	"context"
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
