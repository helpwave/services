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
	"tasks-svc/internal/task/projections/spicedb"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	common.Setup(ServiceName, Version, true)

	eventStore := eventstoredb.SetupEventStoreByEnv()
	spiceDb := hwspicedb.SetupSpiceDbByEnv()

	spiceDBProjection := spicedb.NewSpiceDBProjection(eventStore, spiceDb)
	go func() {
		err := spiceDBProjection.Cp.Subscribe(ctx, spiceDBProjection.When)
		if err != nil {
			log.Err(err).Msg("error during SpiceDB subscription")
			cancel()
		}
	}()

	aggregateStore := eventstoredb.NewAggregateStore(eventStore)
	authz := hwspicedb.NewSpiceDBAuthZ(spiceDb)

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, api.NewTaskGrpcService(aggregateStore, authz))
	})

	// Shutdown

	log.Info().Msg("closing eventstore")
	if err := eventStore.Close(); err != nil {
		log.Fatal().Err(err).Msg("eventstore closed with errors")
	} else {
		log.Info().Msg("eventstore closed without errors")
	}
}
