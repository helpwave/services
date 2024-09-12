package service

import (
	"common"
	"context"
	"flag"
	pb "gen/services/property_svc/v1"
	"github.com/rs/zerolog/log"
	hwspicedb "hwauthz/spicedb"
	"hwdb"
	"hwes/eventstoredb"
	propertySet "property-svc/internal/property-set/api"
	propertyValue "property-svc/internal/property-value/api"
	"property-svc/internal/property-value/projections/property_value_postgres_projection"
	propertyViews "property-svc/internal/property-view/api"
	"property-svc/internal/property-view/projections/property_rules_postgres"
	property "property-svc/internal/property/api"
	"property-svc/internal/property/projections/property_postgres_projection"

	daprd "github.com/dapr/go-sdk/service/grpc"
	psh "property-svc/internal/property-set/handlers"
	pvh "property-svc/internal/property-value/handlers"
	pvih "property-svc/internal/property-view/handlers"
	ph "property-svc/internal/property/handlers"
)

const ServiceName = "property-svc"

func Main(version string, ready func()) {
	ctx, cancel := context.WithCancel(context.Background())
	common.Setup(ServiceName, version, common.WithAuth())

	replayMode := flag.Bool("replay", false, "")
	flag.Parse()
	log.Debug().Bool("replayMode", *replayMode).Msg("flags")

	closeDBPool := hwdb.SetupDatabaseFromEnv(ctx)
	defer closeDBPool()

	authz := hwspicedb.NewSpiceDBAuthZ()
	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	propertyPostgresProjection := property_postgres_projection.
		NewProjection(eventStore, ServiceName, hwdb.GetDB(), authz)

	propertyValuePostgresProjection := property_value_postgres_projection.
		NewProjection(eventStore, ServiceName, hwdb.GetDB())

	if *replayMode {
		if err := replay(ctx, eventStore, authz); err != nil {
			log.Err(err).Msg("error during replay")
			cancel()
		}
		// TODO: Find a more generic approach to run common.Shutdown()
		common.Shutdown()
		cancel()
		return
	}

	go func() {
		if err := propertyPostgresProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during property-postgres projection subscription")
			cancel()
		}
	}()

	go func() {
		if err := propertyValuePostgresProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during propertyValue-postgres projection subscription")
			cancel()
		}
	}()

	go func() {
		taskViewsPostgresProjection := property_rules_postgres.NewProjection(eventStore, ServiceName)
		if err := taskViewsPostgresProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during taskViewsPostgresProjection subscription")
			cancel()
		}
	}()

	propertyHandlers := ph.NewPropertyHandlers(aggregateStore, authz)
	propertySetHandlers := psh.NewPropertySetHandlers(aggregateStore)
	propertyViewHandlers := pvih.NewPropertyViewHandlers(aggregateStore)
	propertyValueHandlers := pvh.NewPropertyValueHandlers(aggregateStore)

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterPropertyServiceServer(grpcServer, property.NewPropertyService(aggregateStore, propertyHandlers))
		pb.RegisterPropertySetServiceServer(grpcServer, propertySet.NewPropertySetService(aggregateStore, propertySetHandlers))
		pb.RegisterPropertyValueServiceServer(grpcServer, propertyValue.NewPropertyValueService(aggregateStore, propertyValueHandlers))
		pb.RegisterPropertyViewsServiceServer(grpcServer, propertyViews.NewPropertyViewService(aggregateStore, propertyViewHandlers))

		if ready != nil {
			ready()
		}
	})

	cancel()
}
