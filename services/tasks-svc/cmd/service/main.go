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

	"tasks-svc/internal/patient/projections/patientSpiceDBProjection"

	ph "tasks-svc/internal/patient/handlers"
	"tasks-svc/internal/patient/projections/patientPostgresProjection"
	th "tasks-svc/internal/task/handlers"
	"tasks-svc/internal/task/projections/task_postgres_projection"
	"tasks-svc/internal/task/projections/task_spicedb"
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
		task_spicedb.NewSpiceDBProjection(eventStore, authz, ServiceName),
		task_postgres_projection.NewProjection(eventStore, ServiceName),
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
		pb.RegisterTaskTemplateServiceServer(grpcServer, task_template.NewServiceServer(authz, eventStore))

		if ready != nil {
			ready()
		}
	})

	// Shutdown cleanly
	common.Shutdown(nil)
}
