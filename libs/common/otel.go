package common

import (
	"context"
	"errors"
	"fmt"
	"hwutil"
	"strings"

	zlog "github.com/rs/zerolog/log"
	"go.opentelemetry.io/otel"
	"go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc"
	"go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp"
	"go.opentelemetry.io/otel/exporters/zipkin"
	"go.opentelemetry.io/otel/propagation"
	"go.opentelemetry.io/otel/sdk/resource"
	"go.opentelemetry.io/otel/sdk/trace"
	semconv "go.opentelemetry.io/otel/semconv/v1.26.0"
)

// DISCLAIMER
// most of this is ripped from the otel documentation, which is APACHE 2.0 licensed
// see the header of [DICE] for the full license notice
// changes to [DICE] are published under the same license as the rest of this repo
//
// [DICE]: https://github.com/open-telemetry/opentelemetry-go/blob/main/example/dice/otel.go

type ShutdownFn = func(context.Context) error

// setupOTelSDK bootstraps the OpenTelemetry pipeline.
// If it does not return an error, make sure to call shutdown for proper cleanup.
func setupOTelSDK(ctx context.Context, serviceName, serviceVersion string) (shutdown ShutdownFn, err error) {
	log := zlog.Ctx(ctx)

	log.Debug().Msg("setting up otel")

	var shutdownFuncs []func(context.Context) error

	// shutdown calls cleanup functions registered via shutdownFuncs.
	// The errors from the calls are joined.
	// Each registered cleanup will be invoked once.
	shutdown = func(ctx context.Context) error {
		var err error
		for _, fn := range shutdownFuncs {
			if fnerr := fn(ctx); fnerr != nil {
				err = fmt.Errorf("%w\n%w", err, fnerr)
			}
		}
		shutdownFuncs = nil
		if err != nil {
			return fmt.Errorf("setupOTelSDK: shutdown error: %w", err)
		}
		return nil
	}

	// in dev environments we might not need a tracing setup, so we allow to skip its setup
	if strings.ToLower(hwutil.GetEnvOr("OTEL_DISABLE", "false")) == "true" {
		log.Info().Msg("skipping otel setup")
		return shutdown, err
	}

	// handleErr calls shutdown for cleanup and makes sure that all errors are returned.
	handleErr := func(inErr error) {
		err = inErr
		if sderr := shutdown(ctx); sderr != nil {
			err = fmt.Errorf("%w\n%w", err, sderr)
		}
	}

	// Set up resource.
	log.Trace().Msg("setting up otel service resource")
	res, err := serviceResource(serviceName, serviceVersion)
	if err != nil {
		handleErr(err)
		return shutdown, err
	}

	// Set up propagator.
	log.Trace().Msg("setting up otel propagator")
	prop := newPropagator()
	otel.SetTextMapPropagator(prop)

	// Set up trace provider. This includes the exporter.
	log.Trace().Msg("setting up otel trace provider")
	tracerProvider, err := newTraceProvider(ctx, res)
	if err != nil {
		handleErr(fmt.Errorf("could not get new trace provider: %w", err))
		return shutdown, err
	}
	shutdownFuncs = append(shutdownFuncs, tracerProvider.Shutdown)
	otel.SetTracerProvider(tracerProvider)

	log.Info().Msg("otel is set up")
	return shutdown, err
}

// serviceResource returns the otel version of "name-version" identification of the service,
// so spans can be traced back to the corresponding service in a tracing dashboard
func serviceResource(serviceName, serviceVersion string) (*resource.Resource, error) {
	return resource.Merge(
		resource.Default(),
		resource.NewWithAttributes(
			semconv.SchemaURL,
			semconv.ServiceName(serviceName),
			semconv.ServiceVersion(serviceVersion),
		))
}

func newPropagator() propagation.TextMapPropagator {
	return propagation.NewCompositeTextMapPropagator(
		propagation.TraceContext{},
		propagation.Baggage{},
	)
}

// newTraceProvider returns a new trace.TraceProvider with a new trace.SpanExporter
// Currently the provider uses the default trace BatchSpanProcessor (one batch every 5 sec)
func newTraceProvider(ctx context.Context, res *resource.Resource) (*trace.TracerProvider, error) {
	traceExporter, err := newTraceExporter(ctx)
	if err != nil {
		return nil, fmt.Errorf("could not get new trace exporter: %w", err)
	}

	traceProvider := trace.NewTracerProvider(
		trace.WithBatcher(traceExporter),
		trace.WithResource(res),
	)
	return traceProvider, nil
}

// newTraceExporter returns a new trace.SpanExporter based on the OTEL_TRACE_EXPORTER env variable
// A SpanExporter pushes traces to a tracing database. For more configuration see the corresponding documentation.
func newTraceExporter(ctx context.Context) (trace.SpanExporter, error) {
	switch strings.ToLower(hwutil.GetEnvOr("OTEL_TRACE_EXPORTER", "otlp")) {
	case "zipkin":
		// configures otel exporter using the OTEL_EXPORTER_ZIPKIN_ENDPOINT environment variable,
		// which defaults to "http://localhost:9411/api/v2/spans"
		return zipkin.New("")
	case "otlp":
		// configures otel exporter using environment
		// more info: https://pkg.go.dev/go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc@v1.21.0
		return otlptracegrpc.New(ctx)
	case "otlp_http":
		// configures otel exporter using environment
		// more info: https://pkg.go.dev/go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp@v1.21.0
		return otlptracehttp.New(ctx)
	default:
		return nil, errors.New("OTEL_TRACE_EXPORTER invalid")
	}
}
