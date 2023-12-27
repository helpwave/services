package eventstoredb

import (
	"context"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/rs/zerolog/log"
	"hwutil"
)

func SetupEventStoreByEnv() *esdb.Client {
	connectionString := hwutil.MustGetEnv("EVENTSTORE_CS")
	return SetupEventStore(connectionString)
}

func SetupEventStore(connectionString string) *esdb.Client {
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

	return client
}
