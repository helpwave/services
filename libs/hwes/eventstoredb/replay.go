package eventstoredb

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	zlog "github.com/rs/zerolog"
	"hwes"
)

type Replay struct {
	es                  *esdb.Client
	BeforeReplayHook    func() error
	OnEvent             func(ctx context.Context, event hwes.Event) error
	AfterReplayHook     func() error
	streamPrefixFilters *[]string
}

func NewReplay(es *esdb.Client, onEvent func(ctx context.Context, event hwes.Event) error, streamPrefixFilters *[]string) *Replay {
	return &Replay{
		es: es,
		BeforeReplayHook: func() error {
			return nil
		},
		OnEvent: onEvent,
		AfterReplayHook: func() error {
			return nil
		},
		streamPrefixFilters: streamPrefixFilters,
	}
}

func (r *Replay) readLatestAllEsdbEvent(ctx context.Context) (*esdb.ResolvedEvent, error) {
	stream, err := r.es.ReadAll(ctx, esdb.ReadAllOptions{
		Direction: esdb.Backwards,
		From:      esdb.End{},
	}, 1)

	if err != nil {
		fmt.Println(err)
		return nil, err
	}

	defer stream.Close()

	return stream.Recv()
}

// Run will call the passed .OnEvent() handler for every event
// in a filtered $all stream up to the event which was the latest when Run() was called
// BeforeReplayHook() gets called before EventStoreDB gets called for the first time
// AfterReplayHook() gets called before a successful return
func (r *Replay) Run(ctx context.Context) error {
	log := zlog.Ctx(ctx)

	if err := r.BeforeReplayHook(); err != nil {
		return err
	}

	latestEsdbEvent, err := r.readLatestAllEsdbEvent(ctx)
	if err != nil {
		return err
	}

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

		event, err := r.hwesEventFromReceivedEventFromStream(ctx, esdbEvent)
		if err != nil {
			return err
		}

		if err := r.OnEvent(ctx, event); err != nil {
			return err
		}

		// Normal exit condition, reached event which was the latest when Run() was called
		if *esdbEvent.EventAppeared.Commit == *latestEsdbEvent.Commit {
			log.Debug().Msg("processed latest event")
			break
		}
	}

	return r.AfterReplayHook()
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
