package spiceDBProjection

import (
	"context"
	"fmt"
	"hwauthz"
	"hwauthz/commonperm"
	"hwes"
	"hwes/errs"
	"hwes/eventstoredb/projections/custom"
	"hwutil"

	"property-svc/internal/property-set/aggregate"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"

	propertySetEventsV1 "property-svc/internal/property-set/events/v1"
	"property-svc/internal/property-set/perm"
)

type Projection struct {
	*custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewProjection(es *esdb.Client, serviceName string, authz hwauthz.AuthZ) *Projection {
	subscriptionGroupName := serviceName + "-property-set-spicedb-projection"
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(
			es,
			subscriptionGroupName,
			&[]string{aggregate.PropertySetAggregateType + "-"},
		),
		authz: authz,
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(propertySetEventsV1.PropertySetCreated, p.onPropertySetCreated)
}

func (p *Projection) onPropertySetCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	// Parse Values
	var payload propertySetEventsV1.PropertySetCreatedEvent
	if err := evt.GetJSONData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	propertySetID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	if evt.OrganizationID == nil {
		return errs.ErrOrganizationMissing, hwutil.PtrTo(esdb.NackActionPark)
	}
	organizationID := *evt.OrganizationID

	relationship := hwauthz.NewRelationship(
		commonperm.Organization(organizationID),
		perm.PropertySetOrganization,
		perm.PropertySet(propertySetID),
	)

	// add to permission graph
	_, err = p.authz.
		Create(relationship).
		Commit(ctx)
	if err != nil {
		return fmt.Errorf("could not create spice relationship %s: %w", relationship.String(), err),
			hwutil.PtrTo(esdb.NackActionRetry)
	}

	log.Debug().
		Str("relationship", relationship.String()).
		Msg("spice relationship created")

	return nil, nil
}
