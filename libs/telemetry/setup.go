package telemetry

import (
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
	"os"
)

func SetupLogging(mode, rawLevel, service, version string) {
	zerolog.TimeFieldFormat = zerolog.TimeFormatUnix

	// in production, we use the default JSON output (os.Stdout),
	// in development, we use the pretty-printing ConsoleWriter
	if mode != "production" {
		log.Logger = log.Output(zerolog.ConsoleWriter{Out: os.Stdout})
	}

	// base logger, all kinds of other data may be attached for more specific loggers (e.g. as done in common.loggingUnaryInterceptor)
	log.Logger = log.With().
		Caller().
		Str("version", version).
		Str("service", service).
		Logger().
		Hook(zerologTraceHook())

	// attempt to parse level, we can already use the current logger if it fails
	level, err := zerolog.ParseLevel(rawLevel)
	if err != nil {
		log.Fatal().Err(err).Msg("could not parse LOG_LEVEL")
	}
	log.Logger = log.Level(level)

	// apparently the Default Logger (log.Logger, e.g. used like this: zerolog.Info().Msg(..))
	// is not automatically the DefaultContextLogger (e.g. used like this: zerolog.Ctx(ctx).Info().Msg(..))
	zerolog.DefaultContextLogger = &log.Logger
	log.Info().Msg("Logging is set up")
}
