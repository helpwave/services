package hwdb

import (
	"context"
	"errors"
	"github.com/golang/protobuf/proto"
	"github.com/jackc/pgerrcode"
	"github.com/jackc/pgx/v5/pgconn"
	"github.com/rs/zerolog"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwdb/locale"
	"hwlocale"
	"reflect"
	"strings"
	"telemetry"
)

func genericStatusError(ctx context.Context, reasons ...string) error {
	message := strings.Join(reasons, " ")

	if message == "" {
		message = hwlocale.English(ctx, locale.GenericError(ctx))
	}

	return newStatusError(ctx,
		codes.Internal,
		message,
		hwlocale.LocalizedMessage(ctx, locale.GenericError(ctx)),
	)
}

// TODO: move to hwutil
func newStatusError(ctx context.Context, code codes.Code, msg string, details ...proto.Message) error {
	statusNoDetails := status.New(code, msg)

	// TODO: emit error if no user-facing error is attached

	s, err := statusNoDetails.WithDetails(details...)
	if err != nil {
		zlog.Ctx(ctx).Error().Err(err).Msg("could not add details to status error")
		return statusNoDetails.Err()
	}
	return s.Err()
}

// errorFn should return a Status Error or nil
type errorFn func(*pgconn.PgError) error

type errorOptions struct {
	notNullFn errorFn
	fkFn      errorFn
}

type ErrorOptionsMutator func(*errorOptions)

// WithOnNotNullViolation lets you specify an error to be returned in case of a NonNull-Constraint violation
func WithOnNotNullViolation(fn errorFn) ErrorOptionsMutator {
	return func(options *errorOptions) {
		options.notNullFn = fn
	}
}

// WithOnFKViolation lets you specify an error to be returned in case of a Foreign Key Constraint violation
func WithOnFKViolation(fn errorFn) ErrorOptionsMutator {
	return func(options *errorOptions) {
		options.fkFn = fn
	}
}

// Error expects a database error and returns a processed Error, also does logging
func Error(ctx context.Context, err error, options ...ErrorOptionsMutator) error {
	log := zlog.Ctx(ctx)
	if err == nil {
		return nil
	}

	opts := errorOptions{}
	for _, mutator := range options {
		mutator(&opts)
	}

	var pgError *pgconn.PgError
	if errors.As(err, &pgError) {
		return pgErr(ctx, pgError, opts)
	}

	var connErr *pgconn.ConnectError
	if errors.As(err, &connErr) {
		return pgConnErr(ctx, connErr)
	}

	log.Error().
		Err(err).
		Str("type", reflect.TypeOf(err).String()).
		Msg("hwdb.Error() called with unrecognized error type")
	return err // just return it
}

