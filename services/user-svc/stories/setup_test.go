package stories

import (
	"context"
	"hwtesting"
	"os"
	"os/signal"
	"testing"
	"time"

	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
	zlog "github.com/rs/zerolog/log"
	"user-svc/cmd/service"
)

func TestMain(m *testing.M) {
	ctx, cancel := context.WithCancel(context.Background())

	zlog.Info().Msg("starting containers")
	endpoints, teardownContainers := hwtesting.StartContainers(ctx, hwtesting.Postgres, hwtesting.Spice)
	postgresEndpoint := endpoints.Get(hwtesting.Postgres)
	spiceEndpoint := endpoints.Get(hwtesting.Spice)

	zlog.Info().
		Str("postgresEndpoint", postgresEndpoint).
		Str("spiceEndpoint", spiceEndpoint).
		Msg("containers are up")

	// prepare env
	_ = os.Setenv("INSECURE_HWKC_USE_NOOP_CLIENT", "true")
	hwtesting.SetCommonEnv()
	hwtesting.SetSpiceEnv(spiceEndpoint)
	postgresDSN := hwtesting.SetPostgresEnv(postgresEndpoint)

	// `go test` sets the wd to the directory of this file
	hwtesting.MigratePostgres("file://../migrations", postgresDSN)

	hwtesting.MigrateSpiceDB(ctx, spiceEndpoint)

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
