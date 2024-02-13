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
)

// TODO: move to hwutil
func newStatusError(ctx context.Context, code codes.Code, msg string, details ...proto.Message) error {
	statusNoDetails := status.New(code, msg)

	s, err := statusNoDetails.WithDetails(details...)
	if err != nil {
		zlog.Ctx(ctx).Error().Err(err).Msg("could not add details to status error")
		return statusNoDetails.Err()
	}
	return s.Err()
}

// Error expects a database error and returns a processed Error, also does logging
func Error(ctx context.Context, err error) error {
	log := zlog.Ctx(ctx)
	if err == nil {
		return nil
	}
	var pgError *pgconn.PgError
	if !errors.As(err, &pgError) {
		log.Warn().
			Err(err).
			Msg("hwdb.Error() called with unrecognized error type")
		return err // just return it
	}

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
	ctx = log.WithContext(ctx)
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
		return newStatusError(ctx, codes.InvalidArgument, "database error: "+pgError.Message) // TODO: details
	}

	// acts of god, we can only apologize
	if pgerrcode.IsConnectionException(errCode) ||
		pgerrcode.IsInsufficientResources(errCode) ||
		pgerrcode.IsOperatorIntervention(errCode) ||
		pgerrcode.IsSystemError(errCode) ||
		pgerrcode.IsInternalError(errCode) ||
		pgerrcode.IsProgramLimitExceeded(errCode) ||
		pgerrcode.IsConfigurationFileError(errCode) {
		log.Error().Msg("severe database issue! likely requires immediate action!")

		return newStatusError(ctx, codes.Internal,
			hwlocale.English(ctx, locale.Bundle(ctx), locale.SevereError),
			hwlocale.LocalizedMessage(ctx, locale.Bundle(ctx), locale.SevereError),
		)
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
		return newStatusError(ctx, codes.Internal, "database error: "+pgError.Message) // TODO: details
	}
	log.Error().Msg("unrecognized database error has occurred")
	return newStatusError(ctx, codes.Internal, "database error: "+pgError.Message) // TODO: details
}
