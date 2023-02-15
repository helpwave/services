package common

import (
	"crypto/tls"
	"github.com/joho/godotenv"
	"github.com/rs/zerolog/log"
	"hwutil"
	"logging"
	"math/rand"
	"net/http"
	"strings"
	"time"
)

// Mode is set in Setup
var Mode string

const DevelopmentMode = "development"
const ProductionMode = "production"

// Setup loads the .env file and sets up logging
// also sets up tokens when the service requires auth
func Setup(serviceName, version string, auth bool) {
	dotenvErr := godotenv.Load()
	rand.Seed(time.Now().UnixNano())

	Mode = hwutil.GetEnvOr("MODE", DevelopmentMode)
	LogLevel := hwutil.GetEnvOr("LOG_LEVEL", "info")

	logging.SetupLogging(
		Mode,
		LogLevel,
		serviceName,
		version,
	)

	if len(version) == 0 && Mode == ProductionMode {
		log.Warn().Msg("Version is empty in production build! Recompile using ldflag '-X main.Version=<version>'")
	}

	if dotenvErr == nil {
		log.Info().Msg("successfully loaded .env file")
	}

	if strings.ToLower(hwutil.GetEnvOr("INSECURE_DISABLE_TLS_VERIFY", "false")) == "true" {
		http.DefaultTransport.(*http.Transport).TLSClientConfig = &tls.Config{InsecureSkipVerify: true}
		log.Warn().Msg("InsecureSkipVerify enabled, not verifying certificates!")
	}

	if auth {
		setupKeycloak()
	}
}
