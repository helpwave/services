package main

import (
	"common"
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"hwdb"
	"hwes/eventstoredb"
	"tasks-svc/internal/task/projections/echo"
	"tasks-svc/internal/tracking"

	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	patient "tasks-svc/internal/patient/api"
	task "tasks-svc/internal/task/api"
	"time"
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
		postgresTaskProjection := task_postgres_projection.NewProjection(eventStore, ServiceName)
		if err := postgresTaskProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during task-postgres subscription")
			cancel()
		}
	}()

	go func() {
		postgresPatientProjection := patient_postgres_projection.NewProjection(eventStore, ServiceName)
		if err := postgresPatientProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during patient-postgres subscription")
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
