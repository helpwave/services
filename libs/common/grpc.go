package common

import (
	"context"
	"errors"
	"github.com/grpc-ecosystem/go-grpc-middleware/util/metautils"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwutil"
	"logging"
	"net"

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
//	common.StartNewGRPCServer(addr, func(server *grpc.Server) {
//		api.RegisterMyServiceServer(server, &myServiceServer{})
//	})
func StartNewGRPCServer(addr string, registerServerHook func(*grpc.Server)) {
	// middlewares
	logging := loggingUnaryInterceptor
	auth := grpc_auth.UnaryServerInterceptor(authFunc)
	validate := validateUnaryInterceptor
	chain := grpc_middleware.ChainUnaryServer(logging, auth, validate)

	server := grpc.NewServer(grpc.UnaryInterceptor(chain))

	listener, err := net.Listen("tcp", addr)
	if err != nil {
		zlog.Fatal().Str("addr", addr).Err(err).Send()
	}

	zlog.Info().Str("addr", addr).Msg("starting grpc service")

	registerServerHook(server)

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
	if res := ctx.Value(claimsKey).(*AccessTokenClaims); res == nil {
		return nil, errors.New("authentication required")
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
		Str("span", metadata.Get("traceparent"))

	// this is the logger that should be used for this request
	log := builder.Logger()
	ctx = log.WithContext(ctx)

	log.Trace().Interface("metadata", redactMetadata(metadata)).Send()

	logBody := req

	// custom map instead, if implemented
	if loggable, ok := req.(logging.Loggable); ok {
		logBody = loggable.LoggableFields()
	}
	log.Debug().Interface("body", logBody).Send()

	// Call next in chain
	res, err := next(ctx, req)

	// We are back! Now evaluate response

	if err != nil {
		statusError := status.Convert(err)
		code := statusError.Code().String()
		message := statusError.Message()
		details := statusError.Details()
		log.
			Warn().
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

func redactMetadata(m metautils.NiceMD) metautils.NiceMD {
	if arr := m["authorization"]; arr != nil {
		for i := range arr {
			arr[i] = logging.OmitAll(arr[i])
		}
	}
	return m
}
