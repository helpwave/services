package spicedbprojection

import (
	"context"
	"fmt"
	"hwauthz"
	"hwauthz/commonperm"
	"hwes"
	"hwes/errs"
	"hwes/eventstoredb/projections/custom"
	"hwutil"

	"tasks-svc/internal/patient/perm"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
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
	p.RegisterEventListener(patientEventsV1.PatientDeleted, p.onPatientDeleted)
}

// Event handlers
func (p *Projection) onPatientCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	if evt.OrganizationID == nil {
		return hwutil.PtrTo(esdb.NackActionSkip), errs.ErrOrganizationMissing
	}

	organization := commonperm.Organization(*evt.OrganizationID)
	patient := perm.Patient(evt.AggregateID)
	relationship := hwauthz.NewRelationship(organization, perm.PatientOrganization, patient)

	_, err := p.authz.Create(relationship).Commit(ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry),
			fmt.Errorf("onPatientCreated: could not write spicedb relationship: %w", err)
	}

	return nil, nil
}

func (p *Projection) onPatientDeleted(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	if err := p.authz.DeleteObject(ctx, perm.Patient(evt.AggregateID)); err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry), fmt.Errorf("could not delete patient from spicedb: %w", err)
	}
	return nil, nil
}
