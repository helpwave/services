package common

import (
	"context"
	"crypto/tls"
	"hwutil"
	"net/http"
	"os"
	"strings"
	"telemetry"
	"time"

	"common/auth"

	"github.com/joho/godotenv"
	"github.com/rs/zerolog/log"
)

var (
	Mode string // Mode is set in Setup()

	shutdownOpenTelemetryFn func() // cleanup function
	contextCancel           func() // Setup() yields the "root" context, which can be canceled using this function
)

const (
	DevelopmentMode = "development"
	ProductionMode  = "production"
)

type SetupOptions struct {
	auth                   bool
	fakeAuthOnly           bool
	unauthenticatedMethods []string
	nonOrganizationMethods []string
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

// WithUnauthenticatedMethod accept the FullMethod of a gRPC method to disable authentication on this explicit method
// https://github.com/grpc/grpc-go/blob/f17ea7d68c0942d8160e77329cc3814b0dd2b64f/interceptor.go#L71
func WithUnauthenticatedMethod(unauthenticatedMethod string) SetupOption {
	return func(options *SetupOptions) {
		options.unauthenticatedMethods = append(options.unauthenticatedMethods, unauthenticatedMethod)
	}
}

// WithNonOrganizationMethod accept the FullMethod of a gRPC method to
// disable our organization logic on this explicit method
// https://github.com/grpc/grpc-go/blob/f17ea7d68c0942d8160e77329cc3814b0dd2b64f/interceptor.go#L71
func WithNonOrganizationMethod(nonOrganizationMethod string) SetupOption {
	return func(options *SetupOptions) {
		options.nonOrganizationMethods = append(options.nonOrganizationMethods, nonOrganizationMethod)
	}
}

var (
	skipAuthForMethods             []string
	skipOrganizationAuthForMethods []string
)

// Setup loads the .env file and sets up logging,
// also sets up tokens when the service requires auth.
func Setup(serviceName, version string, opts ...SetupOption) context.Context {
	ctx, cancel := context.WithCancel(context.Background())
	contextCancel = cancel

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

	telemetry.SetupMetrics(ctx, Shutdown)

	if len(version) == 0 && Mode == ProductionMode {
		log.Warn().Msg("Version is empty in production build! Recompile using ldflag '-X main.Version=<version>'")
	}

	if strings.ToLower(hwutil.GetEnvOr("INSECURE_DISABLE_TLS_VERIFY", "false")) == "true" {
		transport, ok := http.DefaultTransport.(*http.Transport)
		if !ok {
			log.Fatal().
				Type("http.DefaultTransport.(type)", http.DefaultTransport).
				Msg("http.DefaultTransport is not a *http.Transport")
		}
		transport.TLSClientConfig = &tls.Config{InsecureSkipVerify: true} //nolint:gosec
		log.Warn().Msg("InsecureSkipVerify enabled, not verifying certificates!")
	}

	if options.auth {
		insecureFakeTokenEnable := false
		if strings.ToLower(hwutil.GetEnvOr("INSECURE_FAKE_TOKEN_ENABLE", "false")) == "true" {
			insecureFakeTokenEnable = true
			log.Error().Msg("INSECURE_FAKE_TOKEN_ENABLE is set to true, accepting fake tokens")
		}

		// Only modify skipAuthForMethods and skipOrganizationAuthForMethods once on startup
		skipAuthForMethods = options.unauthenticatedMethods
		skipOrganizationAuthForMethods = options.nonOrganizationMethods

		auth.SetupAuth(ctx, options.fakeAuthOnly, insecureFakeTokenEnable)
	}

	return ctx
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
	fallbackAddr := ":" + port
	return hwutil.GetEnvOr("ADDR", fallbackAddr)
}

// Shutdown cleans up all resources prepared by Setup() and SetupWithUnauthenticatedMethods()
// It should only ever be called after Setup() or SetupWithUnauthenticatedMethods()!
// StartNewGRPCServer() already calls this function, so there is usually not need to call Shutdown() at all!
// Keep in mind, that this shuts down the otel exporter, new traces won't be processed!
func Shutdown(err error) {
	if shutdownOpenTelemetryFn != nil {
		log.Info().Msg("shutting down otel")
		shutdownOpenTelemetryFn()
	}

	if contextCancel != nil {
		log.Info().Msg("canceling main context")
		contextCancel()
	}

	time.Sleep(time.Second * 2) // give other resources some time to react to closed context (not sure if needed)

	exitCode := 0
	if err != nil {
		exitCode = 1
	}
	os.Exit(exitCode)
}
