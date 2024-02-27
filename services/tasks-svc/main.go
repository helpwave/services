package main

import (
	"common"
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	hwspicedb "hwauthz/spicedb"
	"hwes/eventstoredb"
	"tasks-svc/internal/task/api"
	"tasks-svc/internal/task/projections/echo"
	"tasks-svc/internal/task/projections/spicedb"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	ctx, cancel := context.WithCancel(context.Background())

	common.Setup(ServiceName, Version, true)

	spiceDb := hwspicedb.SetupSpiceDbByEnv()
	authz := hwspicedb.NewSpiceDBAuthZ(spiceDb)

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	go func() {
		spicedbProjection := spicedb.NewSpiceDBProjection(eventStore, authz, ServiceName)
		if err := spicedbProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during spicedb subscription")
			cancel()
		}
	}()

	go func() {
		echoProjection := echo.NewProjection(eventStore, ServiceName)
		if err := echoProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during echo subscription")
			cancel()
		}
	}()

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, api.NewTaskGrpcService(aggregateStore, authz))
	})

	// Close context
	cancel()
}
