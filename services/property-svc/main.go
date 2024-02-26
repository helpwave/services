package main

import (
	"common"
	"context"
	pb "gen/proto/services/property_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwes/eventstoredb"
	propertySetApi "property-svc/internal/property-set/api"
	propertyValueApi "property-svc/internal/property-value/api"
	propertyApi "property-svc/internal/property/api"
)

const ServiceName = "property-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	common.StartNewGRPCServer(context.Background(), common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterPropertyServiceServer(grpcServer, propertyApi.NewPropertyService(aggregateStore))
		pb.RegisterPropertySetServiceServer(grpcServer, propertySetApi.NewPropertySetService(aggregateStore))
		pb.RegisterPropertyValueServiceServer(grpcServer, propertyValueApi.NewPropertyValueService(aggregateStore))
	})
}
