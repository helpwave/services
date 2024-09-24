package stories

import (
	"context"
	pb "gen/services/tasks_svc/v1"
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
	zlog "github.com/rs/zerolog/log"
	"github.com/stretchr/testify/assert"
	"hwtesting"
	"hwutil"
	"os/signal"
	"tasks-svc/cmd/service"

	"os"
	"testing"
	"time"
)

func TestMain(m *testing.M) {
	ctx, cancel := context.WithCancel(context.Background())

	zlog.Info().Msg("starting containers")
	endpoints, teardownContainers := hwtesting.StartContainers(ctx,
		hwtesting.Postgres, hwtesting.Eventstore, hwtesting.Redis, hwtesting.Spice)
	postgresEndpoint := endpoints.Get(hwtesting.Postgres)
	eventstoreEndpoint := endpoints.Get(hwtesting.Eventstore)
	redisEndpoint := endpoints.Get(hwtesting.Redis)
	spiceEndpoint := endpoints.Get(hwtesting.Spice)

	zlog.Info().
		Str("postgresEndpoint", postgresEndpoint).
		Str("eventstoreEndpoint", eventstoreEndpoint).
		Str("redisEndpoint", redisEndpoint).
		Str("spiceEndpoint", spiceEndpoint).
		Msg("containers are up")

	// prepare env
	hwtesting.SetCommonEnv()
	hwtesting.SetEventstoreEnv(eventstoreEndpoint)
	hwtesting.SetRedisEnv(redisEndpoint)
	hwtesting.SetSpiceEnv(spiceEndpoint)
	postgresDSN := hwtesting.SetPostgresEnv(postgresEndpoint)

	// `go test` sets the wd to the directory of this file
	hwtesting.MigratePostgres("file://../migrations", postgresDSN)

	// TODO: spice migrations (PR #812)

	// start service
	ready := make(chan bool)
	go service.Main("story hwtesting", func() { ready <- true })
	<-ready

	// wait for projections to be ready
	time.Sleep(time.Second * 2)

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

func bedServiceClient() pb.BedServiceClient {
	return pb.NewBedServiceClient(hwtesting.GetGrpcConn(""))
}

func roomServiceClient() pb.RoomServiceClient {
	return pb.NewRoomServiceClient(hwtesting.GetGrpcConn(""))
}

func patientServiceClient() pb.PatientServiceClient {
	return pb.NewPatientServiceClient(hwtesting.GetGrpcConn(""))
}

func taskServiceClient() pb.TaskServiceClient {
	return pb.NewTaskServiceClient(hwtesting.GetGrpcConn(""))
}

func taskTemplateServiceClient() pb.TaskTemplateServiceClient {
	return pb.NewTaskTemplateServiceClient(hwtesting.GetGrpcConn(""))
}
func wardServiceClient() pb.WardServiceClient {
	return pb.NewWardServiceClient(hwtesting.GetGrpcConn(""))
}

func prepareWard(t *testing.T, ctx context.Context, suffix string) (wardID, wardConsistency string) {
	wardRes, err := wardServiceClient().CreateWard(ctx, &pb.CreateWardRequest{
		Name: t.Name() + " ward " + suffix,
	})
	assert.NoError(t, err, "prepareWard failed: could not create ward", suffix)
	return wardRes.Id, wardRes.Consistency
}

func prepareRoom(t *testing.T, ctx context.Context, wardId, suffix string) (roomID, roomConsistency string) {
	roomRes, err := roomServiceClient().CreateRoom(ctx, &pb.CreateRoomRequest{
		Name:   t.Name() + " room " + suffix,
		WardId: wardId,
	})
	assert.NoError(t, err, "prepareRoom failed: could not create room", suffix)
	return roomRes.Id, roomRes.Consistency
}

func prepareBed(t *testing.T, ctx context.Context, roomId, suffix string) (bedID, consistency string) {
	createRes, err := bedServiceClient().CreateBed(ctx, &pb.CreateBedRequest{
		RoomId: roomId,
		Name:   t.Name() + " bed " + suffix,
	})
	assert.NoError(t, err, "prepareBed: could not create bed", suffix)
	return createRes.Id, createRes.Consistency
}

func preparePatient(t *testing.T, ctx context.Context, suffix string) (patientID string) {
	res, err := patientServiceClient().CreatePatient(ctx, &pb.CreatePatientRequest{
		HumanReadableIdentifier: t.Name() + " Patient " + suffix,
		Notes:                   hwutil.PtrTo("A patient for test " + t.Name()),
	})
	assert.NoError(t, err, "preparePatient: could not create patient")
	time.Sleep(time.Second)
	return res.Id
}
