package common

import (
	"context"
	"errors"
	grpc_middleware "github.com/grpc-ecosystem/go-grpc-middleware"
	grpc_auth "github.com/grpc-ecosystem/go-grpc-middleware/auth"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwutil"
	"net"

	zlog "github.com/rs/zerolog/log"
)

type claimsKeyT struct{}

var claimsKey = claimsKeyT{}

func StartNewGRPCServer(addr string, registerServerHook func(*grpc.Server)) {
	// middlewares
	// TODO: logging middleware
	auth := grpc_auth.UnaryServerInterceptor(authFunc)
	validate := ValidateUnaryInterceptor
	chain := grpc_middleware.ChainUnaryServer(auth, validate)

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
	// get token from gRPC metadata
	token, err := grpc_auth.AuthFromMD(ctx, "bearer")

	if err != nil {
		// nothing to parse, continue to next interceptor
		return ctx, nil
	}

	// verify token
	claims, err := VerifyAccessToken(token)
	if err != nil {
		zlog.Warn().Err(err).Msg("invalid token") // TODO: logging
		return nil, status.Errorf(codes.Unauthenticated, "invalid auth token: %v", err)
	}

	ctx = context.WithValue(ctx, claimsKey, &claims)

	return ctx, nil
}

func GetAuthClaims(ctx context.Context) (*AccessTokenClaims, error) {
	if res := ctx.Value(claimsKey).(*AccessTokenClaims); res == nil {
		return nil, errors.New("authentication required")
	} else {
		return res, nil
	}
}

func ValidateUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	if err := hwutil.Validate(req); err != nil {
		return nil, status.Errorf(codes.InvalidArgument, err.Error())
	}
	return next(ctx, req)
}
