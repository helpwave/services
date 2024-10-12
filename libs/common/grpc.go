package common

import (
	"common/hwgrpc"
	"context"
	"encoding/base64"
	"errors"
	"fmt"
	"github.com/dapr/dapr/pkg/proto/runtime/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	//nolint:staticcheck
	"github.com/google/uuid"
	prometheusGrpcProvider "github.com/grpc-ecosystem/go-grpc-middleware/providers/prometheus"
	"github.com/grpc-ecosystem/go-grpc-middleware/v2/interceptors/auth"
	"github.com/grpc-ecosystem/go-grpc-middleware/v2/metadata"
	zlog "github.com/rs/zerolog/log"
	"go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/reflection"
	"google.golang.org/grpc/status"
	"hwutil"
	"net"
	"telemetry"
)

type claimsKey struct{}

type userIDKey struct{}
type organizationIDKey struct{}

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
func StartNewGRPCServer(ctx context.Context, addr string, registerServerHook func(*daprd.Server)) {
	log := zlog.Ctx(ctx)

	listener, err := net.Listen("tcp", addr)
	if err != nil {
		log.Fatal().Str("addr", addr).Err(err).Send()
	}

	// dapr/grpc service
	service := daprd.NewServiceWithListener(listener, DefaultServerOptions()...).(*daprd.Server)
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
func DefaultUnaryInterceptors(metrics *prometheusGrpcProvider.ServerMetrics) []grpc.UnaryServerInterceptor {
	return []grpc.UnaryServerInterceptor{
		metrics.UnaryServerInterceptor(),
		hwgrpc.UnaryLoggingInterceptor,
		hwgrpc.UnaryErrorQualityControlInterceptor,
		hwgrpc.UnaryLocaleInterceptor,
		authUnaryInterceptor,
		hwgrpc.UnaryValidateInterceptor,
		hwgrpc.UnarySpanInterceptor,
	}
}

// DefaultStreamInterceptors returns the slice of default interceptors for stream gRPC calls
//
//	chain := grpc.ChainStreamInterceptor(common.DefaultStreamInterceptors()...)
func DefaultStreamInterceptors(metrics *prometheusGrpcProvider.ServerMetrics) []grpc.StreamServerInterceptor {
	return []grpc.StreamServerInterceptor{
		metrics.StreamServerInterceptor(),
		hwgrpc.StreamLoggingInterceptor,
		hwgrpc.StreamErrorQualityControlInterceptor,
		hwgrpc.StreamLocaleInterceptor,
		// authUnaryInterceptor,
		hwgrpc.StreamValidateInterceptor,
		hwgrpc.StreamSpanInterceptor,
	}
}

func DefaultServerOptions() []grpc.ServerOption {
	// register new metrics collector with prometheus
	metrics := prometheusGrpcProvider.NewServerMetrics()
	telemetry.PrometheusRegistry().MustRegister(metrics)

	unaryInterceptorChain := grpc.ChainUnaryInterceptor(DefaultUnaryInterceptors(metrics)...)
	streamInterceptorChain := grpc.ChainStreamInterceptor(DefaultStreamInterceptors(metrics)...)
	statsHandler := grpc.StatsHandler(otelgrpc.NewServerHandler())

	return []grpc.ServerOption{unaryInterceptorChain, streamInterceptorChain, statsHandler}
}

func authUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	ctx, span, log := telemetry.StartSpan(ctx, "auth_interceptor")
	defer span.End()

	if isUnaryRPCForDaprInternal(info) || hwutil.Contains(skipAuthForMethods, info.FullMethod) {
		log.Debug().
			Str("method", info.FullMethod).
			Msg("skipping auth func, RPC targeted at some internal gRPC service or method")
		return next(ctx, req)
	}

	ctx, err := authFunc(ctx)
	if err != nil {
		return nil, fmt.Errorf("authUnaryInterceptor: authFn failed: %w", err)
	}

	if !hwutil.Contains(skipOrganizationAuthForMethods, info.FullMethod) {
		ctx, err = authFuncOrganization(ctx)
		if err != nil {
			return nil, fmt.Errorf("authUnaryInterceptor: authFn failed: %w", err)
		}
	}

	return next(ctx, req)
}

// isUnaryRPCForDaprInternal will resolve to true when the incoming RPC is targeted to some Dapr internal "sidecar -> app" gRPC service
func isUnaryRPCForDaprInternal(info *grpc.UnaryServerInfo) bool {
	_, isAppCallbackServer := info.Server.(runtime.AppCallbackServer)
	_, isAppCallbackHealthCheckServer := info.Server.(runtime.AppCallbackHealthCheckServer)
	return isAppCallbackServer || isAppCallbackHealthCheckServer
}

