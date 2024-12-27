package postgresprojection

import (
	"context"
	"hwdb"
	"hwes"
	"hwes/errs"
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
func (p *Projection) onPatientCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.PatientCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	patientID, err := uuid.Parse(payload.ID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	if evt.OrganizationID == nil {
		return hwutil.PtrTo(esdb.NackActionSkip), errs.ErrOrganizationMissing
	}
	organizationID := *evt.OrganizationID

	err = p.patientRepo.CreatePatient(ctx, patient_repo.CreatePatientParams{
		ID:                      patientID,
		HumanReadableIdentifier: payload.HumanReadableIdentifier,
		Notes:                   payload.Notes,
		CreatedAt:               hwdb.TimeToTimestamp(evt.Timestamp),
		UpdatedAt:               hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency:             int64(evt.GetVersion()), //nolint:gosec
		OrganizationID:          organizationID,
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onBedAssigned(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.BedAssignedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	bedID, err := hwutil.ParseNullUUID(&payload.BedID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err = p.patientRepo.UpdatePatientBedId(ctx, patient_repo.UpdatePatientBedIdParams{
		ID:          evt.AggregateID,
		BedID:       bedID,
		UpdatedAt:   hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onBedUnassigned(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.patientRepo.UpdatePatientBedId(ctx, patient_repo.UpdatePatientBedIdParams{
		ID:          evt.AggregateID,
		BedID:       uuid.NullUUID{},
		UpdatedAt:   hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onPatientDischarged(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:           evt.AggregateID,
		IsDischarged: hwutil.PtrTo(true),
		UpdatedAt:    hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency:  int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onNotesUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.NotesUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err := p.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:          evt.AggregateID,
		Notes:       &payload.Notes,
		UpdatedAt:   hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency: int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onHumanReadableIdentifierUpdated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	var payload patientEventsV1.HumanReadableIdentifierUpdatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	err := p.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:                     evt.AggregateID,
		HumanReadableIdentfier: &payload.HumanReadableIdentifier,
		UpdatedAt:              hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency:            int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onPatientReadmitted(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.patientRepo.UpdatePatient(ctx, patient_repo.UpdatePatientParams{
		ID:           evt.AggregateID,
		IsDischarged: hwutil.PtrTo(false),
		UpdatedAt:    hwdb.TimeToTimestamp(evt.Timestamp),
		Consistency:  int64(evt.GetVersion()), //nolint:gosec
	})
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}

	return nil, nil
}

func (p *Projection) onPatientDeleted(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	err := p.patientRepo.DeletePatient(ctx, evt.AggregateID)
	if err := hwdb.Error(ctx, err); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), err
	}
	return nil, nil
}
