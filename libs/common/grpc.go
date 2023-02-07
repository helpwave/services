package common

import (
	"google.golang.org/grpc"
	"net"

	zlog "github.com/rs/zerolog/log"
)

func StartNewGRPCServer(addr string, registerServerHook func(*grpc.Server)) {
	server := grpc.NewServer()

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
