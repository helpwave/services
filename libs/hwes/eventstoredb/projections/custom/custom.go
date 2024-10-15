package custom

import (
	"context"
	"errors"
	"fmt"
	"hwutil"
	"telemetry"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	zlog "github.com/rs/zerolog/log"
	"hwes"
)

// EventStoreClient is an interface that describes all methods of esdb.Client that are used by CustomProjection
type EventStoreClient interface {
	SubscribeToPersistentSubscriptionToAll(
		ctx context.Context,
		groupName string,
		options esdb.SubscribeToPersistentSubscriptionOptions,
	) (*esdb.PersistentSubscription, error)

	CreatePersistentSubscriptionToAll(
		ctx context.Context,
		groupName string,
		options esdb.PersistentAllSubscriptionOptions,
	) error
}

type eventHandler func(ctx context.Context, evt hwes.Event) (error, *esdb.NackAction)

// ICustomProjection is an interface, implemented by CustomProjection,
// and thus also implemented by all types that struct-embed CustomProjection
type ICustomProjection interface {
	// Subscribe creates and subscribes to a persistent subscription in EventStoreDB
	// A persistent subscription is a type of subscription where the state is saved on the server-side
	// This function blocks the thread until the passed context gets canceled
	// https://developers.eventstore.com/server/v23.10/persistent-subscriptions.html
	Subscribe(ctx context.Context) error
	GetSubscriptionGroupName() string
}

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
//	func NewProjection(es EventStoreClient) *Projection {
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
	es                    EventStoreClient
	eventHandlers         map[string]eventHandler
	subscriptionGroupName string
	streamPrefixFilters   *[]string
}

func NewCustomProjection(es EventStoreClient, subGroupName string, streamPrefixFilters *[]string) *CustomProjection {
	return &CustomProjection{
		es:                    es,
		eventHandlers:         make(map[string]eventHandler),
		subscriptionGroupName: subGroupName,
		streamPrefixFilters:   streamPrefixFilters,
	}
}

func (p *CustomProjection) GetSubscriptionGroupName() string {
	return p.subscriptionGroupName
}

func (p *CustomProjection) CustomProjection() *CustomProjection {
	return p
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

func (p *CustomProjection) HandleEvent(ctx context.Context, event hwes.Event) (error, *esdb.NackAction) {
	ctx, span, log := telemetry.StartSpan(
		ctx,
		"custom_projection."+p.subscriptionGroupName+".handleEvent."+event.EventType,
	)
	defer span.End()

	eventHandler, found := p.eventHandlers[event.EventType]
	if !found {
		log.Debug().
			Str("subscriptionGroupName", p.subscriptionGroupName).
			Dict("event", event.GetZerologDict()).
			Msg("event handler for event type not found, skip")
		return nil, hwutil.PtrTo(esdb.NackActionUnknown)
	}
	return eventHandler(ctx, event)
}

func (p *CustomProjection) Subscribe(ctx context.Context) error {
	log := zlog.Ctx(ctx)

	// Create subscription on EventStoreDB, exclude systemEvents
	persistentAllSubscriptionOptions := esdb.PersistentAllSubscriptionOptions{
		Filter: esdb.ExcludeSystemEventsFilter(),
	}

	if p.streamPrefixFilters != nil {
		// Filter stream by prefix
		persistentAllSubscriptionOptions.Filter = &esdb.SubscriptionFilter{
			Type:     esdb.StreamFilterType,
			Prefixes: *p.streamPrefixFilters,
		}
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
			log.Debug().Err(err).Msgf("ignoring subscription %s already exists error", p.subscriptionGroupName)
		} else {
			return fmt.Errorf("CustomProjection.Subscribe: failed to create persistent subscription: %w", err)
		}
	}

	// After a potential successful creation of a persistent subscription, we are trying to establish a connection to
	// that subscription
	stream, err := p.es.SubscribeToPersistentSubscriptionToAll(
		ctx,
		p.subscriptionGroupName,
		esdb.SubscribeToPersistentSubscriptionOptions{},
	)
	if err != nil {
		return fmt.Errorf("CustomProjection.Subscribe: failed to subscribe: %w", err)
	}
	defer stream.Close()

	log.Info().Msgf("Start custom projection %s", p.subscriptionGroupName)

	for {
		esdbEvent := stream.Recv()

		select {
		case <-ctx.Done():
			// Return when context gets finished
			log.Info().Msgf("Stop custom projection %s", p.subscriptionGroupName)
			return nil
		default:
		}

		if err := p.processReceivedEventFromStream(ctx, stream, esdbEvent); err != nil {
			return fmt.Errorf("CustomProjection.Subscribe: failed to process event: %w", err)
		}
	}
}

