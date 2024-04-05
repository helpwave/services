package patient_postgres_projection

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	patientEventsV1 "tasks-svc/internal/patient/events/v1"
	"tasks-svc/repos/patient_repo"
)

type Projection struct {
	*custom.CustomProjection
	patientRepo *patient_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-postgres-projection", serviceName)
	p := &Projection{custom.NewCustomProjection(es, subscriptionGroupName), patient_repo.New(hwdb.GetDB())}
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
}

// Event handlers
func (a *Projection) onPatientCreated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.PatientCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	patientID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	err = a.patientRepo.CreatePatient(ctx, patient_repo.CreatePatientParams{
		ID:                      patientID,
		HumanReadableIdentifier: payload.HumanReadableIdentifier,
		Notes:                   payload.Notes,
		CreatedAt:               hwdb.TimeToTimestamp(evt.Timestamp),
		UpdatedAt:               hwdb.TimeToTimestamp(evt.Timestamp),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (a *Projection) onBedAssigned(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.BedAssignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	bedId, err := hwutil.ParseNullUUID(&payload.BedID)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	err = a.patientRepo.UpdatePatientBedId(ctx, patient_repo.UpdatePatientBedIdParams{
		ID:        evt.AggregateID,
		BedID:     bedId,
		UpdatedAt: hwdb.TimeToTimestamp(evt.Timestamp),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (a *Projection) onBedUnassigned(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	err := a.patientRepo.UpdatePatientBedId(ctx, patient_repo.UpdatePatientBedIdParams{
		ID:        evt.AggregateID,
		BedID:     uuid.NullUUID{},
		UpdatedAt: hwdb.TimeToTimestamp(evt.Timestamp),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (a *Projection) onPatientDischarged(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	err := a.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:           evt.AggregateID,
		IsDischarged: hwutil.PtrTo(int32(1)),
		UpdatedAt:    hwdb.TimeToTimestamp(evt.Timestamp),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (a *Projection) onNotesUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.NotesUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	err := a.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:        evt.AggregateID,
		Notes:     &payload.Notes,
		UpdatedAt: hwdb.TimeToTimestamp(evt.Timestamp),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (a *Projection) onHumanReadableIdentifierUpdated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.HumanReadableIdentifierUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	err := a.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:                     evt.AggregateID,
		HumanReadableIdentfier: &payload.HumanReadableIdentifier,
		UpdatedAt:              hwdb.TimeToTimestamp(evt.Timestamp),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}

func (a *Projection) onPatientReadmitted(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	err := a.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:           evt.AggregateID,
		IsDischarged: hwutil.PtrTo(int32(0)),
		UpdatedAt:    hwdb.TimeToTimestamp(evt.Timestamp),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}
