package property_postgres_projection

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwauthz"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	"hwutil"
	"property-svc/internal/property/aggregate"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/internal/property/perm"
)

type Projection struct {
	*custom.CustomProjection
	authz hwauthz.AuthZ
}

func NewProjection(es *esdb.Client, serviceName string, authz hwauthz.AuthZ) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-spicedb-projection", serviceName)
	p := &Projection{
		CustomProjection: custom.NewCustomProjection(es, subscriptionGroupName, &[]string{fmt.Sprintf("%s-", aggregate.PropertyAggregateType)}),
		authz:            authz,
	}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(propertyEventsV1.PropertyCreated, p.onPropertyCreated)
}

func (p *Projection) onPropertyCreated(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction) {
	log := zlog.Ctx(ctx)

	// Parse Values
	var payload propertyEventsV1.PropertyCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	propertyID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionPark)
	}

	if evt.CommitterOrganizationID == nil {
		return fmt.Errorf("organization is missing from event"), hwutil.PtrTo(esdb.NackActionPark)
	}
	organizationID := *evt.CommitterOrganizationID

	// add to permission graph
	_, err = p.authz.
		Create(hwauthz.NewRelationship(
			perm.Organization(organizationID),
			perm.PropertyOrganization,
			perm.Property(propertyID))).
		Commit(ctx)

	if err != nil {
		return err, hwutil.PtrTo(esdb.NackActionRetry)
	}

	return nil, nil
}
