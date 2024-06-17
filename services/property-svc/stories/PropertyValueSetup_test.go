//go:build stories
// +build stories

package stories

import (
	"context"
	"fmt"
	zlog "github.com/rs/zerolog/log"
	"github.com/testcontainers/testcontainers-go"
	"github.com/testcontainers/testcontainers-go/wait"
	"os"
	propertySvc "property-svc"
	"strings"
	"sync"
	"testing"
	"time"
)

const ImagePostgres = "postgres:15.6"                         // TODO: renovate
const ImageEventstore = "eventstore/eventstore:23.10.1-jammy" // TODO: renovate

const PostgresUser = "postgres"
const PostgresPassword = "postgres"
const PostgresDb = "postgres"

const EsUser = "admin"
const EsPassword = "changeit"

func Setup(m *testing.M) {
	zlog.Info().Msg("starting containers")
	postgresEndpoint, eventstoreEndpoint, teardownContainers := startContainers()
	defer teardownContainers()
	zlog.Info().Str("postgresEndpoint", postgresEndpoint).Str("eventstoreEndpoint", eventstoreEndpoint).Msg("containers are up")

	// Set POSTGRES_DSN
	postgresEnpointParts := strings.SplitN(postgresEndpoint, ":", 2)
	postgresHost := postgresEnpointParts[0]
	postgresPort := postgresEnpointParts[1]

	err := os.Setenv("POSTGRES_DSN", fmt.Sprintf(
		"host=%s user=%s password=%s dbname=%s port=%s",
		postgresHost, PostgresUser, PostgresPassword, PostgresDb, postgresPort,
	))
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not set POSTGRES_DSN")
	}

	// Set EVENTSTORE_CS
	err = os.Setenv("EVENTSTORE_CS", fmt.Sprintf(
		"esdb://%s:%s@%s?tls=false",
		EsUser, EsPassword, eventstoreEndpoint,
	))
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not set EVENTSTORE_CS")
	}

	// Set common variables
	_ = os.Setenv("MODE", "development")
	_ = os.Setenv("LOG_LEVEL", "debug")
	_ = os.Setenv("INSECURE_FAKE_TOKEN_ENABLE", "true")
	_ = os.Setenv("INSECURE_REDIS_NO_TLS", "true")
	_ = os.Setenv("ORGANIZATION_ID", "3b25c6f5-4705-4074-9fc6-a50c28eba405")

	ready := make(chan bool)
	go propertySvc.Main(func() { ready <- true })
	<-ready
	m.Run()
}

func startContainers() (postgresEndpoint, eventstoreEndpoint string, teardown func()) {
	var wg sync.WaitGroup
	var postgresTeardown func()
	var eventstoreTeardown func()

	wg.Add(2)
	go func() {
		postgresEndpoint, postgresTeardown = startPostgres()
		wg.Done()
	}()
	go func() {
		eventstoreEndpoint, eventstoreTeardown = startEventstore()
		wg.Done()
	}()

	wg.Wait()
	teardown = func() {
		var wg sync.WaitGroup
		wg.Add(2)
		go func() {
			postgresTeardown()
			wg.Done()
		}()
		go func() {
			eventstoreTeardown()
			wg.Done()
		}()
		wg.Wait()

		// TODO: add redis
	}
	return
}

func startPostgres() (endpoint string, teardown func()) {
	ctx := context.Background()
	req := testcontainers.ContainerRequest{
		Image:        ImagePostgres,
		Env:          map[string]string{"POSTGRES_PASSWORD": PostgresPassword},
		ExposedPorts: []string{"5432"},
		WaitingFor:   wait.ForExec([]string{"pg_isready", "-U", PostgresUser, "-d", PostgresDb, "-q"}),
	}
	container, err := testcontainers.GenericContainer(ctx, testcontainers.GenericContainerRequest{
		ContainerRequest: req,
		Started:          true,
	})
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not start postgres")
	}
	endpoint, err = container.Endpoint(context.Background(), "")
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not get access to postgres endpoint")
	}
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("Could not stop postgres")
		}
	}
}

func startEventstore() (endpoint string, teardown func()) {
	ctx := context.Background()
	req := testcontainers.ContainerRequest{
		Image:        ImageEventstore,
		Env:          map[string]string{"EVENTSTORE_INSECURE": "true", "EVENTSTORE_RUN_PROJECTIONS": "All", "EVENTSTORE_ENABLE_ATOM_PUB_OVER_HTTP": "true", "EVENTSTORE_NODE_IP": "127.0.0.1", "EVENTSTORE_CLUSTER_SIZE": "1"},
		ExposedPorts: []string{"2113"},
		WaitingFor:   wait.ForHealthCheck(),
	}
	container, err := testcontainers.GenericContainer(ctx, testcontainers.GenericContainerRequest{
		ContainerRequest: req,
		Started:          true,
	})
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not start eventstore")
	}
	initialAttempts := 20
	attempts := initialAttempts
	time.Sleep(time.Second * 3)

	for attempts > 0 {
		attempts--
		endpoint, err = container.Endpoint(context.Background(), "")
		if err == nil {
			break
		}
		time.Sleep(time.Second)
	}
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not get access to eventstore endpoint")
	} else {
		zlog.Info().Msgf("eventstore took %d attempts", initialAttempts-attempts)
	}
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("Could not stop eventstore")
		}
	}
}
