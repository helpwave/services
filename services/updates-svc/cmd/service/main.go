package service

import (
	"common"
	pb "gen/services/updates_svc/v1"
	"hwes/eventstoredb"

	daprd "github.com/dapr/go-sdk/service/grpc"

	"updates-svc/internal/updates"
)

const ServiceName = "updates-svc"

func Main(version string, ready func()) {
	ctx := common.Setup(ServiceName, version, common.WithAuth())

	eventStore := eventstoredb.SetupEventStoreByEnv()

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterUpdatesServiceServer(grpcServer, updates.NewUpdatesGrpcService(eventStore))

		if ready != nil {
			ready()
		}
	})

	// Shutdown cleanly
	common.Shutdown(nil)
}
