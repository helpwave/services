package main

import (
	"common"
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	"hwdb"
	"hwes/eventstoredb"
	patient "tasks-svc/internal/patient/api"
	task "tasks-svc/internal/task/api"
	"tasks-svc/internal/task/projections/echo"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	ctx, cancel := context.WithCancel(context.Background())

	common.Setup(ServiceName, Version, true)

	closeDBPool := hwdb.SetupDatabaseFromEnv(context.Background())
	defer closeDBPool()

	// TODO: https://github.com/helpwave/services/issues/694
	// tracking.SetupTracking(ServiceName, 10, 24*time.Hour, 20)

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
