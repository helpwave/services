package common

import (
	"context"
	"encoding/base64"
	"github.com/dapr/dapr/pkg/proto/runtime/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/google/uuid"
	grpc_middleware "github.com/grpc-ecosystem/go-grpc-middleware"
	grpc_auth "github.com/grpc-ecosystem/go-grpc-middleware/auth"
	"github.com/grpc-ecosystem/go-grpc-middleware/util/metautils"
	"github.com/rs/zerolog"
	zlog "github.com/rs/zerolog/log"
	"go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/reflection"
	"google.golang.org/grpc/status"
	"hwutil"
	"logging"
	"net"
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
func StartNewGRPCServer(addr string, registerServerHook func(*daprd.Server)) {
	// middlewares
	loggingInterceptor := loggingUnaryInterceptor
	authInterceptor := authUnaryInterceptor
	validateInterceptor := validateUnaryInterceptor
	chain := grpc_middleware.ChainUnaryServer(loggingInterceptor, authInterceptor, validateInterceptor, handlerSpanInterceptor)
	interceptorChainServerOption := grpc.UnaryInterceptor(chain)

	otelServerOption := grpc.StatsHandler(otelgrpc.NewServerHandler())

	listener, err := net.Listen("tcp", addr)
	if err != nil {
		zlog.Fatal().Str("addr", addr).Err(err).Send()
	}

	// dapr/grpc service
	service := daprd.NewServiceWithListener(listener, interceptorChainServerOption, otelServerOption).(*daprd.Server)
	server := service.GrpcServer()

	if err := service.AddHealthCheckHandler("", func(ctx context.Context) error {
		// We need to implement this. Just return nil == everything OK
		return nil
	}); err != nil {
		zlog.Fatal().Err(err).Send()
	}

	registerServerHook(service)

	if Mode == DevelopmentMode {
		reflection.Register(server)
		zlog.Warn().Msg("grpc reflection enabled")
	}

	interrupted, err := hwutil.RunUntilInterrupted(context.Background(), func() error {
		zlog.Info().Str("addr", addr).Msg("starting grpc service")
		return server.Serve(listener)
	})

	if interrupted {
		zlog.Warn().Msg("SIGINT received, shutting down")
	} else {
		zlog.Error().Str("addr", addr).Err(err).Msg("could not start grpc server")
	}

	// Shut down service
	zlog.Info().Msg("shutting down dapr/grpc service")
	if err := service.GracefulStop(); err != nil {
		zlog.Error().Err(err).Msg("failed shutting down service, it is what it is")
	} else {
		zlog.Info().Msg("grpc server shut down")
	}

	// Shut down Setup()'s resources
	Shutdown()
}

func authUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	ctx, span := StartSpan(ctx, "auth_interceptor")
	defer span.End()

	if isUnaryRPCForDaprInternal(info) || hwutil.Contains(skipAuthForMethods, info.FullMethod) {
		zlog.Debug().
			Str("method", info.FullMethod).
			Msg("skipping auth func, RPC targeted at some internal gRPC service or method")
		return next(ctx, req)
	}

	ctx, err := authFunc(ctx)
	if err != nil {
		return nil, err
	}

	ctx, err = handleOrganizationIDForAuthFunc(ctx)
	if err != nil {
		return nil, err
	}

	return next(ctx, req)
}

// isUnaryRPCForDaprInternal will resolve to true when the incoming RPC is targeted to some Dapr internal "sidecar -> app" gRPC service
func isUnaryRPCForDaprInternal(info *grpc.UnaryServerInfo) bool {
	_, isAppCallbackServer := info.Server.(runtime.AppCallbackServer)
	_, isAppCallbackHealthCheckServer := info.Server.(runtime.AppCallbackHealthCheckServer)
	return isAppCallbackServer || isAppCallbackHealthCheckServer
}

func authFunc(ctx context.Context) (context.Context, error) {
	if !isAuthSetUp() {
		zlog.Ctx(ctx).Trace().Msg("skipping auth middleware, as auth is not set up")
		// skip injecting claims into context
		return ctx, nil
	}

	// get token from gRPC metadata
	token, err := grpc_auth.AuthFromMD(ctx, "bearer")

	if err != nil {
		zlog.Ctx(ctx).Trace().Err(err).Msg("no valid auth header found")
		return nil, status.Errorf(codes.Unauthenticated, "no auth token: %v", err)
	}

	// verify token -> if fakeToken is used claims will be nil and we will get an error
	claims, err := VerifyIDToken(token)

	// If InsecureFakeTokenEnable is true and Mode is development,
	// we accept unverified Base64 encoded json structure in the schema of IDTokenClaims as well.
	// This allows the client to pass self-defined "Fake ID Token Claims" without going through our auth provider.
	// ONLY FOR NON-PUBLIC DEVELOPMENT AND STAGING ENVIRONMENTS
	if claims == nil && err != nil && InsecureFakeTokenEnable {
		zlog.Warn().Msg("could not verify token, falling back to fake token instead")
		claims, err = VerifyFakeToken(token)
	}

	if err != nil {
		return nil, status.Errorf(codes.Unauthenticated, "invalid auth token: %v", err)
	}

	ctx = context.WithValue(ctx, claimsKey{}, claims)

	// parse and cache userID
	userID, err := uuid.Parse(claims.Sub)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "invalid userID")
	}

	ctx = context.WithValue(ctx, userIDKey{}, userID)

	// Append userID to the logger
	log := zlog.Ctx(ctx).With().Str("userID", userID.String()).Logger()
	ctx = log.WithContext(ctx)

	return ctx, nil
}

