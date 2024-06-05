package main

import (
	"common"
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwdb"
	"hwes/eventstoredb"
	ph "tasks-svc/internal/patient/handlers"
	"tasks-svc/internal/patient/projections/patient_postgres_projection"
	th "tasks-svc/internal/task/handlers"
	"tasks-svc/internal/task/projections/task_postgres_projection"
	"tasks-svc/internal/tracking"
	"time"

	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	patient "tasks-svc/internal/patient/api"
	task "tasks-svc/internal/task/api"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	ctx, cancel := context.WithCancel(context.Background())

	common.Setup(ServiceName, Version, common.WithAuth())

	closeDBPool := hwdb.SetupDatabaseFromEnv(context.Background())
	defer closeDBPool()

	tracking.SetupTracking(ServiceName, 10, 24*time.Hour, 20)

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)
	taskHandlers := th.NewTaskHandlers(aggregateStore)
	patientHandlers := ph.NewPatientHandlers(aggregateStore)

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

		pb.RegisterTaskServiceServer(grpcServer, task.NewTaskGrpcService(aggregateStore, taskHandlers))
		pb.RegisterPatientServiceServer(grpcServer, patient.NewPatientGrpcService(aggregateStore, patientHandlers))
	})

	// Close context
	cancel()
}
