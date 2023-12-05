// This is adapted from github.com/jackc/pgx-zerolog,
// and thus is licensed under the MIT LICENSE,
// available in jackc/pgx-zerolog's LICENSE file
package pgx_zerolog

import (
	"context"
	"github.com/jackc/pgx/v5/tracelog"
	"github.com/rs/zerolog"
	"math"
)

type Logger struct {
	logger           zerolog.Logger
	withFunc         func(context.Context, zerolog.Context) zerolog.Context
	fromContext      bool
	skipModule       bool
	subDictionary    bool
	subDictionaryKey string
}

// option options for configuring the logger when creating a new logger.
type option func(logger *Logger)

// WithContextFunc adds possibility to get request scoped values from the
// ctx.Context before logging lines.
func WithContextFunc(withFunc func(context.Context, zerolog.Context) zerolog.Context) option {
	return func(logger *Logger) {
		logger.withFunc = withFunc
	}
}

// WithoutPGXModule disables adding module:pgx to the default logger context.
func WithoutPGXModule() option {
	return func(logger *Logger) {
		logger.skipModule = true
	}
}

// WithSubDictionary adds data to sub dictionary with key.
func WithSubDictionary(key string) option {
	return func(logger *Logger) {
		logger.subDictionary = true
		logger.subDictionaryKey = key
	}
}

// NewLogger accepts a zerolog.Logger as input and returns a new custom pgx
// logging facade as output.
func NewLogger(logger zerolog.Logger, options ...option) *Logger {
	l := Logger{
		logger: logger,
	}
	l.init(options)
	return &l
}

// NewContextLogger creates logger that extracts the zerolog.Logger from the
// context.Context by using `zerolog.Ctx`. The zerolog.DefaultContextLogger will
// be used if no logger is associated with the context.
func NewContextLogger(options ...option) *Logger {
	l := Logger{
		fromContext: true,
	}
	l.init(options)
	return &l
}

func (pl *Logger) init(options []option) {
	for _, opt := range options {
		opt(pl)
	}
	if !pl.skipModule {
		pl.logger = pl.logger.With().Str("module", "pgx").Logger()
	}
}

func (pl *Logger) Log(ctx context.Context, level tracelog.LogLevel, msg string, data map[string]interface{}) {
	var zlevel zerolog.Level
	switch level {
	case tracelog.LogLevelNone:
		zlevel = zerolog.NoLevel
	case tracelog.LogLevelError:
		zlevel = zerolog.ErrorLevel
	case tracelog.LogLevelWarn:
		zlevel = zerolog.WarnLevel
	case tracelog.LogLevelInfo:
		zlevel = zerolog.InfoLevel
	case tracelog.LogLevelDebug:
		zlevel = zerolog.DebugLevel
	case tracelog.LogLevelTrace:
		zlevel = zerolog.TraceLevel
	default:
		zlevel = zerolog.DebugLevel
	}

	// pgx thinks it's more important than it is
	zlevel = zerolog.Level(int(math.Max(float64(zlevel-2), -1)))

	var zctx zerolog.Context
	if pl.fromContext {
		logger := zerolog.Ctx(ctx)
		zctx = logger.With()
	} else {
		zctx = pl.logger.With()
	}
	if pl.withFunc != nil {
		zctx = pl.withFunc(ctx, zctx)
	}

	pgxlog := zctx.Logger()
	event := pgxlog.WithLevel(zlevel)
	if event.Enabled() {
		if pl.fromContext && !pl.skipModule {
			event.Str("module", "pgx")
		}

		if pl.subDictionary {
			event.Dict(pl.subDictionaryKey, zerolog.Dict().Fields(data))
		} else {
			event.Fields(data)
		}

		event.Msg(msg)
	}
}