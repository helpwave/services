package task_spicedb

import (
	"context"
	"errors"
	"fmt"
	"hwauthz"
	"hwauthz/commonPerm"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog"

	"tasks-svc/internal/patient/aggregate"
	"tasks-svc/internal/patient/events/v1"
	"tasks-svc/internal/patient/perm"
)

type Projection struct {
	*custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewSpiceDBProjection(es *esdb.Client, authz hwauthz.AuthZ, serviceName string) *Projection {
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
	p.RegisterEventListener(v1.PatientCreated, p.onPatientCreated)
}

func (p *Projection) onPatientCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload v1.PatientCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	if evt.OrganizationID == nil {
		return errors.New("organizationID missing"), hwutil.PtrTo(esdb.NackActionSkip)
	}

	patientID, err := uuid.Parse(payload.ID)
	if err != nil {
		return fmt.Errorf("onPatientCreated failed: %w", err), hwutil.PtrTo(esdb.NackActionSkip)
	}
	orgID := *evt.OrganizationID

	relationship := hwauthz.NewRelationship(
		commonPerm.Organization(orgID),
		perm.PatientOrganization,
		perm.Patient(patientID),
	)

	_, err = p.authz.Create(relationship).Commit(ctx)
	if err != nil {
		return fmt.Errorf("onPatientCreated: could not commit: %w", err), hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
