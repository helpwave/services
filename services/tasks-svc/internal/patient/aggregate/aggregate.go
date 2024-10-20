package aggregate

import (
	"context"
	"hwes"

	"github.com/google/uuid"

	patientEventsV1 "tasks-svc/internal/patient/events/v1"
	"tasks-svc/internal/patient/models"
)

const PatientAggregateType = "patient"

type PatientAggregate struct {
	*hwes.AggregateBase
	Patient *models.Patient
}

func NewPatientAggregate(id uuid.UUID) *PatientAggregate {
	aggregate := &PatientAggregate{Patient: &models.Patient{}}
	aggregate.AggregateBase = hwes.NewAggregateBase(PatientAggregateType, id)
	aggregate.Patient.ID = id
	aggregate.initEventListeners()
	return aggregate
}

func LoadPatientAggregate(ctx context.Context, as hwes.AggregateStore, id uuid.UUID) (*PatientAggregate, error) {
	patientAggregate := NewPatientAggregate(id)
	if err := as.Load(ctx, patientAggregate); err != nil {
		return nil, err
	}
	return patientAggregate, nil
}

func (a *PatientAggregate) initEventListeners() {
	a.RegisterEventListener(patientEventsV1.PatientCreated, a.onPatientCreated)
	a.RegisterEventListener(patientEventsV1.BedAssigned, a.onBedAssigned)
	a.RegisterEventListener(patientEventsV1.BedUnsassigned, a.onBedUnassigned)
	a.RegisterEventListener(patientEventsV1.PatientDischarged, a.onPatientDischarged)
	a.RegisterEventListener(patientEventsV1.NotesUpdated, a.onNotesUpdated)
	a.RegisterEventListener(patientEventsV1.HumanReadableIdentifierUpdated, a.onHumanReadableIdentifierUpdated)
	a.RegisterEventListener(patientEventsV1.PatientReadmitted, a.onPatientReadmitted)
	a.RegisterEventListener(patientEventsV1.PatientDeleted, a.onPatientDeleted)
}

// Event handlers
func (a *PatientAggregate) onPatientCreated(evt hwes.Event) error {
	var payload patientEventsV1.PatientCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Patient.Notes = payload.Notes
	a.Patient.HumanReadableIdentifier = payload.HumanReadableIdentifier
	a.Patient.CreatedAt = evt.Timestamp
	a.Patient.UpdatedAt = evt.Timestamp

	return nil
}

func (a *PatientAggregate) onBedAssigned(evt hwes.Event) error {
	var payload patientEventsV1.BedAssignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	bedID, err := uuid.Parse(payload.BedID)
	if err != nil {
		return err
	}

	a.Patient.BedID = uuid.NullUUID{UUID: bedID, Valid: true}
	a.Patient.UpdatedAt = evt.Timestamp

	return nil
}

func (a *PatientAggregate) onBedUnassigned(evt hwes.Event) error {
	a.Patient.BedID = uuid.NullUUID{UUID: uuid.Nil, Valid: false}
	a.Patient.UpdatedAt = evt.Timestamp
	return nil
}

func (a *PatientAggregate) onPatientDischarged(evt hwes.Event) error {
	a.Patient.IsDischarged = true
	a.Patient.UpdatedAt = evt.Timestamp
	return nil
}

func (a *PatientAggregate) onNotesUpdated(evt hwes.Event) error {
	var payload patientEventsV1.NotesUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Patient.Notes = payload.Notes
	a.Patient.UpdatedAt = evt.Timestamp
	return nil
}

func (a *PatientAggregate) onHumanReadableIdentifierUpdated(evt hwes.Event) error {
	var payload patientEventsV1.HumanReadableIdentifierUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Patient.HumanReadableIdentifier = payload.HumanReadableIdentifier
	a.Patient.UpdatedAt = evt.Timestamp
	return nil
}

func (a *PatientAggregate) onPatientReadmitted(evt hwes.Event) error {
	a.Patient.IsDischarged = false
	a.Patient.UpdatedAt = evt.Timestamp
	return nil
}

func (a *PatientAggregate) onPatientDeleted(_ hwes.Event) error {
	a.MarkAsDeleted()
	return nil
}
