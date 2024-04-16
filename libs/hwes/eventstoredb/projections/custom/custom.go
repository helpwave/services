package custom

import (
	"context"
	"errors"
	"fmt"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	zlog "github.com/rs/zerolog/log"
	"hwes"
	"strings"
	"telemetry"
)

// EventStoreDBInternalEventPrefix https://developers.eventstore.com/server/v23.10/streams.html#reserved-names
const EventStoreDBInternalEventPrefix = "$"

type eventHandler func(ctx context.Context, evt hwes.Event) (error, esdb.NackAction)

// CustomProjection can be used to develop own projections
// A projection is an event sourcing pattern to build up
// a read model based on the underlying event data.
// IMPORTANT: The passed subscriptionGroupName groups your projection
// on behalf of EventStoreDB. Every instance of a projection must have the same name,
// so that EventStoreDB can handle the concurrency.
// Its highly recommended that the caller prefixes this name with the ServiceName.
//
// Example:
//
//	type Projection struct {
//		*custom.CustomProjection
//	}
//
//	func NewProjection(es *esdb.Client) *Projection {
//		subscriptionGroupName := "tasks-svc-echo-projection"
//		p := &Projection{custom.NewCustomProjection(es, subscriptionGroupName)}
//		p.RegisterEventListener(taskEventsV1.TaskCreated, p.onTaskCreated)
//		return p
//	}
//
//	func (p *Projection) onTaskCreated(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action) {
//		log := zlog.Ctx(ctx)
//
//		var payload taskEventsV1.TaskCreatedEvent
//		if err := evt.GetJsonData(&payload); err != nil {
//			log.Error().Err(err).Msg("unmarshal failed")
//			return err, esdb.Nack_Retry
//		}
//
//		log.Info().Str("taskID", payload.ID).Msg("task created, emitted from echo projection")
//		return nil, esdb.Nack_Unknown
//	}
type CustomProjection struct {
	es                    *esdb.Client
	eventHandlers         map[string]eventHandler
	subscriptionGroupName string
	streamPrefixFilters   *[]string
}

