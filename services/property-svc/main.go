package main

import (
	"common"
	"context"
	pb "gen/proto/services/property_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwes/eventstoredb"
	propertySet "property-svc/internal/property-set/api"
	propertyValue "property-svc/internal/property-value/api"
	property "property-svc/internal/property/api"
)

const ServiceName = "property-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, common.WithAuth())

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	common.StartNewGRPCServer(context.Background(), common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterPropertyServiceServer(grpcServer, property.NewPropertyService(aggregateStore))
		pb.RegisterPropertySetServiceServer(grpcServer, propertySet.NewPropertySetService(aggregateStore))
		pb.RegisterPropertyValueServiceServer(grpcServer, propertyValue.NewPropertyValueService(aggregateStore))
	})
}
