package property_postgres_projection

import (
	"context"
	"fmt"
	pb "gen/proto/services/property_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb/projections/custom"
	propertyEventsV1 "property-svc/internal/property/events/v1"
	"property-svc/repos/property_repo"
)

type Projection struct {
	*custom.CustomProjection
	propertyProjection *property_repo.Queries
}

func NewProjection(es *esdb.Client, serviceName string) *Projection {
	subscriptionGroupName := fmt.Sprintf("%s-postgres-projection", serviceName)
	p := &Projection{custom.NewCustomProjection(es, subscriptionGroupName), property_repo.New(hwdb.GetDB())}
	p.initEventListeners()
	return p
}

func (p *Projection) initEventListeners() {
	p.RegisterEventListener(propertyEventsV1.PropertyCreated, p.onPropertyCreated)
}

func (p *Projection) onPropertyCreated(ctx context.Context, evt hwes.Event) (error, esdb.NackAction) {
	log := zlog.Ctx(ctx)

	var payload propertyEventsV1.PropertyCreatedEvent
	if err := evt.GetJsonData(&payload); err != nil {
		log.Error().Err(err).Msg("unmarshal failed")
		return err, esdb.NackActionRetry
	}

	propertyID, err := uuid.Parse(payload.ID)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	value, found := pb.SubjectType_value[payload.SubjectType]
	if !found {
		return fmt.Errorf("invalid taskStatus: %s", payload.SubjectType), esdb.NackActionRetry
	}
	subjectType := (pb.SubjectType)(value)

	value, found = pb.FieldType_value[payload.FieldType]
	if !found {
		return fmt.Errorf("invalid fieldType: %s", payload.FieldType), esdb.NackActionRetry
	}
	fieldType := (pb.FieldType)(value)

	err = p.propertyProjection.CreateProperty(ctx, property_repo.CreatePropertyParams{
		ID:          propertyID,
		Name:        payload.Name,
		SubjectType: int32(subjectType),
		FieldType:   int32(fieldType),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err, esdb.NackActionRetry
	}

	return nil, esdb.NackActionUnknown
}