func NewCustomProjection(esdbClient *esdb.Client, subscriptionGroupName string, streamPrefixFilters *[]string) *CustomProjection {
	return &CustomProjection{
		es:                    esdbClient,
		eventHandlers:         make(map[string]eventHandler),
		subscriptionGroupName: subscriptionGroupName,
		streamPrefixFilters:   streamPrefixFilters,
	}
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

func (p *CustomProjection) handleEvent(ctx context.Context, event hwes.Event) (error, esdb.NackAction) {
	ctx, span, _ := telemetry.StartSpan(ctx, "custom_projection.handleEvent")
	defer span.End()

	eventHandler, found := p.eventHandlers[event.EventType]
	if !found {
		return fmt.Errorf("event type '%s' is invalid", event.EventType), esdb.NackActionUnknown
	}
	return eventHandler(ctx, event)
}

// Subscribe creates and subscribes to a persistent subscription in EventStoreDB
// A persistent subscription is a type of subscription where the state is saved on the server-side
// This function blocks the thread until the passed context gets canceled
// https://developers.eventstore.com/server/v23.10/persistent-subscriptions.html
func (p *CustomProjection) Subscribe(ctx context.Context) error {
	log := zlog.Ctx(ctx)

	// Create subscription on EventStoreDB
	persistentAllSubscriptionOptions := esdb.PersistentAllSubscriptionOptions{}

	if p.streamPrefixFilters != nil {
		// Filter stream by prefix
		persistentAllSubscriptionOptions.Filter = &esdb.SubscriptionFilter{
			Type:     esdb.StreamFilterType,
			Prefixes: *p.streamPrefixFilters,
		}
		persistentAllSubscriptionOptions.Filter = esdb.ExcludeSystemEventsFilter()
	}

	// TODO: Do we need to manage the subscriptions? E.g. delete persistent subscriptions?
	err := p.es.CreatePersistentSubscriptionToAll(ctx, p.subscriptionGroupName, persistentAllSubscriptionOptions)
	if err != nil {
		// Ignore subscription already exists error
		// The state of a persistent subscriptions is managed on the server-side by EventStoreDB.
		// A persistent subscription must be created before connection.
		// We ignore a failed creation to ensure idempotency.
		var esErr *esdb.Error
		if errors.As(err, &esErr) && esErr.IsErrorCode(esdb.ErrorCodeResourceAlreadyExists) {
			log.Debug().Err(err).Msg("ignoring subscription already exists error")
		} else {
			return err
		}
	}

	// After a potential successful creation of a persistent subscription, we are trying to establish a connection to that subscription
	stream, err := p.es.SubscribeToPersistentSubscriptionToAll(ctx, p.subscriptionGroupName, esdb.SubscribeToPersistentSubscriptionOptions{})
	if err != nil {
		return err
	}
	defer stream.Close()

	log.Info().Msg("Start custom projection")

	for {
		esdbEvent := stream.Recv()

		select {
		case <-ctx.Done():
			// Return when context gets finished
			log.Info().Msg("Stop custom projection")
			return nil
		default:
		}

		if err := p.processReceivedEventFromStream(ctx, stream, esdbEvent); err != nil {
			return err
		}
	}
}

// processReceivedEventFromStream acts as a worker on the subscribed stream
// This functions tries to receive an event from the passed stream
// and calls the according event handler based on the received event
// This function blocks the thread until the passed context gets canceled
func (p *CustomProjection) processReceivedEventFromStream(ctx context.Context, stream *esdb.PersistentSubscription, esdbEvent *esdb.PersistentSubscriptionEvent) error {
	// TODO: Connect with source trace?
	ctx, span, log := telemetry.StartSpan(ctx, "custom_projection.processReceivedEventFromStream")
	defer span.End()

	telemetry.SetSpanStr(ctx, "subscription_group_name", p.subscriptionGroupName)

	if esdbEvent.SubscriptionDropped != nil {
		log.Error().Err(esdbEvent.SubscriptionDropped.Error).Msg("Subscription dropped")
		return esdbEvent.SubscriptionDropped.Error
	}

	if esdbEvent.EventAppeared == nil || esdbEvent.EventAppeared.Event == nil {
		log.Debug().Msg("Received empty event, skip")
		return nil
	}

	if strings.HasPrefix(esdbEvent.EventAppeared.Event.Event.EventType, EventStoreDBInternalEventPrefix) {
		// Skip internal events
		log.Debug().
			Str("esdbEventID", esdbEvent.EventAppeared.Event.Event.EventID.String()).
			Msg("Received internal event, skip")
		return nil
	}

	telemetry.SetSpanStr(ctx, "esdbEventID", esdbEvent.EventAppeared.Event.Event.EventID.String())

	event, err := hwes.NewEventFromRecordedEvent(esdbEvent.EventAppeared.Event.Event)

	if err != nil {
		log.Error().
			Err(err).
			Str("EventType", esdbEvent.EventAppeared.Event.Event.EventType).
			Msg("could not create new event from recorded event")
		return nil
	}

	log.Debug().Dict("event", event.GetZerologDict()).Msg("process event")

	if err, nackAction := p.handleEvent(ctx, event); err != nil {
		log.Error().Dict("event", event.GetZerologDict()).Err(err).Msg("error during processing of event")

		log.Warn().Dict("event", event.GetZerologDict()).Msg("nack event")
		if err := stream.Nack(err.Error(), nackAction, esdbEvent.EventAppeared.Event); err != nil {
			log.Error().Dict("event", event.GetZerologDict()).Err(err).Msg("error during nack of event")
			return nil
		}
		log.Debug().Dict("event", event.GetZerologDict()).Msg("event nack`ed")

		return nil
	}

	log.Debug().Dict("event", event.GetZerologDict()).Msg("ack event")
	err = stream.Ack(esdbEvent.EventAppeared.Event)
	if err != nil {
		log.Error().Dict("event", event.GetZerologDict()).Err(err).Msg("error during ack of event")
		return nil
	}
	log.Debug().Dict("event", event.GetZerologDict()).Msg("event ack`ed")

	log.Debug().Dict("event", event.GetZerologDict()).Msg("event processed")
	return nil
}
