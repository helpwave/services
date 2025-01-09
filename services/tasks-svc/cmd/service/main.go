package service

import (
	"common"
	"context"
	pb "gen/services/tasks_svc/v1"
	hwspicedb "hwauthz/spicedb"
	"hwdb"
	"hwes/eventstoredb"
	"hwes/eventstoredb/projections"
	"time"

	ph "tasks-svc/internal/patient/handlers"
	patientPostgresProjection "tasks-svc/internal/patient/projections/postgres-projection"
	patientSpiceDBProjection "tasks-svc/internal/patient/projections/spicedb-projection"
	th "tasks-svc/internal/task/handlers"
	taskPostgresProjection "tasks-svc/internal/task/projections/postgres-projection"
	taskSpiceDBProjection "tasks-svc/internal/task/projections/spicedb-projection"
	"tasks-svc/internal/tracking"

	daprd "github.com/dapr/go-sdk/service/grpc"
	"tasks-svc/internal/bed"
	patient "tasks-svc/internal/patient/api"
	"tasks-svc/internal/room"
	"tasks-svc/internal/task-template"
	task "tasks-svc/internal/task/api"

	"tasks-svc/internal/ward"
)

const ServiceName = "tasks-svc"

func Main(version string, ready func()) {
	ctx := common.Setup(ServiceName, version, common.WithAuth())

	closeDBPool := hwdb.SetupDatabaseFromEnv(context.Background())
	defer closeDBPool()

	tracking.SetupTracking(ctx, ServiceName, 10, 24*time.Hour, 20)

	authz := hwspicedb.NewSpiceDBAuthZ()

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)
	taskHandlers := th.NewTaskHandlers(aggregateStore, authz)
	patientHandlers := ph.NewPatientHandlers(aggregateStore, authz)

	go projections.StartProjections(
		ctx,
		common.Shutdown,
		taskSpiceDBProjection.NewSpiceDBProjection(eventStore, authz, ServiceName),
		taskPostgresProjection.NewProjection(eventStore, ServiceName),
		patientPostgresProjection.NewProjection(eventStore, ServiceName),
		patientSpiceDBProjection.NewProjection(eventStore, authz, ServiceName),
	)

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, task.NewTaskGrpcService(aggregateStore, taskHandlers))
		pb.RegisterPatientServiceServer(grpcServer, patient.NewPatientGrpcService(aggregateStore, authz, patientHandlers))
		pb.RegisterBedServiceServer(grpcServer, bed.NewServiceServer(authz, eventStore))
		pb.RegisterRoomServiceServer(grpcServer, room.NewServiceServer(authz, eventStore))
		pb.RegisterWardServiceServer(grpcServer, ward.NewServiceServer(authz, eventStore))
		pb.RegisterTaskTemplateServiceServer(grpcServer, tasktemplate.NewServiceServer(authz, eventStore))

		if ready != nil {
			ready()
		}
	})

	// Shutdown cleanly
	common.Shutdown(nil)
}
