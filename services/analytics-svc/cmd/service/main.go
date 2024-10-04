package service

import (
	"anayltics-svc/internal/projection/neo4j_projection"
	"common"
	"hwes/eventstoredb"
	"hwes/eventstoredb/projections"
	"hwneo"
)

const ServiceName = "analytics-svc"

func Main(version string, ready func()) {
	ctx := common.Setup(ServiceName, version, common.WithAuth())

	closeNeoConn, driver := hwneo.SetupNeo4JFromEnv(ctx)
	defer closeNeoConn()

	eventStore := eventstoredb.SetupEventStoreByEnv()

	go projections.StartProjections(
		ctx,
		common.Shutdown,
		neo4j_projection.(eventStore, ServiceName, driver)
	)

}