// processReceivedEventFromStream acts as a worker on the subscribed stream
// This functions tries to receive an event from the passed stream
// and calls the according event handler based on the received event
// This function blocks the thread until the passed context gets canceled
func (p *CustomProjection) processReceivedEventFromStream(
	ctx context.Context,
	stream *esdb.PersistentSubscription,
	esdbEvent *esdb.PersistentSubscriptionEvent,
) error {
	ctx, span, log := telemetry.StartSpan(
		ctx,
		"custom_projection."+p.subscriptionGroupName+".processReceivedEventFromStream",
	)
	defer span.End()

	if esdbEvent.SubscriptionDropped != nil {
		log.Error().Err(esdbEvent.SubscriptionDropped.Error).Msg("Subscription dropped")
		return esdbEvent.SubscriptionDropped.Error
	}

	if esdbEvent.EventAppeared == nil || esdbEvent.EventAppeared.Event == nil {
		log.Debug().Msg("Received empty event, skip")
		return nil
	}

	telemetry.SetSpanStr(ctx, "streamID", esdbEvent.EventAppeared.Event.Event.StreamID)
	telemetry.SetSpanStr(ctx, "esdbEventID", esdbEvent.EventAppeared.Event.Event.EventID.String())

	event, err := hwes.NewEventFromRecordedEvent(esdbEvent.EventAppeared.Event.Event)
	if err != nil {
		log.Error().
			Err(err).
			Str("EventType", esdbEvent.EventAppeared.Event.Event.EventType).
			Msg("could not create new event from recorded event")
		return nil
	}

	//
	// change tracing spans
	//
	if event.TraceParent != "" {
		ctx = telemetry.FromTraceParent(ctx, event.TraceParent)

		// end old span, start new one
		span.End()
		ctx, span, log = telemetry.StartSpan(
			ctx,
			"custom_projection"+p.subscriptionGroupName+".processReceivedEventFromStream",
		)
		defer span.End()

		// set attributes
		log = log.With().
			Str("subscription_group_name", p.subscriptionGroupName).
			Str("esdbEventID", event.EventID.String()).
			Logger()

		telemetry.SetSpanStr(ctx, "subscription_group_name", p.subscriptionGroupName)
		telemetry.SetSpanStr(ctx, "esdbEventID", event.EventID.String())
	}

	log.Debug().Dict("event", event.GetZerologDict()).Msg("process event")

	err, nackAction := p.HandleEvent(ctx, event)
	if err == nil && nackAction == nil {
		// ack event
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

	var reason string
	if err != nil {
		log.Error().Dict("event", event.GetZerologDict()).Err(err).Msg("error during processing of event")
		reason = err.Error()
	}
	if nackAction == nil {
		// set "default" nackAction to unknown
		nackAction = hwutil.PtrTo(esdb.NackActionUnknown)
	}

	log.Warn().Dict("event", event.GetZerologDict()).Msg("nack event")
	if err := stream.Nack(reason, *nackAction, esdbEvent.EventAppeared.Event); err != nil {
		log.Error().Dict("event", event.GetZerologDict()).Err(err).Msg("error during nack of event")
		return nil
	}
	log.Debug().Dict("event", event.GetZerologDict()).Msg("event nack`ed")

	return nil
}
