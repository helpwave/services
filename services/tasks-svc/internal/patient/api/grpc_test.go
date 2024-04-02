package api_test

import (
	"common"
	common_test "common/test"
	"context"
	"decaying_lru"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/go-redis/redismock/v9"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	hwes_test "hwes/test"
	"tasks-svc/internal/patient/api"
	"tasks-svc/internal/tracking"
	"testing"
	"time"
)

func server(ctx context.Context) (pb.PatientServiceClient, func()) {
	// Build gRPC service
	aggregateStore := hwes_test.NewAggregateStore()
	patientGrpcService := api.NewPatientGrpcService(aggregateStore)

	common.Setup("tasks-svc", "test", common.WithFakeAuthOnly())

	// Start Server
	grpcServer := grpc.NewServer(common.DefaultInterceptorChain())
	pb.RegisterPatientServiceServer(grpcServer, patientGrpcService)
	conn, closer := common_test.StartGRPCServer(ctx, grpcServer)

	client := pb.NewPatientServiceClient(conn)

	return client, closer
}

func setup(t *testing.T) (ctx context.Context, client pb.PatientServiceClient, redisMock redismock.ClientMock, teardown func()) {
	ctx = context.Background()
	client, teardown = server(ctx)
	ctx = common_test.AuthenticatedUserContext(ctx, uuid.NewString())

	redisClient, redisMock := redismock.NewClientMock()
	tracking.SetLRU(decaying_lru.CustomSetup("tasks-svc-test-"+t.Name(), 10, time.Second, 20, nil, redisClient))

	return ctx, client, redisMock, teardown
}

func TestPatientGrpcService_GetPatientValidation(t *testing.T) {
	ctx, client, _, teardown := setup(t)
	defer teardown()

	// ID missing -> Error
	_, err := client.GetPatient(ctx, &pb.GetPatientRequest{Id: ""})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty ids")

	// ID no uuid -> Error
	_, err = client.GetPatient(ctx, &pb.GetPatientRequest{Id: "asdasdasdsa"})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid ids")

	// ID Valid -> No Error
	_, err = client.GetPatient(ctx, &pb.GetPatientRequest{Id: uuid.NewString()})
	assert.NoError(t, err, "rejects valid ids")
}

func TestPatientGrpcService_CreatePatient(t *testing.T) {
	// Setup
	ctx, client, _, teardown := setup(t)
	defer teardown()

	// First, create a new Patient
	humanReadableIdentifier := "Test patient"
	notes := "notes"

	createPatientResponse, err := client.CreatePatient(ctx, &pb.CreatePatientRequest{HumanReadableIdentifier: humanReadableIdentifier, Notes: &notes})
	if !assert.NoError(t, err, "could not create patient") {
		return
	}

	// new patient's id must be a uuid
	_, err = uuid.Parse(createPatientResponse.Id)
	if !assert.NoError(t, err, "created patient's id is not a uuid") {
		return
	}

	// Now, fetch newly created patient
	getPatientResponse, err := client.GetPatient(ctx, &pb.GetPatientRequest{Id: createPatientResponse.Id})
	if !assert.NoError(t, err, "could not get after create") {
		return
	}
	assert.Equal(t, humanReadableIdentifier, getPatientResponse.HumanReadableIdentifier)
	assert.Equal(t, notes, getPatientResponse.Notes)
}

func TestPatientGrpcService_UpdatePatient(t *testing.T) {
	ctx, client, _, teardown := setup(t)
	defer teardown()

	// Initial values
	humanReadableIdentifier1 := "Test patient"
	notes1 := "notes"

	// First, create a new patient
	createPatientResponse, err := client.CreatePatient(ctx, &pb.CreatePatientRequest{HumanReadableIdentifier: humanReadableIdentifier1, Notes: &notes1})
	if !assert.NoError(t, err, "could not create patient") {
		return
	}

	// Then, update the values
	humanReadableIdentifier2 := "update"
	notes2 := "test"

	_, err = client.UpdatePatient(ctx, &pb.UpdatePatientRequest{
		Id:                      createPatientResponse.Id,
		HumanReadableIdentifier: &humanReadableIdentifier2,
		Notes:                   &notes2,
	})
	if !assert.NoError(t, err, "update failed") {
		return
	}

	// Finally, fetch new state
	getPatientResponse, err := client.GetPatient(ctx, &pb.GetPatientRequest{Id: createPatientResponse.Id})
	if !assert.NoError(t, err, "could not get updated patient") {
		return
	}

	assert.Equal(t, humanReadableIdentifier2, getPatientResponse.HumanReadableIdentifier)
	assert.Equal(t, notes2, getPatientResponse.Notes)
}
