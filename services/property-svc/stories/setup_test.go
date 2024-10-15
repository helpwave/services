package stories

import (
	"context"
	pb "gen/services/property_svc/v1"
	"hwtesting"
	"hwutil"
	"os"
	"os/signal"
	"sort"
	"testing"
	"time"

	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
	zlog "github.com/rs/zerolog/log"

	"property-svc/cmd/service"
)

func TestMain(m *testing.M) {
	ctx, cancel := context.WithCancel(context.Background())

	zlog.Info().Msg("starting containers")
	endpoints, teardownContainers := hwtesting.StartContainers(ctx, hwtesting.Postgres, hwtesting.Eventstore)
	postgresEndpoint := endpoints.Get(hwtesting.Postgres)
	eventstoreEndpoint := endpoints.Get(hwtesting.Eventstore)

	zlog.Info().
		Str("postgresEndpoint", postgresEndpoint).
		Str("eventstoreEndpoint", eventstoreEndpoint).
		Msg("containers are up")

	// prepare env
	hwtesting.SetCommonEnv()
	hwtesting.SetEventstoreEnv(eventstoreEndpoint)
	postgresDSN := hwtesting.SetPostgresEnv(postgresEndpoint)

	// `go test` sets the wd to the directory of this file
	hwtesting.MigratePostgres("file://../migrations", postgresDSN)

	// start service
	ready := make(chan bool)
	go service.Main("story hwtesting", func() { ready <- true })
	<-ready

	hwtesting.WaitForProjectionsToSettle()

	// Run tests
	exitCode := m.Run()

	// cleanup and exit
	signal.Notify(make(chan os.Signal, 1), os.Interrupt)
	time.Sleep(time.Second)
	teardownContainers()
	cancel()
	os.Exit(exitCode)
}

func propertyServiceClient() pb.PropertyServiceClient {
	return pb.NewPropertyServiceClient(hwtesting.GetGrpcConn(""))
}

func propertyViewServiceClient() pb.PropertyViewsServiceClient {
	return pb.NewPropertyViewsServiceClient(hwtesting.GetGrpcConn(""))
}

func propertyValueServiceClient() pb.PropertyValueServiceClient {
	return pb.NewPropertyValueServiceClient(hwtesting.GetGrpcConn(""))
}

func NamesOf(arr []*pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption) []string {
	strs := hwutil.Map(arr, func(v *pb.GetAttachedPropertyValuesResponse_Value_SelectValueOption) string {
		return v.Name
	})
	sort.Strings(strs)
	return strs
}
