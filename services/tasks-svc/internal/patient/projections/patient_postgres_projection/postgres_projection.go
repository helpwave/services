package patient_postgres_projection

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgtype"
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
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-postgres-projection", serviceName)
	p := &Projection{custom.NewCustomProjection(es, subscriptionGroupName)}
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
func (a *Projection) onPatientCreated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	patientRepo := patient_repo.New(hwdb.GetDB())

	var payload patientEventsV1.PatientCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	patientID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	timestamp := pgtype.Timestamp{Time: evt.Timestamp, Valid: true} // TODO: When is valid = false? Is that safe?
	if err := patientRepo.CreatePatient(ctx, patient_repo.CreatePatientParams{
		ID:                      patientID,
		HumanReadableIdentifier: payload.HumanReadableIdentifier,
		Notes:                   payload.Notes,
		OrganizationID:          uuid.New(), // TODO: remove?
		CreatedAt:               timestamp,
		UpdatedAt:               timestamp,
	}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (a *Projection) onBedAssigned(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	patientRepo := patient_repo.New(hwdb.GetDB())

	var payload patientEventsV1.BedAssignedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	bedId, err := hwutil.ParseNullUUID(&payload.BedID)
	if err != nil {
		return err, esdb.Nack_Retry
	}

	timestamp := pgtype.Timestamp{Time: evt.Timestamp, Valid: true}
	if err := patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:        evt.AggregateID,
		BedID:     bedId,
		UpdatedAt: timestamp,
	}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (a *Projection) onBedUnassigned(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	patientRepo := patient_repo.New(hwdb.GetDB())

	newBed := uuid.NullUUID{UUID: uuid.Nil, Valid: false}

	timestamp := pgtype.Timestamp{Time: evt.Timestamp, Valid: true}
	if err := patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:        evt.AggregateID,
		BedID:     newBed,
		UpdatedAt: timestamp,
	}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (a *Projection) onPatientDischarged(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	patientRepo := patient_repo.New(hwdb.GetDB())

	isDischarged := int32(1)
	timestamp := pgtype.Timestamp{Time: evt.Timestamp, Valid: true}
	if err := patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:           evt.AggregateID,
		IsDischarged: &isDischarged,
		UpdatedAt:    timestamp,
	}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (a *Projection) onNotesUpdated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	patientRepo := patient_repo.New(hwdb.GetDB())

	var payload patientEventsV1.NotesUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	timestamp := pgtype.Timestamp{Time: evt.Timestamp, Valid: true}
	if err := patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:        evt.AggregateID,
		Notes:     &payload.Notes,
		UpdatedAt: timestamp,
	}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (a *Projection) onHumanReadableIdentifierUpdated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	log := zlog.Ctx(ctx)
	patientRepo := patient_repo.New(hwdb.GetDB())

	var payload patientEventsV1.HumanReadableIdentifierUpdatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.Nack_Retry
	}

	timestamp := pgtype.Timestamp{Time: evt.Timestamp, Valid: true}
	if err := patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:                     evt.AggregateID,
		HumanReadableIdentfier: &payload.HumanReadableIdentifier,
		UpdatedAt:              timestamp,
	}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}

func (a *Projection) onPatientReadmitted(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
	patientRepo := patient_repo.New(hwdb.GetDB())

	timestamp := pgtype.Timestamp{Time: evt.Timestamp, Valid: true}
	isDischarged := int32(0)
	if err := patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:           evt.AggregateID,
		IsDischarged: &isDischarged,
		UpdatedAt:    timestamp,
	}); err != nil {
		return err, esdb.Nack_Retry
	}

	return nil, esdb.Nack_Unknown
}
