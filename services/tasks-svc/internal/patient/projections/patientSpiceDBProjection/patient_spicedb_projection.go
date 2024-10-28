package patientSpiceDBProjection

import (
	"context"
	"errors"
	"fmt"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	"tasks-svc/internal/patient/perm"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"

	"tasks-svc/internal/patient/aggregate"
	patientEventsV1 "tasks-svc/internal/patient/events/v1"
)

type Projection struct {
	*custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewProjection(es *esdb.Client, authz hwauthz.AuthZ, serviceName string) *Projection {
	subscriptionGroupName := serviceName + "-patient-spicedb-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.PatientAggregateType + "-"},
		),
		authz: authz,
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(patientEventsV1.PatientCreated, p.onPatientCreated)
}

// Event handlers
func (p *Projection) onPatientCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
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

	if evt.OrganizationID == nil {
		return errors.New("onPatientCreated: organizationID missing"), hwutil.PtrTo(esdb.NackActionSkip)
	}
	organizationID := *evt.OrganizationID

	organization := commonPerm.Organization(organizationID)
	patient := perm.Patient(patientID)

	relationship := hwauthz.NewRelationship(organization, perm.PatientOrganization, patient)

	_, err = p.authz.Create(relationship).Commit(ctx)
	if err != nil {
		return fmt.Errorf("onPatientCreated: could not write spicedb relationship: %w", err),
			hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
