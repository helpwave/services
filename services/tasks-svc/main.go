package main

import (
	"common"
	pb "gen/proto/services/tasks_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwes"
	"tasks-svc/internal/task/api"
	"tasks-svc/internal/task/service"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	hwes.SetupEventStoreByEnv()

	aggregateStore := hwes.NewAggregateStore(hwes.GetES())
	taskService := service.NewTaskService(aggregateStore)

	common.StartNewGRPCServer(common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, api.NewTaskGrpcService(taskService))
	})
}
