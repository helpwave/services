package eventstoredb

import (
	"context"
	"fmt"
	"telemetry"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"google.golang.org/protobuf/proto"
	"hwes"
)

// EntityEventPrefix gets used by hwes.NewAggregateBase in combination with the true entity type like "bed"
// to indicate an event stream that is not used for event sourcing.
const EntityEventPrefix = "entity_"

// SaveEntityEventForAggregate directly persists events to EventStoreDB
// You are likely to call this method when you want to store events
// that are not used for event sourcing
func SaveEntityEventForAggregate(
	ctx context.Context,
	es *esdb.Client,
	aggregate hwes.Aggregate,
	message proto.Message,
	opts ...hwes.EventOption,
) error {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwes.eventstoredb.SaveEntityEventForAggregate")
	defer span.End()

	event, err := hwes.NewEventFromProto(aggregate, message, opts...)
	if err != nil {
		return fmt.Errorf("hwes.eventstoredb.SaveEntityEventForAggregate: could not create event from proto: %w", err)
	}

	eventData, err := event.ToEventData()
	if err != nil {
		return fmt.Errorf("hwes.eventstoredb.SaveEntityEventForAggregate: could not convert event to event data: %w", err)
	}

	if _, err := es.AppendToStream(
		ctx,
		aggregate.GetTypeID(),
		esdb.AppendToStreamOptions{},
		eventData,
	); err != nil {
		return fmt.Errorf("hwes.eventstoredb.SaveEntityEventForAggregate: could not append event to stream: %w", err)
	}

	return nil
}
