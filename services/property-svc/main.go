package main

import (
	"common"
	"context"
	"flag"
	"fmt"
	pb "gen/proto/services/property_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwes/eventstoredb"
	propertySet "property-svc/internal/property-set/api"
	propertyValue "property-svc/internal/property-value/api"
	"property-svc/internal/property/aggregate"
	property "property-svc/internal/property/api"
	"property-svc/internal/property/projections/property_postgres_projection"
)

const ServiceName = "property-svc"

// Version is set at compile time
var Version string

func replay(ctx context.Context, eventStore *esdb.Client, propertyPostgresProjection *property_postgres_projection.Projection) error {
	replay := eventstoredb.NewReplay(eventStore, func(ctx context.Context, event hwes.Event) error {
		log.Info().Dict("event", event.GetZerologDict()).Msg("replay event to projections")
		if err, _ := propertyPostgresProjection.HandleEvent(ctx, event); err != nil {
			return err
		}
		return nil
	}, &[]string{fmt.Sprintf("%s-", aggregate.PropertyAggregateType)})

	replay.BeforeReplayHook = func() (err error) {
		log.Info().Msg("BeforeReplayHook")

		// TOOD: Run in transaction. Only commit after a successful .Run()
		if err := hwdb.TruncateAllTables(ctx); err != nil {
			return err
		}

		return
	}

	replay.AfterReplayHook = func() (err error) {
		log.Info().Msg("AfterReplayHook")
		return nil
	}

	return replay.Run(ctx)
}

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
