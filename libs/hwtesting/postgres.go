package hwtesting

import (
	"context"
	"fmt"
	"os"
	"strings"
	"time"

	"github.com/testcontainers/testcontainers-go"
	"github.com/testcontainers/testcontainers-go/wait"

	"github.com/golang-migrate/migrate/v4"
	zlog "github.com/rs/zerolog/log"
	"github.com/testcontainers/testcontainers-go/modules/postgres"
)

const ImagePostgres = "postgres:15.6"

const (
	PostgresUser     = "postgres"
	PostgresPassword = "postgres"
	PostgresDB       = "postgres"
)

func startPostgres(ctx context.Context) (endpoint string, teardown func()) {
	container, err := postgres.Run(ctx,
		ImagePostgres,
		testcontainers.WithWaitStrategyAndDeadline(time.Second*10, wait.ForExposedPort()),
		postgres.WithDatabase(PostgresDB),
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

func SetPostgresEnv(endpoint string) string {
	// Set POSTGRES_DSN
	postgresEnpointParts := strings.SplitN(endpoint, ":", 2)
	postgresHost := postgresEnpointParts[0]
	postgresPort := postgresEnpointParts[1]

	postgresDSN := fmt.Sprintf(
		"postgres://%s:%s@%s:%s/%s?sslmode=disable",
		PostgresUser, PostgresPassword, postgresHost, postgresPort, PostgresDB,
	)

	err := os.Setenv("POSTGRES_DSN", postgresDSN)
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not set POSTGRES_DSN")
	}

	return postgresDSN
}

func MigratePostgres(sourceURL, dsn string) {
	migr, err := migrate.New(sourceURL, dsn)
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not create migrate instance")
	}
	err = migr.Up()
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not migrate")
	}
}
