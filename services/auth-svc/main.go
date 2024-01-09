package main

import (
	"common"
	"context"
	_ "embed"
	pb "gen/proto/services/auth_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	zlog "github.com/rs/zerolog/log"
)

const ServiceName = "auth-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, false)

	common.StartNewGRPCServer(common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		pb.RegisterAuthServiceServer(server.GrpcServer(), &authServiceServer{})
	})
}

type authServiceServer struct {
	pb.UnimplementedAuthServiceServer
}

func (authServiceServer) PrelimAuthRequest(ctx context.Context, _ *pb.PrelimAuthRequestRequest) (*pb.PrelimAuthRequestResponse, error) {
	log := zlog.Ctx(ctx)

	url := common.GetAuthCodeURL()
	log.Info().Msg(url)

	return &pb.PrelimAuthRequestResponse{Url: url}, nil
}
