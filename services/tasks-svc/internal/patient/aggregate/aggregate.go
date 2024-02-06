package aggregate

import (
	"context"
	"github.com/google/uuid"
	"hwes"
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

// TODO: event handlers
