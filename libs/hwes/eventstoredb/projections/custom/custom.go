package custom

import (
	"context"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	zlog "github.com/rs/zerolog/log"
	"hwes"
)

const subscriptionGroupName = "custom"

type When func(ctx context.Context, evt hwes.Event) (error, esdb.Nack_Action)

type CustomProjection struct {
	es *esdb.Client
}

func NewCustomProjection(esdbClient *esdb.Client) *CustomProjection {
	return &CustomProjection{es: esdbClient}
}

func (p *CustomProjection) Subscribe(ctx context.Context, when When) error {
	log := zlog.Ctx(ctx)

	// Create subscription on EventStoreDB
	persistentAllSubscriptionOptions := esdb.PersistentAllSubscriptionOptions{}
	err := p.es.CreatePersistentSubscriptionAll(ctx, subscriptionGroupName, persistentAllSubscriptionOptions)
	if err != nil {
		// Ignore subscription already exists error
		if persistentSubscriptionError, ok := err.(*esdb.PersistentSubscriptionError); !ok || ok && (persistentSubscriptionError.Code != 6) {
			zlog.Ctx(ctx).Warn().Err(err).Send()
			return err
		}
	}

	// Subscribe to server side subscription
	stream, err := p.es.ConnectToPersistentSubscriptionToAll(ctx, subscriptionGroupName, esdb.ConnectToPersistentSubscriptionOptions{})
	if err != nil {
		return err
	}
	defer stream.Close()

	log.Info().Msg("Start custom projection")
	err = p.process(ctx, stream, when)
	log.Info().Msg("Stop custom projection")
	return err
}

func (p *CustomProjection) process(ctx context.Context, stream *esdb.PersistentSubscription, when When) error {
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

		event, err := hwes.NewEventFromRecordedEvent(esdbEvent.EventAppeared.Event)
		if err != nil {
			log.Error().Err(err).Msg("could not create new event from recorded event")
			continue
		}

		event.Log(log.Debug()).Msg("process event")

		if err, nackAction := when(ctx, event); err != nil {
			event.Log(log.Error()).Err(err).Msg("error during processing of event")

			event.Log(log.Warn()).Msg("nack event")
			if err := stream.Nack(err.Error(), nackAction, esdbEvent.EventAppeared); err != nil {
				event.Log(log.Error()).Err(err).Msg("error during nack of event")
				continue
			}
			event.Log(log.Debug()).Msg("event nack`ed")

			continue
		}

		event.Log(log.Debug()).Msg("ack event")
		err = stream.Ack(esdbEvent.EventAppeared)
		if err != nil {
			event.Log(log.Error()).Err(err).Msg("error during ack of event")
			continue
		}
		event.Log(log.Debug()).Msg("event ack`ed")

		event.Log(log.Debug()).Msg("event processed")
	}
}
