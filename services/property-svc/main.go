package main

import (
	"common"
	"context"
	pb "gen/proto/services/property_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	"hwdb"
	"hwes/eventstoredb"
	propertySet "property-svc/internal/property-set/api"
	propertyValue "property-svc/internal/property-value/api"
	property "property-svc/internal/property/api"
	"property-svc/internal/property/projections/property_postgres_projection"
)

const ServiceName = "property-svc"

// Version is set at compile time
var Version string

func main() {
	ctx, cancel := context.WithCancel(context.Background())

	common.Setup(ServiceName, Version, true)

	closeDBPool := hwdb.SetupDatabaseFromEnv(ctx)
	defer closeDBPool()

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	go func() {
		propertyPostgresProjection := property_postgres_projection.NewProjection(eventStore, ServiceName)
		if err := propertyPostgresProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during property-postgres projection subscription")
			cancel()
		}
	}()

	common.StartNewGRPCServer(context.Background(), common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterPropertyServiceServer(grpcServer, property.NewPropertyService(aggregateStore))
		pb.RegisterPropertySetServiceServer(grpcServer, propertySet.NewPropertySetService(aggregateStore))
		pb.RegisterPropertyValueServiceServer(grpcServer, propertyValue.NewPropertyValueService(aggregateStore))
	})

	cancel()
}
