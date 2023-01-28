package logging

import (
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
	"os"
)

func SetupLogging(mode, rawLevel, service, version string) {
	zerolog.TimeFieldFormat = zerolog.TimeFormatUnix
	if mode != "production" {
		log.Logger = log.Output(zerolog.ConsoleWriter{Out: os.Stdout})
	}
	log.Logger = log.With().
		Caller().
		Str("version", version).
		Str("service", service).
		Logger()
	level, err := zerolog.ParseLevel(rawLevel)
	if err != nil {
		log.Fatal().Err(err).Msg("could not parse LOG_LEVEL")
	}
	log.Logger = log.Level(level)
	zerolog.DefaultContextLogger = &log.Logger
	log.Info().Msg("Logging is set up")
}
