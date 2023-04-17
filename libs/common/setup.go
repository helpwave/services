package common

import (
	"crypto/tls"
	"fmt"
	"github.com/joho/godotenv"
	"github.com/rs/zerolog/log"
	"hwutil"
	"logging"
	"math/rand"
	"net/http"
	"strings"
	"time"
)

var (
	Mode                    string // Mode is set in Setup()
	InsecureFakeTokenEnable = false
)

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
		if strings.ToLower(hwutil.GetEnvOr("INSECURE_FAKE_TOKEN_ENABLE", "false")) == "true" && Mode == DevelopmentMode {
			InsecureFakeTokenEnable = true
			log.Error().Msg("INSECURE_FAKE_TOKEN_ENABLE is set to true, accepting fake tokens")
		}

		setupAuth()
	}
}

// ResolveAddrFromEnv uses the "PORT" and "ADDR" env variables to
// build the address that can be used by an HTTP or gRPC server.
// The address will always be in the "(ADDR):PORT" format.
// If "ADDR" is not set, the "ADDR" part of the format will be "".
// If "PORT" is not set, the fallback is "8080".
func ResolveAddrFromEnv() string {
	port := hwutil.GetEnvOr("PORT", "8080")
	fallbackAddr := fmt.Sprintf(":%s", port)
	return hwutil.GetEnvOr("ADDR", fallbackAddr)
}
