package hwes

import (
	"context"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/rs/zerolog/log"
	"hwutil"
)

var (
	es             *esdb.Client = nil
	FeatureFlagEnv              = "FEATURE_FLAG_EVENT_SOURCING"
)

func SetupEventStoreByEnv() {
	if !hwutil.HasEnv(FeatureFlagEnv) {
		log.Info().
			Str("FEATURE_FLAG", FeatureFlagEnv).
			Bool("FEATURE_ENABLED", false).
			Msg("early exit SetupEventStoreByEnv()")
		return
	}
	connectionString := hwutil.MustGetEnv("EVENTSTORE_CS")
	SetupEventStore(connectionString)
}

func SetupEventStore(connectionString string) {
	if !hwutil.HasEnv(FeatureFlagEnv) {
		log.Info().
			Str("FEATURE_FLAG", FeatureFlagEnv).
			Bool("FEATURE_ENABLED", false).
			Msg("early exit SetupEventStore()")
		return
	}

	config, err := esdb.ParseConnectionString(connectionString)
	if err != nil {
		log.Fatal().Err(err).Msg("invalid eventstore connection string")
	}

	client, err := esdb.NewClient(config)
	_, err = client.ReadAll(context.Background(), esdb.ReadAllOptions{}, 1) // Test connection
	if err != nil {
		log.Fatal().Err(err).Msg("could not connect to eventstore")
	}
	log.Info().Msg("connected to eventstore")
	es = client
}

func AppendEvents(ctx context.Context, id string, events ...Event) error {
	if !hwutil.HasEnv(FeatureFlagEnv) {
		log.Info().
			Str("FEATURE_FLAG", FeatureFlagEnv).
			Bool("FEATURE_ENABLED", false).
			Msg("early exit AppendEvents()")
	}

	es := GetES()

	eventsData := make([]esdb.EventData, 0, len(events))
	for _, event := range events {
		eventsData = append(eventsData, event.ToEventData())
	}

	// readOps := esdb.ReadStreamOptions{Direction: esdb.Backwards, From: esdb.End{}}
	readOps := esdb.ReadStreamOptions{}
	stream, err := es.ReadStream(ctx, id, readOps, 1)
	if err != nil && err != esdb.ErrStreamNotFound {
		return err
	}

	if err == nil {
		defer stream.Close()
	}

	// Stream not exists yet
	if err == esdb.ErrStreamNotFound {
		_, err = es.AppendToStream(
			ctx,
			id,
			esdb.AppendToStreamOptions{ExpectedRevision: esdb.NoStream{}},
			eventsData...,
		)

		return err
	}

	lastEvent, err := stream.Recv()
	if err != nil {
		return err
	}

	expectedRevision := esdb.Revision(lastEvent.OriginalEvent().EventNumber)

	_, err = es.AppendToStream(
		ctx,
		id,
		esdb.AppendToStreamOptions{ExpectedRevision: expectedRevision},
		eventsData...,
	)

	return err
}

func TombstoneStream(ctx context.Context, id string) error {
	if !hwutil.HasEnv(FeatureFlagEnv) {
		log.Info().
			Str("FEATURE_FLAG", FeatureFlagEnv).
			Bool("FEATURE_ENABLED", false).
			Msg("early exit TombstoneStream()")
	}

	_, err := GetES().TombstoneStream(ctx, id, esdb.TombstoneStreamOptions{})
	return err
}

func GetES() *esdb.Client {
	if es == nil {
		log.Fatal().Msg("GetES called without set-up eventstore. Call SetupEventStore() before!")
	}
	return es
}
