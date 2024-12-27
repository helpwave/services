package hwdb

import (
	"context"
	"errors"
	"fmt"
	"hwutil"
	"hwutil/errs"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgconn"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/rs/zerolog/log"
	"hwdb/pgx_zerolog"

	pgxUUID "github.com/vgarvardt/pgx-google-uuid/v5"
)

type DBTX interface {
	Exec(ctx context.Context, query string, args ...interface{}) (pgconn.CommandTag, error)
	Query(ctx context.Context, query string, args ...interface{}) (pgx.Rows, error)
	QueryRow(ctx context.Context, query string, args ...interface{}) pgx.Row
	CopyFrom(ctx context.Context, tableName pgx.Identifier, columnNames []string, rowSrc pgx.CopyFromSource) (int64, error)
	SendBatch(ctx context.Context, batch *pgx.Batch) pgx.BatchResults

	Begin(ctx context.Context) (pgx.Tx, error)
}

// SetupDatabaseFromEnv prefers the env POSTGRES_DSN and will be configured the database connection accordingly.
// When this env does not exist, a fallback to the following envs with proper default values will take place.
// [NAME_OF_THE_ENV] (DEFAULT)
// POSTGRES_HOST (localhost)
// POSTGRES_USER (postgres)
// POSTGRES_PASSWORD (postgres)
// POSTGRES_DB (postgres)
// POSTGRES_PORT (5432)
//
// SetupDatabaseFromEnv returns a close function, which has to be called in order to shut down the database cleanly
func SetupDatabaseFromEnv(ctx context.Context) (context.Context, func()) {
	log.Info().Msg("connecting to postgres ...")

	dsn := hwutil.GetEnvOr("POSTGRES_DSN", "")
	if dsn == "" {
		dsn = buildDsnFromEnvs()
		log.Debug().Msg("POSTGRES_DSN env not found, built dsn from POSTGRES_HOST, ... envs")
	}

	dbpool, err := openDatabasePool(ctx, dsn)
	if err != nil {
		log.Fatal().Err(err).Msg("could not connect to database")
	}

	ctx = WithDB(ctx, dbpool)

	log.Info().Msg("connected to postgres")

	return ctx, func() {
		log.Info().Msg("closing db pool")
		dbpool.Close()
	}
}

func buildDsnFromEnvs() string {
	host,
		user,
		password,
		databaseName,
		port := hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
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
func openDatabasePool(ctx context.Context, dsn string) (*pgxpool.Pool, error) {
	pgxConfig, err := pgxpool.ParseConfig(dsn)
	if err != nil {
		log.Error().Err(err).Msg("Unable to parse database config")
		return nil, fmt.Errorf("openDatabasePool: could not parse dsn: %w", err)
	}

	// google's uuid <-> pgtype.uuid interop
	pgxConfig.AfterConnect = func(ctx context.Context, conn *pgx.Conn) error {
		pgxUUID.Register(conn.TypeMap())
		return nil
	}

	// logging
	pgxConfig.ConnConfig.Tracer = pgx_zerolog.NewTracer()

	// open pool
	dbpool, err := pgxpool.NewWithConfig(ctx, pgxConfig)
	if err != nil {
		log.Error().Err(err).Msg("Unable to create connection pool")
		return nil, fmt.Errorf("openDatabasePool: unable to create connection pool: %w", err)
	}
	return dbpool, nil
}

type dbKey struct{}

func WithDB(ctx context.Context, pool DBTX) context.Context {
	return context.WithValue(ctx, dbKey{}, pool)
}

func GetDB(ctx context.Context) DBTX {
	value := ctx.Value(dbKey{})
	db, ok := value.(DBTX)
	// TODO: explain
	if db != nil && !ok {
		panic(errs.NewCastError("DBTX", value))
	}
	return db
}

var ErrDBMissing = errors.New("MustGetDB() called without set-up database, use hwdb.WithDB()")

func MustGetDB(ctx context.Context) DBTX {
	if db := GetDB(ctx); db != nil {
		return db
	}

	log.Error().Err(ErrDBMissing).Send()
	panic(ErrDBMissing)
}
