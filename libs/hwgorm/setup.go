package hwgorm

import (
	"context"
	"errors"
	"fmt"
	"github.com/jackc/pgconn"
	"github.com/jackc/pgerrcode"
	"github.com/rs/zerolog/log"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
	"hwutil"
)

var database *gorm.DB = nil

// SetupDatabaseByEnvs prefers the env POSTGRES_DSN and will be configured the database connection accordingly.
// When this env does not exist, a fallback to the following envs with proper default values will take place.
// [NAME_OF_THE_ENV] (DEFAULT)
// POSTGRES_HOST (localhost)
// POSTGRES_USER (postgres)
// POSTGRES_PASSWORD (postgres)
// POSTGRES_DB (postgres)
// POSTGRES_PORT (5432)
func SetupDatabaseByEnvs() {
	log.Info().Msg("connecting to postgres ...")

	dsn := hwutil.GetEnvOr("POSTGRES_DSN", "")
	if dsn == "" {
		dsn = buildDsnFromEnvs()
		log.Debug().Msg("POSTGRES_DSN env not found, build dsn from POSTGRES_HOST, ... envs")
	}

	db, err := OpenDatabaseByDSN(dsn)
	if err != nil {
		log.Fatal().Err(err).Msg("could not connect to postgres")
	}

	database = db

	log.Info().Msg("connected to postgres")
}

// OpenDatabaseByDSN finally tries to connect to the database using the passed DSN
func OpenDatabaseByDSN(dsn string) (*gorm.DB, error) {
	config := gorm.Config{
		Logger: GormLogger{},
	}
	db, err := gorm.Open(postgres.Open(dsn), &config)
	if err != nil {
		return nil, err
	}
	return db, nil
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

func GetDB(logCtx context.Context) *gorm.DB {
	if logCtx != nil {
		return database.WithContext(logCtx)
	}
	return database
}

// IsOurFault returns true when a gORM error is caused by invalid backend configuration
// e.g. a disconnected database
func IsOurFault(gormError error) bool {
	// try to cast into PgError
	var pgErr *pgconn.PgError
	if errors.As(gormError, &pgErr) {
		return isOurFaultPgError(pgErr)
	}

	ours :=
		errors.Is(gormError, gorm.ErrInvalidTransaction) ||
			errors.Is(gormError, gorm.ErrNotImplemented) ||
			errors.Is(gormError, gorm.ErrMissingWhereClause) ||
			errors.Is(gormError, gorm.ErrUnsupportedRelation) ||
			errors.Is(gormError, gorm.ErrPrimaryKeyRequired) ||
			errors.Is(gormError, gorm.ErrModelValueRequired) ||
			errors.Is(gormError, gorm.ErrUnsupportedDriver) ||
			errors.Is(gormError, gorm.ErrRegistered) ||
			errors.Is(gormError, gorm.ErrInvalidField) ||
			errors.Is(gormError, gorm.ErrDryRunModeUnsupported) ||
			errors.Is(gormError, gorm.ErrInvalidDB) ||
			errors.Is(gormError, gorm.ErrInvalidValueOfLength) ||
			errors.Is(gormError, gorm.ErrPreloadNotAllowed)
	theirs :=
		errors.Is(gormError, gorm.ErrRecordNotFound) ||
			errors.Is(gormError, gorm.ErrInvalidData) ||
			errors.Is(gormError, gorm.ErrEmptySlice) ||
			errors.Is(gormError, gorm.ErrInvalidValue) ||
			errors.Is(gormError, gorm.ErrInvalidValueOfLength)

	if !ours && !theirs {
		log.Error().Err(gormError).Msg("Error is neither theirs nor ours!!")
		return true // if we don't know the error, we might have caused it
	}

	return ours
}

func isOurFaultPgError(err *pgconn.PgError) bool {
	code := err.Code

	// common errors that can occur because the backend messed up
	return pgerrcode.IsConnectionException(code) ||
		pgerrcode.IsFeatureNotSupported(code) ||
		pgerrcode.IsInvalidTransactionInitiation(code) ||
		pgerrcode.IsInvalidSQLStatementName(code) ||
		pgerrcode.IsSyntaxErrororAccessRuleViolation(code) ||
		pgerrcode.IsInsufficientResources(code) ||
		pgerrcode.IsProgramLimitExceeded(code) ||
		pgerrcode.IsSystemError(code) ||
		pgerrcode.IsConfigurationFileError(code) ||
		pgerrcode.IsInternalError(code) ||
		pgerrcode.IsOperatorIntervention(code)
}