func pgErr(ctx context.Context, pgError *pgconn.PgError, opts errorOptions) error {
	log := zlog.Ctx(ctx)

	newLogger := log.With().
		Dict(
			"pgErr",
			zerolog.Dict().
				Str("severity", pgError.Severity).
				Str("code", pgError.Code).
				Str("message", pgError.Message).
				Str("detail", pgError.Detail).
				Str("hint", pgError.Hint).
				Str("internalQuery", pgError.InternalQuery).
				Str("where", pgError.Where).
				Str("schemaName", pgError.SchemaName).
				Str("tableName", pgError.TableName).
				Str("columnName", pgError.ColumnName).
				Str("dataTypeName", pgError.DataTypeName).
				Str("constraintName", pgError.ConstraintName).
				Str("file", pgError.File).
				Int32("line", pgError.Line).
				Str("routine", pgError.Routine),
		).
		Logger()
	log = &newLogger

	errCode := pgError.Code

	// return nil
	if pgerrcode.IsSuccessfulCompletion(errCode) {
		return nil
	}
	if pgerrcode.IsWarning(errCode) {
		log.Warn().
			Msg("database warning")
		return nil
	}

	// user made a mistake
	if pgerrcode.IsIntegrityConstraintViolation(errCode) ||
		pgerrcode.IsWithCheckOptionViolation(errCode) ||
		pgerrcode.IsNoData(errCode) {
		log.Info().Send()

		if errCode == pgerrcode.NotNullViolation {
			err := opts.fkFn(pgError)
			if err != nil {
				return err
			}
		}

		if errCode == pgerrcode.ForeignKeyViolation {
			err := opts.fkFn(pgError)
			if err != nil {
				return err
			}
		}

		return newStatusError(ctx,
			codes.InvalidArgument,
			"database error: "+pgError.Message,
			hwlocale.LocalizedMessage(ctx, locale.InvalidArgsError(ctx)),
		)
	}

	// acts of god, we can only apologize
	if pgerrcode.IsConnectionException(errCode) ||
		pgerrcode.IsInsufficientResources(errCode) ||
		pgerrcode.IsOperatorIntervention(errCode) ||
		pgerrcode.IsSystemError(errCode) ||
		pgerrcode.IsInternalError(errCode) ||
		pgerrcode.IsProgramLimitExceeded(errCode) ||
		pgerrcode.IsConfigurationFileError(errCode) {
		log.Error().Err(pgError).Msg("severe database issue! likely requires immediate action!")

		return genericStatusError(ctx, "severe database issue")
	}

	// we made a mistake
	if pgerrcode.IsFeatureNotSupported(errCode) ||
		pgerrcode.IsInvalidTransactionInitiation(errCode) ||
		pgerrcode.IsCardinalityViolation(errCode) ||
		pgerrcode.IsDataException(errCode) ||
		pgerrcode.IsInvalidTransactionState(errCode) ||
		pgerrcode.IsInvalidSQLStatementName(errCode) ||
		pgerrcode.IsTriggeredDataChangeViolation(errCode) ||
		pgerrcode.IsInvalidAuthorizationSpecification(errCode) ||
		pgerrcode.IsInvalidTransactionTermination(errCode) ||
		pgerrcode.IsSQLRoutineException(errCode) ||
		pgerrcode.IsInvalidCursorName(errCode) ||
		pgerrcode.IsExternalRoutineException(errCode) ||
		pgerrcode.IsSavepointException(errCode) ||
		pgerrcode.IsInvalidCatalogName(errCode) ||
		pgerrcode.IsInvalidSchemaName(errCode) ||
		pgerrcode.IsTransactionRollback(errCode) ||
		pgerrcode.IsSyntaxErrororAccessRuleViolation(errCode) ||
		pgerrcode.IsObjectNotInPrerequisiteState(errCode) ||
		pgerrcode.IsForeignDataWrapperError(errCode) ||
		pgerrcode.IsSQLStatementNotYetComplete(errCode) ||
		pgerrcode.IsTriggeredActionException(errCode) ||
		pgerrcode.IsLocatorException(errCode) ||
		pgerrcode.IsInvalidGrantor(errCode) ||
		pgerrcode.IsInvalidRoleSpecification(errCode) ||
		pgerrcode.IsDiagnosticsException(errCode) ||
		pgerrcode.IsCaseNotFound(errCode) ||
		pgerrcode.IsDependentPrivilegeDescriptorsStillExist(errCode) ||
		pgerrcode.IsSnapshotFailure(errCode) {
		return genericStatusError(ctx, "database error:", pgError.Message)
	}
	log.Error().Msg("unrecognized database error has occurred")
	return genericStatusError(ctx, "database error:", pgError.Message)
}

func pgConnErr(ctx context.Context, connErr *pgconn.ConnectError) error {
	log := zlog.Ctx(ctx)
	log.Error().
		Dict("config", zerolog.Dict().
			Str("host", connErr.Config.Host).
			Uint16("port", connErr.Config.Port).
			Str("database", connErr.Config.Database).
			Str("password", telemetry.OmitAll(connErr.Config.Password)).
			Dur("connectTimeout", connErr.Config.ConnectTimeout),
		).
		Err(connErr).
		Msg("connection issue")
	return genericStatusError(ctx, "database connection issue")
}
