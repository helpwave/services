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

type EntityAggregate struct {
	*hwes.AggregateBase
}

func NewEntityAggregate(entityType string, entityId uuid.UUID) *EntityAggregate {
	a := &EntityAggregate{}
	a.AggregateBase = hwes.NewAggregateBase(hwes.AggregateType(entityType), entityId)
	return a
}

func (a *EntityAggregate) GetTypeID() string {
	return fmt.Sprintf("entity_%s-%s", a.GetType(), a.GetID())
}

// SaveEntityEvent creates a temporary EntityAggregate to create
// an Event that gets persisted directly to EventStoreDB
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

	aggregate := NewEntityAggregate(entityType, entityId)

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
