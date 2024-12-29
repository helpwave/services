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

	"property-svc/internal/property/aggregate"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"

	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/internal/property/perm"
)

type Projection struct {
	*custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewProjection(es *esdb.Client, serviceName string, authz hwauthz.AuthZ) *Projection {
	subscriptionGroupName := serviceName + "-property-spicedb-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.PropertyAggregateType + "-"},
		),
		authz: authz,
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(propertyEventsV1.PropertyCreated, p.onPropertyCreated)
}

func (p *Projection) onPropertyCreated(ctx context.Context, evt hwes.Event) (*esdb.NackAction, error) {
	log := zlog.Ctx(ctx)

	// Parse Values
	var payload propertyEventsV1.PropertyCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	propertyID, err := uuid.Parse(payload.ID)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionPark), err
	}

	if evt.OrganizationID == nil {
		return hwutil.PtrTo(esdb.NackActionPark), errs.ErrOrganizationMissing
	}
	organizationID := *evt.OrganizationID

	relationship := hwauthz.NewRelationship(
		commonperm.Organization(organizationID),
		perm.PropertyOrganization,
		perm.Property(propertyID),
	)

	// add to permission graph
	_, err = p.authz.
		Create(relationship).
		Commit(ctx)
	if err != nil {
		return hwutil.PtrTo(esdb.NackActionRetry),
			fmt.Errorf("could not create spice relationship %s: %w", relationship.String(), err)
	}

	log.Debug().
		Str("relationship", relationship.String()).
		Msg("spice relationship created")

	return nil, nil
}
