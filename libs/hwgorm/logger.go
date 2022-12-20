package hwgorm

import (
	"context"
	"time"

	"github.com/rs/zerolog/log"
	"gorm.io/gorm/logger"
)

type GormLogger struct {
}

// LogMode should set the LogLevel (ignored)
func (g GormLogger) LogMode(_ logger.LogLevel) logger.Interface {
	// We control the LogLevel via logging.SetupLogging(),
	// so let's ignore it
	return g
}

// Info is used by gorm to do a info-level log
func (g GormLogger) Info(ctx context.Context, s string, i ...interface{}) {
	log.Ctx(ctx).
		Info().
		Msgf(s, i...)
}

// Warn is used by gorm to do a warn-level log
func (g GormLogger) Warn(ctx context.Context, s string, i ...interface{}) {
	log.Ctx(ctx).
		Warn().
		Msgf(s, i...)
}

// Error is used by gorm to do a error-level log
func (g GormLogger) Error(ctx context.Context, s string, i ...interface{}) {
	log.
		Ctx(ctx).
		Error().
		Msgf(s, i...)
}

// Trace is used by gorm to do a trace-level log
func (g GormLogger) Trace(ctx context.Context, begin time.Time, fc func() (sql string, rowsAffected int64), err error) {
	query, rowsAffected := fc()
	elapsed := time.Since(begin)
	log.
		Ctx(ctx).
		Trace().
		Dur("elapsed", elapsed).
		Int64("rows_affected", rowsAffected).
		Err(err).
		Msg(query)
}
