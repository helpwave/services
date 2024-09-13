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
	"tasks-svc/internal/task/projections/spicedb"
	"tasks-svc/internal/task/projections/task_postgres_projection"
	"tasks-svc/internal/tracking"
	"time"

	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	hwspicedb "hwauthz/spicedb"
	"tasks-svc/internal/bed"
	patient "tasks-svc/internal/patient/api"
	"tasks-svc/internal/room"
	"tasks-svc/internal/task-template"
	task "tasks-svc/internal/task/api"

	"tasks-svc/internal/ward"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	ctx := common.Setup(ServiceName, Version, common.WithAuth())

	closeDBPool := hwdb.SetupDatabaseFromEnv(context.Background())
	defer closeDBPool()

	tracking.SetupTracking(ServiceName, 10, 24*time.Hour, 20)

	authz := hwspicedb.NewSpiceDBAuthZ()

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)
	taskHandlers := th.NewTaskHandlers(aggregateStore, authz)
	patientHandlers := ph.NewPatientHandlers(aggregateStore)

	go func() {
		spicedbProjection := spicedb.NewSpiceDBProjection(eventStore, authz, ServiceName)
		if err := spicedbProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during spicedb subscription")
			common.Shutdown(err)
		}
	}()

	go func() {
		postgresTaskProjection := task_postgres_projection.NewProjection(eventStore, ServiceName)
		if err := postgresTaskProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during task-postgres subscription")
			common.Shutdown(err)
		}
	}()

	go func() {
		postgresPatientProjection := patient_postgres_projection.NewProjection(eventStore, ServiceName)
		if err := postgresPatientProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during patient-postgres subscription")
			common.Shutdown(err)
		}
	}()

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, task.NewTaskGrpcService(aggregateStore, taskHandlers))
		pb.RegisterPatientServiceServer(grpcServer, patient.NewPatientGrpcService(aggregateStore, patientHandlers))
		pb.RegisterBedServiceServer(grpcServer, bed.NewServiceServer())
		pb.RegisterRoomServiceServer(grpcServer, room.NewServiceServer())
		pb.RegisterWardServiceServer(grpcServer, ward.NewServiceServer())
		pb.RegisterTaskTemplateServiceServer(grpcServer, task_template.NewServiceServer())
	})

	// Shutdown cleanly
	common.Shutdown(nil)
}
