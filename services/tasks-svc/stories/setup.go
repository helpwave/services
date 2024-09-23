package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
	zlog "github.com/rs/zerolog/log"
	"hwtesting"
	"os/signal"
	"tasks-svc/cmd/service"

	"os"
	"testing"
	"time"
)

func Setup(m *testing.M) {
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

	// wait for projections to be ready
	time.Sleep(time.Second * 2)

	// Run tests
	exitCode := m.Run()

	// cleanup and exit
	signal.Notify(make(chan os.Signal, 1), os.Interrupt)
	time.Sleep(time.Second)
	teardownContainers()
	cancel()
	os.Exit(exitCode)
}

func bedServiceClient() pb.BedServiceClient {
	return pb.NewBedServiceClient(hwtesting.GetGrpcConn())
}

func roomServiceClient() pb.RoomServiceClient {
	return pb.NewRoomServiceClient(hwtesting.GetGrpcConn())
}

func patientServiceClient() pb.PatientServiceClient {
	return pb.NewPatientServiceClient(hwtesting.GetGrpcConn())
}

func taskServiceClient() pb.TaskServiceClient {
	return pb.NewTaskServiceClient(hwtesting.GetGrpcConn())
}

func taskTemplateServiceClient() pb.TaskTemplateServiceClient {
	return pb.NewTaskTemplateServiceClient(hwtesting.GetGrpcConn())
}
func wardServiceClient() pb.WardServiceClient {
	return pb.NewWardServiceClient(hwtesting.GetGrpcConn())
}
