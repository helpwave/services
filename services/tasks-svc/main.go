package main

import (
	"common"
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"hwes/eventstoredb"
	"tasks-svc/internal/task/projections/echo"

	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	ctx, cancel := context.WithCancel(context.Background())

	common.Setup(ServiceName, Version, true)

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	go func() {
		echoProjection := echo.NewProjection(eventStore, ServiceName)
		if err := echoProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during echo subscription")
			cancel()
		}
	}()

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, task.NewTaskGrpcService(aggregateStore))
		pb.RegisterPatientServiceServer(grpcServer, patient.NewPatientGrpcService(aggregateStore))
	})

	// Close context
	cancel()
}
