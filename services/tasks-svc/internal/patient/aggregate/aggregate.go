package aggregate

import (
	"context"
	"github.com/google/uuid"
	"hwes"
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
	//TODO: aggregate.initEventListeners()
	return aggregate
}

func LoadPatientAggregate(ctx context.Context, as hwes.AggregateStore, id uuid.UUID) (*PatientAggregate, error) {
	patient := NewPatientAggregate(id)
	if err := as.Load(ctx, patient); err != nil {
		return nil, err
	}
	return patient, nil
}

func (a *PatientAggregate) initEventListeners() {
	a.RegisterEventListener(patientEventsV1.PatientCreated, a.onPatientCreated)
}

// Event handlers
func (a *PatientAggregate) onPatientCreated(evt hwes.Event) error {
	var payload patientEventsV1.PatientCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		return err
	}

	a.Patient.Notes = payload.Notes
	a.Patient.HumanReadableIdentifier = payload.HumanReadableIdentifier

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

	return nil
}
