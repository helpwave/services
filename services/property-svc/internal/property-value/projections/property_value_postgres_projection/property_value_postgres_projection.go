package property_value_postgres_projection

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	propertyValueEventsV1 "property-svc/internal/property-value/events/v1"
	"property-svc/repos/property_value_repo"
)

type Projection struct {
	*custom.CustomProjection
	db                *pgxpool.Pool
	propertyValueRepo *property_value_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-postgres-projection", serviceName)
	p := &Projection{
		CustomProjection:  custom.NewCustomProjection(es, subscriptionGroupName),
		db:                hwdb.GetDB(),
		propertyValueRepo: property_value_repo.New(hwdb.GetDB())}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	// TODO
}

func (p *Projection) onPropertyValueCreated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyValueEventsV1.PropertyValueCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	// Create PropertyValue
	propertyID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	subjectID, err := uuid.Parse(payload.SubjectID)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	createPropertyValueParams := property_value_repo.CreatePropertyValueParams{
		PropertyID: propertyID,
		SubjectID:  subjectID,
	}

	switch value := payload.Value.(type) {
	case int:
		createPropertyValueParams.NumberValue = value
		// TODO
	}

	err = p.propertyValueRepo.CreatePropertyValue(ctx, createPropertyValueParams)
	if err := hwdb.Error(ctx, err); err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}
