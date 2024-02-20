package custom

import (
	"context"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	zlog "github.com/rs/zerolog/log"
	"hwes"
	"strings"
)

const subscriptionGroupName = "custom"

// PersistentSubscriptionFailedCreationErrorCode https://github.com/EventStore/EventStore-Client-Go/blob/v1.0.2/esdb/types.go#L95
const PersistentSubscriptionFailedCreationErrorCode = 6

// EventStoreDBInternalEventPrefix https://developers.eventstore.com/server/v23.10/streams.html#reserved-names
const EventStoreDBInternalEventPrefix = "$"

type eventHandler func(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action)

type CustomProjection struct {
	es            *esdb.Client
	eventHandlers map[string]eventHandler
}

func NewCustomProjection(esdbClient *esdb.Client) *CustomProjection {
	return &CustomProjection{es: esdbClient, eventHandlers: make(map[string]eventHandler, 0)}
}

func (p *CustomProjection) RegisterEventListener(eventType string, eventHandler eventHandler) *CustomProjection {
	if _, found := p.eventHandlers[eventType]; found {
		zlog.Error().
			Str("eventType", eventType).
			Msg("override existing event handler")
	}

	p.eventHandlers[eventType] = eventHandler
	return p
}

func (p *CustomProjection) handleEvent(ctx context.Context, event hwes.Event) (error, esdb.Nack_Action) {
	eventHandler, found := p.eventHandlers[event.EventType]
	if !found {
		return fmt.Errorf("event type '%s' is invalid", event.EventType), esdb.Nack_Unknown
	}
	return eventHandler(ctx, event)
}

func (p *CustomProjection) Subscribe(ctx context.Context) error {
	log := zlog.Ctx(ctx)

	// Create subscription on EventStoreDB
	persistentAllSubscriptionOptions := esdb.PersistentAllSubscriptionOptions{}
	// TODO: Do we need to manage the subscriptions? E.g. delete persistent subscriptions?
	err := p.es.CreatePersistentSubscriptionAll(ctx, subscriptionGroupName, persistentAllSubscriptionOptions)
	if err != nil {
		// Ignore subscription already exists error
		// The state of a persistent subscriptions is managed on the server-side by EventStoreDB.
		// A persistent subscription must be created before connection.
		// We ignore a failed creation to ensure idempotency.
		// If a creation
		// https://developers.eventstore.com/server/v23.10/persistent-subscriptions.html
		if persistentSubscriptionError, ok := err.(*esdb.PersistentSubscriptionError); !ok || ok && (persistentSubscriptionError.Code != PersistentSubscriptionFailedCreationErrorCode) {
			return err
		} else {
			log.Debug().Err(err).Msg("ignoring subscription already exists error")
		}
	}

	// Subscribe to server side subscription
	stream, err := p.es.ConnectToPersistentSubscriptionToAll(ctx, subscriptionGroupName, esdb.ConnectToPersistentSubscriptionOptions{})
	if err != nil {
		return err
	}
	defer stream.Close()

	log.Info().Msg("Start custom projection")
	err = p.process(ctx, stream)
	log.Info().Msg("Stop custom projection")
	return err
}

func (p *CustomProjection) process(ctx context.Context, stream *esdb.PersistentSubscription) error {
	log := zlog.Ctx(ctx)

	for {
		esdbEvent := stream.Recv()

		select {
		case <-ctx.Done():
			// Return when context gets finished
			return nil
		default:
		}

		if esdbEvent.SubscriptionDropped != nil {
			log.Error().Err(esdbEvent.SubscriptionDropped.Error).Msg("Subscription dropped")
			return esdbEvent.SubscriptionDropped.Error
		}

		if esdbEvent.EventAppeared == nil || esdbEvent.EventAppeared.Event == nil {
			log.Debug().Msg("Received empty event, skip")
			continue
		}

		if strings.HasPrefix(esdbEvent.EventAppeared.Event.EventType, EventStoreDBInternalEventPrefix) {
			// Skip internal events
			log.Debug().
				Str("esdbEventID", esdbEvent.EventAppeared.Event.EventID.String()).
				Msg("Received internal event, skip")
			continue
		}

		event, err := hwes.NewEventFromRecordedEvent(esdbEvent.EventAppeared.Event)

		if err != nil {
			log.Error().
				Err(err).
				Str("EventType", esdbEvent.EventAppeared.Event.EventType).
				Msg("could not create new event from recorded event")
			continue
		}

		event.GetLogEvent(log.Debug()).Msg("process event")

		if err, nackAction := p.handleEvent(ctx, event); err != nil {
			event.GetLogEvent(log.Error()).Err(err).Msg("error during processing of event")

			event.GetLogEvent(log.Warn()).Msg("nack event")
			if err := stream.Nack(err.Error(), nackAction, esdbEvent.EventAppeared); err != nil {
				event.GetLogEvent(log.Error()).Err(err).Msg("error during nack of event")
				continue
			}
			event.GetLogEvent(log.Debug()).Msg("event nack`ed")

			continue
		}

		event.GetLogEvent(log.Debug()).Msg("ack event")
		err = stream.Ack(esdbEvent.EventAppeared)
		if err != nil {
			event.GetLogEvent(log.Error()).Err(err).Msg("error during ack of event")
			continue
		}
		event.GetLogEvent(log.Debug()).Msg("event ack`ed")

		event.GetLogEvent(log.Debug()).Msg("event processed")
	}
}
