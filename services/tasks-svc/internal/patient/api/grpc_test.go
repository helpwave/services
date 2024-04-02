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
	ctx, client, _, teardown := setup(t)
	defer teardown()

	humanReadableIdentifier := "Test patient"
	notes := "notes"

	createPatientResponse, err := client.CreatePatient(ctx, &pb.CreatePatientRequest{HumanReadableIdentifier: humanReadableIdentifier, Notes: &notes})
	if err != nil {
		t.Error(err)
	}

	if _, err := uuid.Parse(createPatientResponse.GetId()); err != nil {
		t.Error(err)
	}

	getPatientResponse, err := client.GetPatient(ctx, &pb.GetPatientRequest{Id: createPatientResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if getPatientResponse.HumanReadableIdentifier != humanReadableIdentifier {
		t.Errorf("Task name: expected '%s' got '%s'", humanReadableIdentifier, getPatientResponse.HumanReadableIdentifier)
	}

	if getPatientResponse.GetNotes() != notes {
		t.Errorf("Task description: expected '%s' got '%s'", notes, getPatientResponse.GetNotes())
	}
}

func TestPatientGrpcService_UpdatePatient(t *testing.T) {
	ctx, client, _, teardown := setup(t)
	defer teardown()

	humanReadableIdentifier1 := "Test patient"
	notes1 := "notes"

	createPatientResponse, err := client.CreatePatient(ctx, &pb.CreatePatientRequest{HumanReadableIdentifier: humanReadableIdentifier1, Notes: &notes1})
	if err != nil {
		t.Error(err)
	}

	if _, err := uuid.Parse(createPatientResponse.GetId()); err != nil {
		t.Error(err)
	}

	getPatientResponse, err := client.GetPatient(ctx, &pb.GetPatientRequest{Id: createPatientResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if getPatientResponse.HumanReadableIdentifier != humanReadableIdentifier1 {
		t.Errorf("Task name: expected '%s' got '%s'", humanReadableIdentifier1, getPatientResponse.HumanReadableIdentifier)
	}

	if getPatientResponse.GetNotes() != notes1 {
		t.Errorf("Task description: expected '%s' got '%s'", notes1, getPatientResponse.GetNotes())
	}

	humanReadableIdentifier2 := "update"
	notes2 := "test"

	_, err = client.UpdatePatient(ctx, &pb.UpdatePatientRequest{
		Id:                      createPatientResponse.GetId(),
		HumanReadableIdentifier: &humanReadableIdentifier2,
		Notes:                   &notes2,
	})
	if err != nil {
		t.Error(err)
	}

	getPatientResponse, err = client.GetPatient(ctx, &pb.GetPatientRequest{Id: createPatientResponse.GetId()})
	if err != nil {
		t.Error(err)
	}

	if getPatientResponse.HumanReadableIdentifier != humanReadableIdentifier2 {
		t.Errorf("Task name: expected '%s' got '%s'", humanReadableIdentifier2, getPatientResponse.HumanReadableIdentifier)
	}

	if getPatientResponse.GetNotes() != notes2 {
		t.Errorf("Task description: expected '%s' got '%s'", notes2, getPatientResponse.GetNotes())
	}
}
