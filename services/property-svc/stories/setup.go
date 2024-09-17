package stories

import (
	"context"
	"fmt"
	"github.com/golang-migrate/migrate/v4"
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
	zlog "github.com/rs/zerolog/log"
	"github.com/testcontainers/testcontainers-go"
	"github.com/testcontainers/testcontainers-go/modules/postgres"
	"github.com/testcontainers/testcontainers-go/wait"
	"os/signal"
	"property-svc/cmd/service"

	"os"
	"strings"
	"sync"
	"testing"
	"time"
)

const ImagePostgres = "postgres:15.6"
const ImageEventstore = "eventstore/eventstore:23.10.1-jammy"

const PostgresUser = "postgres"
const PostgresPassword = "postgres"
const PostgresDb = "postgres"

const EsUser = "admin"
const EsPassword = "changeit"

func Setup(m *testing.M) {
	ctx, cancel := context.WithCancel(context.Background())
	zlog.Info().Msg("starting containers")
	postgresEndpoint, eventstoreEndpoint, teardownContainers := startContainers(ctx)
	zlog.Info().Str("postgresEndpoint", postgresEndpoint).Str("eventstoreEndpoint", eventstoreEndpoint).Msg("containers are up")

	// Set POSTGRES_DSN
	postgresEnpointParts := strings.SplitN(postgresEndpoint, ":", 2)
	postgresHost := postgresEnpointParts[0]
	postgresPort := postgresEnpointParts[1]

	postgresDSN := fmt.Sprintf(
		"postgres://%s:%s@%s:%s/%s?sslmode=disable",
		PostgresUser, PostgresPassword, postgresHost, postgresPort, PostgresDb,
	)

	err := os.Setenv("POSTGRES_DSN", postgresDSN)
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not set POSTGRES_DSN")
	}

	// Run postgres migrations

	// go test sets the wd to the directory of this file
	migr, err := migrate.New("file://../migrations", postgresDSN)
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not create migrate instance")
	}
	err = migr.Up()
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not migrate")
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
	_ = os.Setenv("LOG_LEVEL", "trace")
	_ = os.Setenv("INSECURE_FAKE_TOKEN_ENABLE", "true")
	_ = os.Setenv("INSECURE_REDIS_NO_TLS", "true")
	_ = os.Setenv("ORGANIZATION_ID", "3b25c6f5-4705-4074-9fc6-a50c28eba405")

	// start service
	ready := make(chan bool)
	go service.Main("story testing", func() { ready <- true })
	<-ready

	// FIXME: actually wait for the projections instead of guessing
	time.Sleep(time.Second * 5)

	// Run tests
	exitCode := m.Run()

	// cleanup and exit
	signal.Notify(make(chan os.Signal, 1), os.Interrupt)
	time.Sleep(time.Second)
	teardownContainers()
	cancel()
	os.Exit(exitCode)
}

func startContainers(ctx context.Context) (postgresEndpoint, eventstoreEndpoint string, teardown func()) {
	var wg sync.WaitGroup
	var postgresTeardown func()
	var eventstoreTeardown func()

	wg.Add(1)
	go func() {
		postgresEndpoint, postgresTeardown = startPostgres(ctx)
		wg.Done()
	}()
	wg.Add(1)
	go func() {
		eventstoreEndpoint, eventstoreTeardown = startEventstore(ctx)
		wg.Done()
	}()

	wg.Wait()
	teardown = func() {
		var wg sync.WaitGroup
		wg.Add(1)
		go func() {
			postgresTeardown()
			wg.Done()
		}()
		wg.Add(1)
		go func() {
			eventstoreTeardown()
			wg.Done()
		}()
		wg.Wait()

		// TODO: add redis
	}
	return
}

func startPostgres(ctx context.Context) (endpoint string, teardown func()) {
	container, err := postgres.Run(ctx,
		ImagePostgres,
		postgres.WithDatabase(PostgresDb),
		postgres.WithUsername(PostgresUser),
		postgres.WithPassword(PostgresPassword),
	)
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not start postgres")
	}
	endpoint, err = container.Endpoint(ctx, "")
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not get access to postgres endpoint")
	}
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("Could not stop postgres")
		}
	}
}

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
