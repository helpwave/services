package main

import (
	"common"
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwes/eventstoredb"
	"tasks-svc/internal/task/api"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	common.StartNewGRPCServer(context.Background(), common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, api.NewTaskGrpcService(aggregateStore))
	})
}
