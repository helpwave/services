package hwtesting

import (
	"context"
	"fmt"
	"os"

	zlog "github.com/rs/zerolog/log"
	"github.com/testcontainers/testcontainers-go"
	"github.com/testcontainers/testcontainers-go/wait"
)

const (
	ImageEventstore = "eventstore/eventstore:23.10.1-jammy"
	EsUser          = "admin"
	EsPassword      = "changeit"
)

func startEventstore(ctx context.Context) (endpoint string, teardown func()) {
	req := testcontainers.ContainerRequest{
		Image: ImageEventstore,
		Env: map[string]string{
			"EVENTSTORE_INSECURE":                  "true",
			"EVENTSTORE_RUN_PROJECTIONS":           "All",
			"EVENTSTORE_ENABLE_ATOM_PUB_OVER_HTTP": "true",
			"EVENTSTORE_NODE_IP":                   "0.0.0.0",
			"EVENTSTORE_CLUSTER_SIZE":              "1",
		},
		WaitingFor: wait.ForHealthCheck(),
	}
	container, err := testcontainers.GenericContainer(ctx, testcontainers.GenericContainerRequest{
		ContainerRequest: req,
		Started:          true,
	})
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not start eventstore")
	}
	info, err := container.Inspect(ctx)
	zlog.Info().Interface("info", info).Err(err).Msg("INFO")
	endpoint, err = container.PortEndpoint(ctx, "2113", "")
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not get access to eventstore endpoint")
	}
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("could not stop eventstore")
		}
	}
}

func SetEventstoreEnv(endpoint string) {
	// Set EVENTSTORE_CS
	err := os.Setenv("EVENTSTORE_CS", fmt.Sprintf(
		"esdb://%s:%s@%s?tls=false",
		EsUser, EsPassword, endpoint,
	))
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not set EVENTSTORE_CS")
	}
}
