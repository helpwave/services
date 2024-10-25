package service

import (
	"common"
	"flag"
	"hwdb"
	"hwes/eventstoredb"
	"hwes/eventstoredb/projections"

	pb "gen/services/property_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	hwspicedb "hwauthz/spicedb"
	propertySet "property-svc/internal/property-set/api"
	psh "property-svc/internal/property-set/handlers"
	propertyValue "property-svc/internal/property-value/api"
	pvh "property-svc/internal/property-value/handlers"
	"property-svc/internal/property-value/projections/property_value_postgres_projection"
	propertyViews "property-svc/internal/property-view/api"
	pvih "property-svc/internal/property-view/handlers"
	"property-svc/internal/property-view/projections/property_rules_postgres"
	property "property-svc/internal/property/api"
	ph "property-svc/internal/property/handlers"
	propertyPostgresProjection "property-svc/internal/property/projections/postgres_projection"
	"property-svc/internal/property/projections/propertySetSpiceDBProjection"
	"property-svc/internal/property/projections/propertySpiceDBProjection"
)

const ServiceName = "property-svc"

func Main(version string, ready func()) {
	ctx := common.Setup(ServiceName, version, common.WithAuth())

	replayMode := flag.Bool("replay", false, "")
	flag.Parse()
	log.Debug().Bool("replayMode", *replayMode).Msg("flags")

	closeDBPool := hwdb.SetupDatabaseFromEnv(ctx)
	defer closeDBPool()

	authz := hwspicedb.NewSpiceDBAuthZ()
	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	if *replayMode {
		err := replay(ctx, eventStore)
		if err != nil {
			log.Err(err).Msg("error during replay")
		}
		common.Shutdown(err)
		return
	}

	go projections.StartProjections(
		ctx,
		common.Shutdown,
		propertySpiceDBProjection.NewProjection(eventStore, ServiceName, authz),
		propertySetSpiceDBProjection.NewProjection(eventStore, ServiceName, authz),
		propertyPostgresProjection.NewProjection(eventStore, ServiceName, hwdb.GetDB()),
		property_value_postgres_projection.NewProjection(eventStore, ServiceName, hwdb.GetDB()),
		property_rules_postgres.NewProjection(eventStore, ServiceName),
	)

	propertyHandlers := ph.NewPropertyHandlers(aggregateStore, authz)
	propertySetHandlers := psh.NewPropertySetHandlers(aggregateStore, authz)
	propertyViewHandlers := pvih.NewPropertyViewHandlers(aggregateStore)
	propertyValueHandlers := pvh.NewPropertyValueHandlers(aggregateStore)

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterPropertyServiceServer(
			grpcServer,
			property.NewPropertyService(aggregateStore, propertyHandlers),
		)
		pb.RegisterPropertySetServiceServer(
			grpcServer,
			propertySet.NewPropertySetService(aggregateStore, propertySetHandlers),
		)
		pb.RegisterPropertyValueServiceServer(
			grpcServer,
			propertyValue.NewPropertyValueService(aggregateStore, propertyValueHandlers),
		)
		pb.RegisterPropertyViewsServiceServer(
			grpcServer,
			propertyViews.NewPropertyViewService(aggregateStore, propertyViewHandlers),
		)

		if ready != nil {
			ready()
		}
	})

	common.Shutdown(nil)
}
