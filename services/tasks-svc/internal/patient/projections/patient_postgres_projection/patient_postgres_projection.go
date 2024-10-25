package patient_postgres_projection

import (
	"context"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"

	"tasks-svc/internal/patient/aggregate"
	patientEventsV1 "tasks-svc/internal/patient/events/v1"
	"tasks-svc/repos/patient_repo"
)

type Projection struct {
	*custom.CustomProjection
	patientRepo *patient_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := serviceName + "-patient-postgres-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.PatientAggregateType + "-"},
		),
		patientRepo: patient_repo.New(hwdb.GetDB()),
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(patientEventsV1.PatientCreated, p.onPatientCreated)
	p.RegisterEventListener(patientEventsV1.BedAssigned, p.onBedAssigned)
	p.RegisterEventListener(patientEventsV1.BedUnsassigned, p.onBedUnassigned)
	p.RegisterEventListener(patientEventsV1.PatientDischarged, p.onPatientDischarged)
	p.RegisterEventListener(patientEventsV1.NotesUpdated, p.onNotesUpdated)
	p.RegisterEventListener(patientEventsV1.HumanReadableIdentifierUpdated, p.onHumanReadableIdentifierUpdated)
	p.RegisterEventListener(patientEventsV1.PatientReadmitted, p.onPatientReadmitted)
	p.RegisterEventListener(patientEventsV1.PatientDeleted, p.onPatientDeleted)
}

// Event handlers
func (a *Projection) onPatientCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.PatientCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	patientID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err = a.patientRepo.CreatePatient(ctx, patient_repo.CreatePatientParams{
		ID:                      patientID,
		HumanReadableIdentifier: payload.HumanReadableIdentifier,
		Notes:                   payload.Notes,
		CreatedAt:               hwdb.TimeToTimestamp(evt.Timestamp),
		UpdatedAt:               hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency:             int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (a *Projection) onBedAssigned(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.BedAssignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	bedId, err := hwutil.ParseNullUUID(&payload.BedID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err = a.patientRepo.UpdatePatientBedId(ctx, patient_repo.UpdatePatientBedIdParams{
		ID:          evt.AggregateID,
		BedID:       bedId,
		UpdatedAt:   hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (a *Projection) onBedUnassigned(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	err := a.patientRepo.UpdatePatientBedId(ctx, patient_repo.UpdatePatientBedIdParams{
		ID:          evt.AggregateID,
		BedID:       uuid.NullUUID{},
		UpdatedAt:   hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (a *Projection) onPatientDischarged(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	err := a.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:           evt.AggregateID,
		IsDischarged: hwutil.PtrTo(true),
		UpdatedAt:    hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency:  int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (a *Projection) onNotesUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.NotesUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err := a.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:          evt.AggregateID,
		Notes:       &payload.Notes,
		UpdatedAt:   hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (a *Projection) onHumanReadableIdentifierUpdated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.HumanReadableIdentifierUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	err := a.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:                     evt.AggregateID,
		HumanReadableIdentfier: &payload.HumanReadableIdentifier,
		UpdatedAt:              hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency:            int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (a *Projection) onPatientReadmitted(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	err := a.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:           evt.AggregateID,
		IsDischarged: hwutil.PtrTo(false),
		UpdatedAt:    hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency:  int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}

func (a *Projection) onPatientDeleted(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	err := a.patientRepo.DeletePatient(ctx, evt.AggregateID)
	if err := hwdb.Error(ctx, err); err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}
	return nil, nil
}
