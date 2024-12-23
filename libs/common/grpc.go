package common

import (
	"context"
	"hwdb"
	"hwutil"
	"net"
	"telemetry"

	"github.com/prometheus/client_golang/prometheus"

	"common/auth"
	"common/hwgrpc"

	"github.com/dapr/dapr/pkg/proto/runtime/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	prometheusGrpcProvider "github.com/grpc-ecosystem/go-grpc-middleware/providers/prometheus"
	zlog "github.com/rs/zerolog/log"
	"go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

// StartNewGRPCServer creates and starts a new GRPC server on addr or panics.
// Using registerServerHook you are able to register your
// service server implementation with this grpc server.
// It will register a SIGINT trap and clean up everything from Setup() using Shutdown() and this function
// Afterward, code execution is handed back to you, where you can do additional clean up,
// e.g. closing the database pool.
//
// Example:
//
//	common.StartNewGRPCServer(addr, func(server *daprd.Server) {
//		grpcServer := server.GrpcServer()
//		api.RegisterMyServiceServer(grpcServer, &myServiceServer{})
//	})
//	// cleanup after yourself here
func StartNewGRPCServer(ctx context.Context, addr string, registerServerHook func(*daprd.Server), opts ...DefaultServerOptionsOpt) {
	log := zlog.Ctx(ctx)

	listener, err := net.Listen("tcp", addr)
	if err != nil {
		log.Fatal().Str("addr", addr).Err(err).Send()
	}

	// dapr/grpc service
	service, ok := daprd.NewServiceWithListener(listener, DefaultServerOptions(opts...)...).(*daprd.Server)
	if !ok {
		log.Fatal().Msg("dapr service listener is not a *daprd.Server")
	}
	server := service.GrpcServer()

	if err := service.AddHealthCheckHandler("", func(ctx context.Context) error {
		// We need to implement this. Just return nil == everything OK
		return nil
	}); err != nil {
		log.Fatal().Err(err).Send()
	}

	registerServerHook(service)

	if Mode == DevelopmentMode {
		reflection.Register(server)
		log.Warn().Msg("gRPC reflection enabled")
	}

	interrupted, err := hwutil.RunUntilInterrupted(ctx, func() error {
		log.Info().Str("addr", addr).Msg("starting grpc service")
		return server.Serve(listener)
	})

	if interrupted {
		log.Warn().Msg("SIGINT received, shutting down")
	} else {
		log.Error().Str("addr", addr).Err(err).Msg("could not start grpc server")
	}

	// Shut down service
	log.Info().Msg("shutting down dapr/grpc service")
	if err := service.GracefulStop(); err != nil {
		log.Error().Err(err).Msg("failed shutting down service, it is what it is")
	} else {
		log.Info().Msg("grpc server shut down")
	}

	// Shut down Setup()'s resources
	Shutdown(nil)
}

// DefaultUnaryInterceptors returns the slice of default interceptors for unary gRPC calls
//
//	chain := grpc.ChainUnaryInterceptor(common.DefaultUnaryInterceptors()...)
func DefaultUnaryInterceptors(opt DefaultServerOptionsOpt) []grpc.UnaryServerInterceptor {
	return []grpc.UnaryServerInterceptor{
		hwgrpc.UnaryPanicRecoverInterceptor(opt.prometheusRegistry),
		hwgrpc.UnaryLoggingInterceptor,
		hwgrpc.UnaryErrorQualityControlInterceptor,
		hwgrpc.UnaryLocaleInterceptor,
		hwgrpc.UnaryDBInterceptor(opt.db),
		defaultUnaryAuthInterceptor,
		defaultUnaryOrganizationInterceptor,
		hwgrpc.UnaryValidateInterceptor,
		hwgrpc.UnarySpanInterceptor,
	}
}

// DefaultStreamInterceptors returns the slice of default interceptors for stream gRPC calls
//
//	chain := grpc.ChainStreamInterceptor(common.DefaultStreamInterceptors()...)
func DefaultStreamInterceptors(opt DefaultServerOptionsOpt) []grpc.StreamServerInterceptor {
	return []grpc.StreamServerInterceptor{
		hwgrpc.StreamPanicRecoverInterceptor(opt.prometheusRegistry),
		hwgrpc.StreamLoggingInterceptor,
		hwgrpc.StreamErrorQualityControlInterceptor,
		hwgrpc.StreamLocaleInterceptor,
		hwgrpc.StreamDBInterceptor(opt.db),
		defaultStreamAuthInterceptor,
		defaultStreamOrganizationInterceptor,
		hwgrpc.StreamValidateInterceptor,
		hwgrpc.StreamSpanInterceptor,
	}
}

type DefaultServerOptionsOpt struct {
	db                 hwdb.DBTX
	prometheusRegistry *prometheus.Registry
}

func WithDB(db hwdb.DBTX) DefaultServerOptionsOpt {
	return DefaultServerOptionsOpt{db: db}
}

func WithPrometheusRegistry(registry *prometheus.Registry) DefaultServerOptionsOpt {
	return DefaultServerOptionsOpt{prometheusRegistry: registry}
}

func mergeDefaultServerOptionsOpts(opts []DefaultServerOptionsOpt) DefaultServerOptionsOpt {
	res := DefaultServerOptionsOpt{}
	for _, opt := range opts {
		if opt.db != nil {
			res.db = opt.db
		}
		if opt.prometheusRegistry != nil {
			res.prometheusRegistry = opt.prometheusRegistry
		}
	}
	return res
}

func DefaultServerOptions(opts ...DefaultServerOptionsOpt) []grpc.ServerOption {
	opt := mergeDefaultServerOptionsOpts(opts)

	// default interceptors
	unaryInterceptors := DefaultUnaryInterceptors(opt)
	streamInterceptors := DefaultStreamInterceptors(opt)

	// register new metrics collector with prometheus, if registry provided
	if promRegistry := opt.prometheusRegistry; promRegistry != nil {
		metrics := prometheusGrpcProvider.NewServerMetrics()
		promRegistry.MustRegister(metrics)

		// prepend metrics interceptor
		unaryInterceptors = hwutil.Prepend(metrics.UnaryServerInterceptor(), unaryInterceptors)
		streamInterceptors = hwutil.Prepend(metrics.StreamServerInterceptor(), streamInterceptors)
	}

	// create chains
	unaryInterceptorChain := grpc.ChainUnaryInterceptor(unaryInterceptors...)
	streamInterceptorChain := grpc.ChainStreamInterceptor(streamInterceptors...)

	// otel stats handler
	statsHandler := grpc.StatsHandler(otelgrpc.NewServerHandler())

	return []grpc.ServerOption{unaryInterceptorChain, streamInterceptorChain, statsHandler}
}

// isUnaryRPCForDaprInternal will resolve to true when the incoming RPC is targeted to
// some Dapr internal "sidecar -> app" gRPC service
func isUnaryRPCForDaprInternal(info *grpc.UnaryServerInfo) bool {
	_, isAppCallbackServer := info.Server.(runtime.AppCallbackServer)
	_, isAppCallbackHealthCheckServer := info.Server.(runtime.AppCallbackHealthCheckServer)
	return isAppCallbackServer || isAppCallbackHealthCheckServer
}

func defaultUnaryAuthInterceptor(
	ctx context.Context,
	req any,
	info *grpc.UnaryServerInfo,
	next grpc.UnaryHandler,
) (any, error) {
	ctx, span, log := telemetry.StartSpan(ctx, "common.defaultUnaryAuthInterceptor")
	defer span.End()

	if isUnaryRPCForDaprInternal(info) || hwutil.Contains(skipAuthForMethods, info.FullMethod) {
		log.Debug().
			Str("method", info.FullMethod).
			Msg("skipping auth func, RPC targeted at some internal gRPC service or method")
		return next(ctx, req)
	}

	// TODO: Only add authInterceptor when required
	if !auth.IsAuthSetUp() && !auth.IsOnlyFakeAuthEnabled() {
		log.Trace().Msg("skipping auth middleware, as auth is not set up")
		// skip injecting claims into context
		return next(ctx, req)
	}

	return hwgrpc.UnaryAuthInterceptor(ctx, req, info, next)
}

func defaultStreamAuthInterceptor(
	req any,
	stream grpc.ServerStream,
	info *grpc.StreamServerInfo,
	next grpc.StreamHandler,
) error {
	_, span, log := telemetry.StartSpan(stream.Context(), "common.defaultStreamAuthInterceptor")
	defer span.End()

	// TODO: Only add authInterceptor when required
	if !auth.IsAuthSetUp() && !auth.IsOnlyFakeAuthEnabled() {
		log.Trace().Msg("skipping auth middleware, as auth is not set up")
		// skip injecting claims into context
		return next(req, stream)
	}

	return hwgrpc.StreamAuthInterceptor(req, stream, info, next)
}

func defaultUnaryOrganizationInterceptor(
	ctx context.Context,
	req any,
	info *grpc.UnaryServerInfo,
	next grpc.UnaryHandler,
) (any, error) {
	ctx, span, log := telemetry.StartSpan(ctx, "common.defaultUnaryOrganizationInterceptor")
	defer span.End()

	if hwutil.Contains(skipOrganizationAuthForMethods, info.FullMethod) {
		return next(ctx, req)
	}

	// TODO: Only add authInterceptor when required
	if !auth.IsAuthSetUp() && !auth.IsOnlyFakeAuthEnabled() {
		log.Trace().Msg("skipping auth middleware, as auth is not set up")
		// skip injecting claims into context
		return next(ctx, req)
	}

	return hwgrpc.UnaryOrganizationInterceptor(ctx, req, info, next)
}

func defaultStreamOrganizationInterceptor(
	req any,
	stream grpc.ServerStream,
	info *grpc.StreamServerInfo,
	next grpc.StreamHandler,
) error {
	_, span, log := telemetry.StartSpan(stream.Context(), "common.defaultStreamOrganizationInterceptor")
	defer span.End()

	// TODO: Only add authInterceptor when required
	if !auth.IsAuthSetUp() && !auth.IsOnlyFakeAuthEnabled() {
		log.Trace().Msg("skipping auth middleware, as auth is not set up")
		// skip injecting claims into context
		return next(req, stream)
	}

	return hwgrpc.StreamOrganizationInterceptor(req, stream, info, next)
}