// authFunc is the main authentication middleware. It validates the OIDC token
// parsed and injects the OIDC claims for later usage
func authFunc(ctx context.Context) (context.Context, error) {
	log := zlog.Ctx(ctx)

	if !isAuthSetUp() && !onlyFakeAuthEnabled {
		log.Trace().Msg("skipping auth middleware, as auth is not set up")
		// skip injecting claims into context
		return ctx, nil
	}

	// get token from gRPC metadata
	token, err := auth.AuthFromMD(ctx, "bearer")

	if err != nil {
		log.Trace().Err(err).Msg("no valid auth header found")
		return nil, status.Errorf(codes.Unauthenticated, "no auth token: %v", err)
	}

	var claims *IDTokenClaims

	if onlyFakeAuthEnabled {
		log.Warn().
			Msg("only fake auth is enabled! no attempt verifying token. falling back to fake token instead")
		claims, err = VerifyFakeToken(ctx, token)
	} else {
		// verify token -> if fakeToken is used claims will be nil and we will get an error
		claims, err = VerifyIDToken(ctx, token)
	}

	// If InsecureFakeTokenEnable is true and Mode is development,
	// we accept unverified Base64 encoded json structure in the schema of IDTokenClaims as well.
	// This allows the client to pass self-defined "Fake ID Token Claims" without going through our auth provider.
	// ONLY FOR NON-PUBLIC DEVELOPMENT AND STAGING ENVIRONMENTS
	if claims == nil && err != nil && InsecureFakeTokenEnable {
		log.Warn().Msg("could not verify token, falling back to fake token instead")
		claims, err = VerifyFakeToken(ctx, token)
	}

	if err != nil || claims == nil {
		return nil, status.Errorf(codes.Unauthenticated, "invalid auth token: %v", err)
	}

	// attach claims to the context, so we can get it in a handler using GetAuthClaims()
	ctx = context.WithValue(ctx, claimsKey{}, claims)

	// parse userID
	userID, err := uuid.Parse(claims.Sub)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "invalid userID")
	}

	// attach userID to the context, so we can get it in a handler using GetUserID()
	ctx = ContextWithUserID(ctx, userID)

	// attach userID to the current span (should be the auth interceptor span)
	telemetry.SetSpanStr(ctx, "user.id", userID.String())

	// Append userID to the logger and attach it to the context
	ctx = log.With().
		Ctx(ctx).
		Str("userID", userID.String()).
		Logger().
		WithContext(ctx)

	return ctx, nil
}

// authFuncOrganization parses and injects the organization id of the OIDC claims into the current context
// This is a separate function to allow endpoints to not fail when an organization id is not provided
func authFuncOrganization(ctx context.Context) (context.Context, error) {
	log := zlog.Ctx(ctx)

	claims, err := GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	if len(claims.Organization.Id) == 0 {
		return ctx, errors.New("organization.id missing in id token")
	}

	// parse organizationID
	organizationID, err := uuid.Parse(claims.Organization.Id)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "invalid organizationID")
	}

	// attach organizationID to the context, so we can get it in a handler using GetOrganizationID()
	ctx = ContextWithOrganizationID(ctx, organizationID)

	// attach organizationID to the current span
	telemetry.SetSpanStr(ctx, "user.organization.id", organizationID.String())

	// Append organizationID to the logger and attach it to the context
	ctx = log.With().
		Ctx(ctx).
		Str("organizationID", organizationID.String()).
		Logger().
		WithContext(ctx)

	return ctx, nil
}

func ContextWithUserID(ctx context.Context, userID uuid.UUID) context.Context {
	return context.WithValue(ctx, userIDKey{}, userID)
}

func ContextWithOrganizationID(ctx context.Context, organizationID uuid.UUID) context.Context {
	return context.WithValue(ctx, organizationIDKey{}, organizationID)
}

// VerifyFakeToken accepts a Base64 encoded json structure with the schema of IDTokenClaims
func VerifyFakeToken(ctx context.Context, token string) (*IDTokenClaims, error) {
	log := zlog.Ctx(ctx)

	plainToken, err := base64.StdEncoding.DecodeString(token)
	if err != nil {
		return nil, fmt.Errorf("VerifyFakeToken: cant decode fake token: %w", err)
	}

	claims := IDTokenClaims{}
	if err := hwutil.ParseValidJson(plainToken, &claims); err != nil {
		return nil, fmt.Errorf("VerifyFakeToken: cant parse json: %w", err)
	}

	if err = claims.AsExpected(); err != nil {
		return nil, fmt.Errorf("VerifyFakeToken: claims not as expected: %w", err)
	}

	log.Warn().Interface("claims", claims).Msg("fake token was verified")

	return &claims, err
}

// GetAuthClaims extracts AccessTokenClaims from the request context, if they exist
// They are checked to be as expected and the token it was extracted from was valid.
// If an error is returned, no access token was extracted for this request.
// This either means no token was supplied by the client, or Auth was not set up in Setup.
func GetAuthClaims(ctx context.Context) (*IDTokenClaims, error) {
	res, ok := ctx.Value(claimsKey{}).(*IDTokenClaims)
	if !ok || res == nil {
		return nil, status.Error(codes.Unauthenticated, "authentication required")
	} else {
		return res, nil
	}
}

func GetUserID(ctx context.Context) (uuid.UUID, error) {
	res, ok := ctx.Value(userIDKey{}).(uuid.UUID)
	if !ok {
		return uuid.UUID{}, status.Error(codes.Unauthenticated, "userID not in context, set up auth")
	} else {
		return res, nil
	}
}

func GetOrganizationID(ctx context.Context) (uuid.UUID, error) {
	res, ok := ctx.Value(organizationIDKey{}).(uuid.UUID)
	if !ok {
		return uuid.UUID{}, status.Error(codes.Internal, "organizationID not in context, set up auth")
	} else {
		return res, nil
	}
}

// OrganizationIDFromMD retrieves the user defined organizationID
// from the metadata of the request
func OrganizationIDFromMD(ctx context.Context) (string, error) {
	val := metadata.ExtractIncoming(ctx).Get("X-Organization")
	if val == "" {
		return "", status.Errorf(codes.Unauthenticated, "organization header missing")
	}
	return val, nil
}
