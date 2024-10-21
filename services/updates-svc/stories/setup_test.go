package stories

import (
	"context"
	pb "gen/services/updates_svc/v1"
	"hwtesting"
	"os"
	"os/signal"
	"testing"
	"time"

	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
	zlog "github.com/rs/zerolog/log"

	"updates-svc/cmd/service"
)

func TestMain(m *testing.M) {
	ctx, cancel := context.WithCancel(context.Background())

	zlog.Info().Msg("starting containers")
	endpoints, teardownContainers := hwtesting.StartContainers(ctx, hwtesting.Eventstore)
	eventstoreEndpoint := endpoints.Get(hwtesting.Eventstore)

	zlog.Info().
		Str("eventstoreEndpoint", eventstoreEndpoint).
		Msg("containers are up")

	// prepare env
	hwtesting.SetCommonEnv()
	hwtesting.SetEventstoreEnv(eventstoreEndpoint)

	// TODO: spice migrations (PR #812)

	// start service
	ready := make(chan bool)
	go service.Main("story hwtesting", func() { ready <- true })
	<-ready

	hwtesting.WaitForProjectionsToSettle()

	// Run tests
	exitCode := m.Run()

	// Note: in case of a panic, we won't clean up, because we can't
	// due to poor language design
	// https://github.com/golang/go/issues/13149#issuecomment-153897851

	// cleanup and exit
	signal.Notify(make(chan os.Signal, 1), os.Interrupt)
	time.Sleep(time.Second)
	teardownContainers()
	cancel()
	os.Exit(exitCode)
}

func updatesServiceClient() pb.UpdatesServiceClient {
	return pb.NewUpdatesServiceClient(hwtesting.GetGrpcConn(""))
}
