package common

import (
	"context"
	"crypto/tls"
	"fmt"
	"github.com/google/uuid"
	"github.com/joho/godotenv"
	"github.com/rs/zerolog/log"
	"hwutil"
	"logging"
	"net/http"
	"strings"
)

var (
	Mode                    string // Mode is set in Setup()
	InsecureFakeTokenEnable = false
	InstanceOrganizationID  *uuid.UUID
)

const DevelopmentMode = "development"
const ProductionMode = "production"

var skipAuthForMethods []string

// Setup wraps SetupWithUnauthenticatedMethods for a setup without unauthenticated methods
func Setup(serviceName, version string, auth bool) func() {
	return SetupWithUnauthenticatedMethods(serviceName, version, auth, nil)
}

// SetupWithUnauthenticatedMethods loads the .env file and sets up logging,
// also sets up tokens when the service requires auth.
// It returns a shutdown function, which must be called before exiting the process (needed for otel)
func SetupWithUnauthenticatedMethods(serviceName, version string, auth bool, unauthenticatedMethods *[]string) func() {
	dotenvErr := godotenv.Load()

	Mode = hwutil.GetEnvOr("MODE", DevelopmentMode)
	LogLevel := hwutil.GetEnvOr("LOG_LEVEL", "info")

	logging.SetupLogging(
		Mode,
		LogLevel,
		serviceName,
		version,
	)

	shutdownOtel, err := setupOTelSDK(context.Background(), serviceName, version)
	if err != nil {
		msg := "Could not set up opentelemetry sdk"
		if Mode == ProductionMode { // TODO: replace with env variable
			log.Fatal().Err(err).Msg(msg)
		} else {
			log.Error().Err(err).Msg(msg)
		}
	}

	// for now, we return this function and move responsibility to the callee,
	// in the future we might call this in a SIGINT trap, which we set up in common
	shutdown := func() {
		if err := shutdownOtel(context.Background()); err != nil {
			log.Error().Err(err).Msg("error in shutting down opentelemetry")
		}
	}

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
		if strings.ToLower(hwutil.GetEnvOr("INSECURE_FAKE_TOKEN_ENABLE", "false")) == "true" {
			InsecureFakeTokenEnable = true
			log.Error().Msg("INSECURE_FAKE_TOKEN_ENABLE is set to true, accepting fake tokens")
		}

		// organizationIdStr, later InstanceOrganizationID is used as a fallback when a client does not send the organization header
		// For code consistency purposes, we are parsing organizationIdStr from a string into a UUID
		organizationIdStr := hwutil.GetEnvOr("ORGANIZATION_ID", "")
		if organizationIdStr != "" {
			organizationID, err := uuid.Parse(organizationIdStr)
			if err != nil {
				log.Fatal().Err(err).Msg("invalid uuid for environment variable ORGANIZATION_ID")
			}
			log.Info().Str("organizationID", organizationID.String()).Msg("specified fallback organizationID for requests without organization header")
			InstanceOrganizationID = &organizationID
		}

		// Only modify skipAuthForMethods once on startup
		if unauthenticatedMethods != nil {
			skipAuthForMethods = *unauthenticatedMethods
		}

		setupAuth()
	}

	return shutdown
}

// ResolveAddrFromEnv uses the "PORT" and "ADDR" env variables to
// build the address that can be used by an HTTP or gRPC server.
// The address will always be in the "(ADDR):PORT" format.
// If "ADDR" is not set, the "ADDR" part of the format will be "".
// If "PORT" is not set, the fallback is "8080".
// If "APP_PORT" is set, we assume that Dapr is running on the same interface so we return "127.0.0.1:$APP_PORT"
func ResolveAddrFromEnv() string {
	daprAppPort := hwutil.GetEnvOr("APP_PORT", "")
	if daprAppPort != "" {
		return fmt.Sprintf("127.0.0.1:%s", daprAppPort)
	}

	port := hwutil.GetEnvOr("PORT", "8080")
	fallbackAddr := fmt.Sprintf(":%s", port)
	return hwutil.GetEnvOr("ADDR", fallbackAddr)
}
