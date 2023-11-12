package hwdb

import (
	"context"
	"entgo.io/ent/dialect"
	"fmt"
	"github.com/rs/zerolog/log"
	"hwutil"
)

// SetupDatabaseWithEnvs prefers the env POSTGRES_DSN and will be configured the database connection accordingly.
// When this env does not exist, a fallback to the following envs with proper default values will take place.
// [NAME_OF_THE_ENV] (DEFAULT)
// POSTGRES_HOST (localhost)
// POSTGRES_USER (postgres)
// POSTGRES_PASSWORD (postgres)
// POSTGRES_DB (postgres)
// POSTGRES_PORT (5432)
func SetupDatabaseWithEnvs[C, O any](open func(driverName, dataSourceName string, options ...O) (*C, error)) func(ctx context.Context) *C {
	log.Info().Msg("connecting to postgres ...")

	dsn := hwutil.GetEnvOr("POSTGRES_DSN", "")
	if dsn == "" {
		dsn = buildDsnFromEnvs()
		log.Debug().Msg("POSTGRES_DSN env not found, build dsn from POSTGRES_HOST, ... envs")
	}

	db, err := open(dialect.Postgres, dsn)
	if err != nil {
		log.Fatal().Err(err).Msg("could not connect to postgres")
	}

	log.Info().Msg("connected to postgres")

	return func(ctx context.Context) *C {
		return db
	}
}

// buildDsnFromEnvs resolves the DSN by the following envs with proper default values
// [NAME_OF_THE_ENV] (DEFAULT)
// POSTGRES_HOST (localhost)
// POSTGRES_USER (postgres)
// POSTGRES_PASSWORD (postgres)
// POSTGRES_DB (postgres)
// POSTGRES_PORT (5432)
func buildDsnFromEnvs() string {
	host,
		user,
		password,
		databaseName,
		port :=
		hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
		hwutil.GetEnvOr("POSTGRES_USER", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PASSWORD", "postgres"),
		hwutil.GetEnvOr("POSTGRES_DB", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PORT", "5432")

	return fmt.Sprintf(
		"host=%s user=%s password=%s dbname=%s port=%s",
		host, user, password, databaseName, port,
	)
}