// handleOrganizationIDForAuthFunc is a part of our auth middleware.
// The claims are signed. Therefore, we can match the user provided
// organizationID from the headers against the organizationIDs inside the claim.
func handleOrganizationIDForAuthFunc(ctx context.Context) (context.Context, error) {
	log := zlog.Ctx(ctx)
	organizationIDStr, err := OrganizationIDFromMD(ctx)

	var organizationID uuid.UUID
	if err == nil {
		// organizationID in header, using header
		organizationID, err = uuid.Parse(organizationIDStr)
		if err != nil {
			return nil, status.Errorf(codes.Internal, "invalid organizationID")
		}
	} else if InstanceOrganizationID != nil {
		// no organizationID in header but in envs, using env
		log.Trace().Msg("no valid organization header found, falling back to environment organization id")
		organizationID = *InstanceOrganizationID
	} else {
		// no organizationID in header or env, error
		log.Trace().Err(err).Msg("no valid organization header found")
		return nil, err
	}

	claims, err := GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	// If InsecureFakeTokenEnable is true,
	// we accept all organizations that the fake id token presents to us.
	// ONLY FOR NON-PUBLIC DEVELOPMENT AND STAGING ENVIRONMENTS
	if !hwutil.Contains(claims.Organizations, organizationID) && !InsecureFakeTokenEnable {
		log.Info().Str("organizationID", organizationID.String()).Msg("organization in header was not part of claims")
		return nil, status.Errorf(codes.Unauthenticated, "no access to this organization")
	}

	ctx = context.WithValue(ctx, organizationIDKey{}, organizationID)

	// Append organizationID to the logger
	loggerWithOrganizationID := zlog.Ctx(ctx).With().Str("organizationID", organizationID.String()).Logger()
	return loggerWithOrganizationID.WithContext(ctx), nil
}

// VerifyFakeToken accepts a Base64 encoded json structure with the schema of IDTokenClaims
func VerifyFakeToken(token string) (*IDTokenClaims, error) {
	plainToken, err := base64.StdEncoding.DecodeString(token)
	if err != nil {
		return nil, err
	}

	claims := IDTokenClaims{}
	if err := hwutil.ParseValidJson(plainToken, &claims); err != nil {
		return nil, err
	}

	if err = claims.AsExpected(); err != nil {
		return nil, err
	}

	zlog.Warn().Interface("claims", claims).Msg("fake token was verified")

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

// handlerSpanInterceptor opens and closes a span around the next in the chain
// it should only be used as the last element in the interceptor chain before the handler
func handlerSpanInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	ctx, span := StartSpan(ctx, "handler")
	res, err := next(ctx, req)
	if err != nil {
		span.SetStatus(1, err.Error())
	}
	span.End()
	return res, err
}

func validateUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	ctx, span := StartSpan(ctx, "validate_interceptor")
	defer span.End()

	if err := hwutil.Validate(req); err != nil {
		return nil, status.Errorf(codes.InvalidArgument, err.Error())
	}
	return next(ctx, req)
}

func loggingUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	ctx, span := StartSpan(ctx, "logging_interceptor")
	defer span.End()

	metadata := metautils.ExtractIncoming(ctx)

	// Add request information
	builder := zlog.
		With().
		Str("handler", info.FullMethod).
		Str("span", metadata.Get("traceparent")) // TODO: grpc-trace-bin header

	omitBody := false

	// additional information for pub/sub events
	if req, ok := req.(*runtime.TopicEventRequest); ok {
		if traceparent, ok := req.GetExtensions().Fields["traceparent"]; ok {
			builder = builder.Str("span", traceparent.GetStringValue())
		}
		builder = builder.Str("eventID", req.Id)

		// at this point in the chain we have no control about what data may be logged for events,
		// so we can't log anything for privacy and/or legal reasons, the event handler can log though
		omitBody = true
	}

	// this is the logger that should be used for this request
	log := builder.Logger()
	ctx = log.WithContext(ctx)

	log.Trace().Interface("metadata", redactMetadata(metadata)).Send()

	logBody := req

	// custom map instead, if implemented
	if loggable, ok := req.(logging.Loggable); ok {
		logBody = loggable.LoggableFields()
	}
	if !omitBody {
		log.Debug().Interface("body", logBody).Send()
	}

	// Call next in chain
	res, err := next(ctx, req)

	// We are back! Now evaluate response

	if err != nil {
		statusError := status.Convert(err)
		code := statusError.Code().String()
		message := statusError.Message()
		details := statusError.Details()

		log.
			WithLevel(resolveLogLevelForError(err)).
			Err(err).
			Str("code", code).
			Interface("details", details).
			Msg(message)
	} else {
		log.
			Info().
			Str("code", codes.OK.String()).
			Msg("Ok")
	}

	// pass results back up the interceptor chain
	return res, err
}

// resolveLogLevelForError is primary used to raise the log level on specific errors
func resolveLogLevelForError(err error) zerolog.Level {
	statusError := status.Convert(err)
	if statusError.Code() == codes.Internal {
		return zerolog.ErrorLevel
	}

	return zerolog.WarnLevel
}

func redactMetadata(m metautils.NiceMD) metautils.NiceMD {
	if arr := m["authorization"]; arr != nil {
		for i := range arr {
			arr[i] = logging.OmitAll(arr[i])
		}
	}
	return m
}

// OrganizationIDFromMD retrieves the user defined organizationID
// from the metadata of the request
func OrganizationIDFromMD(ctx context.Context) (string, error) {
	val := metautils.ExtractIncoming(ctx).Get("X-Organization")
	if val == "" {
		return "", status.Errorf(codes.Unauthenticated, "organization header missing")
	}
	return val, nil
}
