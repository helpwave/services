package eventstoredb

import (
	"context"
	"fmt"
	"telemetry"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"github.com/google/uuid"
	"google.golang.org/protobuf/proto"
	"hwes"
)

// Extending entityAggregate to override GetTypeID down below
type entityAggregate struct {
	*hwes.AggregateBase
}

func newEntityAggregate(entityType string, entityId uuid.UUID) *entityAggregate {
	a := &entityAggregate{}
	a.AggregateBase = hwes.NewAggregateBase(hwes.AggregateType(entityType), entityId)
	return a
}

// GetTypeID override to prefix the typeID with "entity_"
func (a *entityAggregate) GetTypeID() string {
	return fmt.Sprintf("entity_%s-%s", a.GetType(), a.GetID())
}

// SaveEntityEvent directly persists events to EventStoreDB
// You are likely to call this method when you want to store events
// that are not used for event sourcing.
func SaveEntityEvent(
	ctx context.Context,
	es *esdb.Client,
	entityType string,
	entityId uuid.UUID,
	message proto.Message,
	opts ...hwes.EventOption,
) error {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwes.eventstoredb.SaveEntityEvent")
	defer span.End()

	aggregate := newEntityAggregate(entityType, entityId)

	event, err := hwes.NewEventFromProto(aggregate, message, opts...)
	if err != nil {
		return fmt.Errorf("hwes.eventstoredb.SaveEntityEvent: could not create event from proto: %w", err)
	}

	eventData, err := event.ToEventData()
	if err != nil {
		return fmt.Errorf("hwes.eventstoredb.SaveEntityEvent: could not convert event to event data: %w", err)
	}

	if _, err := es.AppendToStream(
		ctx,
		aggregate.GetTypeID(),
		esdb.AppendToStreamOptions{},
		eventData,
	); err != nil {
		return fmt.Errorf("hwes.eventstoredb.SaveEntityEvent: could not append event to stream: %w", err)
	}

	return nil
}
