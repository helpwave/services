package main

import (
	"common"
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	hwspicedb "hwauthz/spicedb"
	"hwes/eventstoredb"
	"os"
	"os/signal"
	"syscall"
	"tasks-svc/internal/task/api"
	"tasks-svc/internal/task/projections/spicedb"
	"tasks-svc/internal/task/service"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	ctx, cancel := signal.NotifyContext(context.Background(), os.Interrupt, syscall.SIGTERM, syscall.SIGINT)
	defer cancel()

	common.Setup(ServiceName, Version, true)

	eventStore := eventstoredb.SetupEventStoreByEnv()
	sdb := hwspicedb.SetupSpiceDbByEnv()

	spiceDBProjection := spicedb.NewSpiceDBProjection(eventStore, sdb)
	go func() {
		err := spiceDBProjection.Cp.Subscribe(ctx, spiceDBProjection.When)
		if err != nil {
			cancel()
		}
	}()

	aggregateStore := eventstoredb.NewAggregateStore(eventStore)
	authz := hwspicedb.NewSpiceDBAuthZ(sdb)
	taskService := service.NewTaskService(aggregateStore, authz)

	stopGrpcServer, grpcServer := common.StartNewGRPCServer(common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, api.NewTaskGrpcService(taskService))
	})
	defer stopGrpcServer()

	<-ctx.Done()
	grpcServer.GracefulStop()
}
