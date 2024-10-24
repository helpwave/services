package service

import (
	"common"
	"context"
	pb "gen/services/tasks_svc/v1"
	"hwdb"
	"hwes/eventstoredb"
	"hwes/eventstoredb/projections"
	ph "tasks-svc/internal/patient/handlers"
	"tasks-svc/internal/patient/projections/patient_postgres_projection"
	th "tasks-svc/internal/task/handlers"
	"tasks-svc/internal/task/projections/task_postgres_projection"

	daprd "github.com/dapr/go-sdk/service/grpc"
	patient "tasks-svc/internal/patient/api"
	task "tasks-svc/internal/task/api"
)

const ServiceName = "tasks-svc"

func Main(version string, ready func()) {
	ctx := common.Setup(ServiceName, version, common.WithFakeAuthOnly())

	closeDBPool := hwdb.SetupDatabaseFromEnv(context.Background())
	defer closeDBPool()

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)
	taskHandlers := th.NewTaskHandlers(aggregateStore)
	patientHandlers := ph.NewPatientHandlers(aggregateStore)

	go projections.StartProjections(
		ctx,
		common.Shutdown,
		task_postgres_projection.NewProjection(eventStore, ServiceName),
		patient_postgres_projection.NewProjection(eventStore, ServiceName),
	)

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, task.NewTaskGrpcService(aggregateStore, taskHandlers))
		pb.RegisterPatientServiceServer(grpcServer, patient.NewPatientGrpcService(aggregateStore, patientHandlers))

		if ready != nil {
			ready()
		}
	})

	// Shutdown cleanly
	common.Shutdown(nil)
}
