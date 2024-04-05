package common

import (
	"context"
	"crypto/tls"
	"fmt"
	"github.com/google/uuid"
	"github.com/joho/godotenv"
	"github.com/rs/zerolog/log"
	"hwutil"
	"net/http"
	"strings"
	"telemetry"
)

var (
	Mode                    string // Mode is set in Setup()
	InsecureFakeTokenEnable = false
	InstanceOrganizationID  *uuid.UUID
	shutdownOpenTelemetryFn func() // cleanup function
)

const DevelopmentMode = "development"
const ProductionMode = "production"

type SetupOptions struct {
	auth                   bool
	fakeAuthOnly           bool
	unauthenticatedMethods []string
}

type SetupOption func(*SetupOptions)

// WithAuth enables Authentication for this service
func WithAuth() SetupOption {
	return func(options *SetupOptions) {
		options.auth = true
	}
}

// WithFakeAuthOnly enables auth, only for fake tokens. Useful for tests / offline development.
// Requires DevelopmentMode. Implies WithAuth.
func WithFakeAuthOnly() SetupOption {
	return func(options *SetupOptions) {
		WithAuth()(options)
		options.fakeAuthOnly = true
	}
}

func WithUnauthenticatedMethods(unauthenticatedMethods []string) SetupOption {
	return func(options *SetupOptions) {
		options.unauthenticatedMethods = unauthenticatedMethods
	}
}

var skipAuthForMethods []string

// Setup loads the .env file and sets up logging,
// also sets up tokens when the service requires auth.
func Setup(serviceName, version string, opts ...SetupOption) {
	ctx := context.Background()

	// Collect options
	options := SetupOptions{}
	for _, opt := range opts {
		opt(&options)
	}

	// Load .env file
	dotenvErr := godotenv.Load()

	Mode = hwutil.GetEnvOr("MODE", DevelopmentMode)
	LogLevel := hwutil.GetEnvOr("LOG_LEVEL", "info")

	telemetry.SetupLogging(
		Mode,
		LogLevel,
		serviceName,
		version,
	)

	if dotenvErr == nil {
		log.Info().Msg("successfully loaded .env file")
	}

	shutdownOtel, err := setupOTelSDK(ctx, serviceName, version)
	if err != nil {
		msg := "Could not set up opentelemetry sdk"
		log.Fatal().Err(err).Msg(msg)
	}

	// function is called when the process is instructed to shut down
	shutdownOpenTelemetryFn = func() {
		if err := shutdownOtel(ctx); err != nil {
			log.Error().Err(err).Msg("error in shutting down opentelemetry")
		} else {
			log.Info().Msg("otel shut down without errors")
		}
	}

	if len(version) == 0 && Mode == ProductionMode {
		log.Warn().Msg("Version is empty in production build! Recompile using ldflag '-X main.Version=<version>'")
	}

	if strings.ToLower(hwutil.GetEnvOr("INSECURE_DISABLE_TLS_VERIFY", "false")) == "true" {
		http.DefaultTransport.(*http.Transport).TLSClientConfig = &tls.Config{InsecureSkipVerify: true}
		log.Warn().Msg("InsecureSkipVerify enabled, not verifying certificates!")
	}

	if options.auth {
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
		skipAuthForMethods = options.unauthenticatedMethods

		setupAuth(ctx, options.fakeAuthOnly)
	}
}

// ResolveAddrFromEnv uses the "APP_PORT", "PORT" and "ADDR" env variables to
// build the address that can be used by an HTTP or gRPC server.
// The address will always be in the "(ADDR):PORT" format.
// This is the order of precedent:
// - ADDR env var will be used if set, else
// - ":APP_PORT" will be returned, if APP_PORT env var is set, else
// - ":PORT" will be returned, if PORT env var is set, else
// - ":8080" will be returned
func ResolveAddrFromEnv() string {
	port := hwutil.GetEnvOr("APP_PORT", hwutil.GetEnvOr("PORT", "8080"))
	fallbackAddr := fmt.Sprintf(":%s", port)
	return hwutil.GetEnvOr("ADDR", fallbackAddr)
}

// Shutdown cleans up all resources prepared by Setup() and SetupWithUnauthenticatedMethods()
// It should only ever be called after Setup() or SetupWithUnauthenticatedMethods()!
// StartNewGRPCServer() already calls this function, so there is usually not need to call Shutdown() at all!
// Keep in mind, that this shuts down the otel exporter, new traces won't be processed!
func Shutdown() {
	log.Info().Msg("shutting down otel")
	shutdownOpenTelemetryFn()
}
