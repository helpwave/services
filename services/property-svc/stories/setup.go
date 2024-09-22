package stories

import (
	"context"
	"fmt"
	"github.com/golang-migrate/migrate/v4"
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
	zlog "github.com/rs/zerolog/log"
	"hwtesting"
	"os/signal"
	"property-svc/cmd/service"

	"os"
	"strings"
	"testing"
	"time"
)

func Setup(m *testing.M) {
	ctx, cancel := context.WithCancel(context.Background())

	zlog.Info().Msg("starting containers")
	endpoints, teardownContainers := hwtesting.StartContainers(ctx, hwtesting.Postgres, hwtesting.Eventstore)
	postgresEndpoint := endpoints.Get(hwtesting.Postgres)
	eventstoreEndpoint := endpoints.Get(hwtesting.Eventstore)

	zlog.Info().
		Str("postgresEndpoint", postgresEndpoint).
		Str("eventstoreEndpoint", eventstoreEndpoint).
		Msg("containers are up")

	// Set POSTGRES_DSN
	postgresEnpointParts := strings.SplitN(postgresEndpoint, ":", 2)
	postgresHost := postgresEnpointParts[0]
	postgresPort := postgresEnpointParts[1]

	postgresDSN := fmt.Sprintf(
		"postgres://%s:%s@%s:%s/%s?sslmode=disable",
		hwtesting.PostgresUser, hwtesting.PostgresPassword, postgresHost, postgresPort, hwtesting.PostgresDb,
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
		hwtesting.EsUser, hwtesting.EsPassword, eventstoreEndpoint,
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
	go service.Main("story hwtesting", func() { ready <- true })
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
