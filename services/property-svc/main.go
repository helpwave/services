package main

import (
	"common"
	pb "gen/proto/services/property_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwes/eventstoredb"
	propertySetApi "property-svc/internal/property-set/api"
	propertyApi "property-svc/internal/property/api"
)

const ServiceName = "property-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	common.StartNewGRPCServer(common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterPropertyServiceServer(grpcServer, propertyApi.NewPropertyService(aggregateStore))
		pb.RegisterPropertySetServiceServer(grpcServer, propertySetApi.NewPropertySetService(aggregateStore))
	})
}
