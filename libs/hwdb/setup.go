package hwdb

import (
	"context"
	"fmt"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/jackc/pgx/v5/tracelog"
	"github.com/rs/zerolog/log"
	"hwdb/pgx_zerolog"
	"hwutil"

	pgxUUID "github.com/vgarvardt/pgx-google-uuid/v5"
)

// connectionPool is set in OpenDatabase() and allows for concurrent access to the database
var connectionPool *pgxpool.Pool = nil

// SetupDatabaseFromEnv prefers the env POSTGRES_DSN and will be configured the database connection accordingly.
// When this env does not exist, a fallback to the following envs with proper default values will take place.
// [NAME_OF_THE_ENV] (DEFAULT)
// POSTGRES_HOST (localhost)
// POSTGRES_USER (postgres)
// POSTGRES_PASSWORD (postgres)
// POSTGRES_DB (postgres)
// POSTGRES_PORT (5432)
func SetupDatabaseFromEnv(context context.Context) {
	log.Info().Msg("connecting to postgres ...")

	dsn := hwutil.GetEnvOr("POSTGRES_DSN", "")
	if dsn == "" {
		dsn = buildDsnFromEnvs()
		log.Debug().Msg("POSTGRES_DSN env not found, built dsn from POSTGRES_HOST, ... envs")
	}

	dbpool, err := openDatabasePool(context, dsn)
	if err != nil {
		log.Fatal().Err(err).Msg("could not connect to database")
	}

	// set connectionPool
	connectionPool = dbpool

	log.Info().Msg("connected to postgres")
}

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

// openDatabasePool simply opens a new database pool to the dsn provided
// it does not set up connectionPool!
func openDatabasePool(ctx context.Context, dsn string) (*pgxpool.Pool, error) {
	pgxConfig, err := pgxpool.ParseConfig(dsn)
	if err != nil {
		log.Error().Err(err).Msg("Unable to parse database config")
		return nil, err
	}

	// google's uuid <-> pgtype.uuid interop
	pgxConfig.AfterConnect = func(ctx context.Context, conn *pgx.Conn) error {
		pgxUUID.Register(conn.TypeMap())
		return nil
	}

	// logging
	pgxConfig.ConnConfig.Tracer = &tracelog.TraceLog{
		Logger: pgx_zerolog.NewContextLogger(),
		// LogLevel is the level at which pgx will start calling zerolog
		// Trace, being the lowest level, will cause it to always be called
		LogLevel: tracelog.LogLevelTrace,
	}

	// open pool
	dbpool, err := pgxpool.NewWithConfig(ctx, pgxConfig)
	if err != nil {
		log.Error().Err(err).Msg("Unable to create connection pool")
		return nil, err
	}
	return dbpool, nil
}

func GetDB() *pgxpool.Pool {
	if connectionPool == nil {
		log.Error().Msg("GetDB called without set-up database, you will run into nil-pointers. Make sure to call SetupDatabaseFromEnv()!")
	}
	return connectionPool
}