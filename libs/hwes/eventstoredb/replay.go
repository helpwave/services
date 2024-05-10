package eventstoredb

import (
	"context"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	zlog "github.com/rs/zerolog"
	"hwes"
	"telemetry"
)

// Replay provides the ability to re-run existing events from an event stream
// from the first to the latest event. The latest event will be computed via a read
// against the event stream during a call the .Run().
// Users of Replay can use the provided hook to run actions before and after the execution of Replay().
type Replay struct {
	es                  *esdb.Client
	OnEvent             func(ctx context.Context, event hwes.Event) error
	streamPrefixFilters *[]string
}

func NewReplay(es *esdb.Client, onEvent func(ctx context.Context, event hwes.Event) error, streamPrefixFilters *[]string) *Replay {
	return &Replay{
		es:                  es,
		OnEvent:             onEvent,
		streamPrefixFilters: streamPrefixFilters,
	}
}

// Run will call the passed .OnEvent() handler for every event
// in a filtered $all stream up to the event which was the latest when Run() was called
func (r *Replay) Run(ctx context.Context) error {
	ctx, span, log := telemetry.StartSpan(ctx, "hwes.Replay.Run")
	defer span.End()

	subscribeToAllOptions := esdb.SubscribeToAllOptions{
		From:   esdb.Start{},
		Filter: esdb.ExcludeSystemEventsFilter(),
	}

	if r.streamPrefixFilters != nil {
		subscribeToAllOptions.Filter = &esdb.SubscriptionFilter{
			Type:     esdb.StreamFilterType,
			Prefixes: *r.streamPrefixFilters,
		}
	}

	stream, err := r.es.SubscribeToAll(ctx, subscribeToAllOptions)
	if err != nil {
		return err
	}
	defer stream.Close()

	for {
		esdbEvent := stream.Recv()

		select {
		case <-ctx.Done():
			return nil
		default:
		}

		if esdbEvent.SubscriptionDropped != nil {
			stream.Close()
			break
		}

		if esdbEvent.CaughtUp != nil {
			stream.Close()
			log.Info().Msg("caught up subscribed event stream")
			break
		}

		event, err := r.hwesEventFromReceivedEventFromStream(ctx, esdbEvent)
		if err != nil {
			return err
		}

		if err := r.OnEvent(ctx, event); err != nil {
			return err
		}
		log.Info().Dict("event", event.GetZerologDict()).Msg("handled event")
	}

	return nil
}

func (r *Replay) hwesEventFromReceivedEventFromStream(ctx context.Context, esdbEvent *esdb.SubscriptionEvent) (hwes.Event, error) {
	log := zlog.Ctx(ctx)

	if esdbEvent.SubscriptionDropped != nil {
		log.Error().Err(esdbEvent.SubscriptionDropped.Error).Msg("Subscription dropped")
		return hwes.Event{}, esdbEvent.SubscriptionDropped.Error
	}

	if esdbEvent.EventAppeared == nil || esdbEvent.EventAppeared.Event == nil {
		log.Debug().Msg("Received empty event, skip")
		return hwes.Event{}, nil
	}

	event, err := hwes.NewEventFromRecordedEvent(esdbEvent.EventAppeared.Event)

	if err != nil {
		log.Error().
			Err(err).
			Str("EventType", esdbEvent.EventAppeared.Event.EventType).
			Msg("could not create new event from recorded event")
		return hwes.Event{}, nil
	}

	return event, nil
}
