package main

import (
	"common"
	"context"
	"flag"
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
	replayMode := flag.Bool("replay", false, "")
	flag.Parse()

	ctx, cancel := context.WithCancel(context.Background())
	common.Setup(ServiceName, Version, common.WithAuth())

	closeDBPool := hwdb.SetupDatabaseFromEnv(ctx)
	defer closeDBPool()

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)
	propertyPostgresProjection := property_postgres_projection.NewProjection(eventStore, ServiceName)

	if *replayMode {
		if err := replay(ctx, eventStore, propertyPostgresProjection); err != nil {
			log.Err(err).Msg("error during replay")
			cancel()
		}
		// TODO: Find a more generic approach to run common.Shutdown()
		common.Shutdown()
		return
	}

	go func() {
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
