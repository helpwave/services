package common

import (
	"github.com/joho/godotenv"
	"github.com/rs/zerolog/log"
	"hwutil"
	"logging"
)

const DevelopmentMode = "development"
const ProductionMode = "production"

// Setup loads the .env file and sets up logging
// also sets up tokens when the service requires auth
func Setup(serviceName, version string, auth bool) {
	dotenvErr := godotenv.Load()

	mode := hwutil.GetEnvOr("MODE", DevelopmentMode)
	LogLevel := hwutil.GetEnvOr("LOG_LEVEL", "info")

	logging.SetupLogging(
		mode,
		LogLevel,
		serviceName,
		version,
	)

	if len(version) == 0 && mode == ProductionMode {
		log.Warn().Msg("Version is empty in production build! Recompile using ldflag '-X main.Version=<version>'")
	}

	if dotenvErr == nil {
		log.Info().Msg("successfully loaded .env file")
	}

	if auth {
		SetupTokenSecrets(
			mode,
			hwutil.ReadFileOrEmpty("jwt-private.pem"),
			hwutil.ReadFileOrEmpty("jwt-public.pem"),
		)
	}
}
