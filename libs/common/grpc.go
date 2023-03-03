package common

import (
	"context"
	"github.com/dapr/go-sdk/dapr/proto/runtime/v1"
	"github.com/grpc-ecosystem/go-grpc-middleware/util/metautils"
	"github.com/rs/zerolog"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/reflection"
	"google.golang.org/grpc/status"
	"hwutil"
	"logging"
	"net"

	daprd "github.com/dapr/go-sdk/service/grpc"
	grpc_middleware "github.com/grpc-ecosystem/go-grpc-middleware"
	grpc_auth "github.com/grpc-ecosystem/go-grpc-middleware/auth"
	zlog "github.com/rs/zerolog/log"
)

type claimsKeyT struct{}

var claimsKey = claimsKeyT{}

// StartNewGRPCServer creates and starts a new GRPC server on addr or panics.
// Using registerServerHook you are able to register your
// service server implementation with this grpc server.
//
// Example:
//
//	common.StartNewGRPCServer(addr, func(server *daprd.Server) {
//		grpcServer := server.GrpcServer()
//		api.RegisterMyServiceServer(grpcServer, &myServiceServer{})
//	})
func StartNewGRPCServer(addr string, registerServerHook func(*daprd.Server)) {
	// middlewares
	loggingInterceptor := loggingUnaryInterceptor
	authInterceptor := grpc_auth.UnaryServerInterceptor(authFunc)
	validateInterceptor := validateUnaryInterceptor
	chain := grpc_middleware.ChainUnaryServer(loggingInterceptor, authInterceptor, validateInterceptor)
	grpcServerOption := grpc.UnaryInterceptor(chain)

	listener, err := net.Listen("tcp", addr)
	if err != nil {
		zlog.Fatal().Str("addr", addr).Err(err).Send()
	}

	// dapr/grpc service
	service := daprd.NewServiceWithListener(listener, grpcServerOption).(*daprd.Server)
	server := service.GrpcServer()

	registerServerHook(service)

	if Mode == DevelopmentMode {
		reflection.Register(server)
		zlog.Warn().Msg("grpc reflection enabled")
	}

	zlog.Info().Str("addr", addr).Msg("starting grpc service")

	if err = server.Serve(listener); err != nil {
		zlog.Fatal().Str("addr", addr).Err(err).Msg("could not start grpc server")
	}
}

func authFunc(ctx context.Context) (context.Context, error) {
	if !IsKeycloakSetUp() {
		// skip injecting claims into context
		return ctx, nil
	}

	// get token from gRPC metadata
	token, err := grpc_auth.AuthFromMD(ctx, "bearer")

	if err != nil {
		// nothing to parse, continue to next interceptor
		return ctx, nil
	}

	// verify token
	claims, err := VerifyAccessToken(token)
	if err != nil {
		return nil, status.Errorf(codes.Unauthenticated, "invalid auth token: %v", err)
	}

	ctx = context.WithValue(ctx, claimsKey, &claims)

	return ctx, nil
}

// GetAuthClaims extracts AccessTokenClaims from the request context, if they exist
// They are checked to be as expected and the token it was extracted from was valid.
// If an error is returned, no access token was extracted for this request.
// This either means no token was supplied by the client, or Auth was not set up in Setup.
func GetAuthClaims(ctx context.Context) (*AccessTokenClaims, error) {
	res, ok := ctx.Value(claimsKey).(*AccessTokenClaims)
	if !ok || res == nil {
		return nil, status.Error(codes.Unauthenticated, "authentication required")
	} else {
		return res, nil
	}
}

func validateUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	if err := hwutil.Validate(req); err != nil {
		return nil, status.Errorf(codes.InvalidArgument, err.Error())
	}
	return next(ctx, req)
}

func loggingUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
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
