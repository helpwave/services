package api_test

import (
	"common"
	common_test "common/test"
	"context"
	"decaying_lru"
	pb "gen/services/tasks_svc/v1"
	"github.com/go-redis/redismock/v9"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	hwes_test "hwes/test"
	"tasks-svc/internal/patient/api"
	"tasks-svc/internal/patient/handlers"
	"tasks-svc/internal/tracking"
	"testing"
	"time"
)

func server() (context.Context, pb.PatientServiceClient, func()) {
	// Build gRPC service
	aggregateStore := hwes_test.NewAggregateStore()
	patientHandlers := handlers.NewPatientHandlers(aggregateStore)

	patientGrpcService := api.NewPatientGrpcService(aggregateStore, patientHandlers)

	ctx := common.Setup("tasks-svc", "test", common.WithFakeAuthOnly())

	// Start Server
	grpcServer := grpc.NewServer(common.DefaultInterceptorChain())
	pb.RegisterPatientServiceServer(grpcServer, patientGrpcService)
	conn, closer := common_test.StartGRPCServer(ctx, grpcServer)

	client := pb.NewPatientServiceClient(conn)

	return ctx, client, closer
}

func setup(t *testing.T) (ctx context.Context, client pb.PatientServiceClient, redisMock redismock.ClientMock, teardown func()) {
	ctx, client, teardown = server()
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

func TestPatientGrpcService_AssignBed_Validation(t *testing.T) {
	ctx, client, _, teardown := setup(t)
	defer teardown()

	// id empty
	_, err := client.AssignBed(ctx, &pb.AssignBedRequest{Id: "", BedId: ""})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty id")

	// id invalid
	_, err = client.AssignBed(ctx, &pb.AssignBedRequest{Id: "asdasdasdasd", BedId: "sdfs"})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid id")

	// valid
	_, err = client.AssignBed(ctx, &pb.AssignBedRequest{Id: uuid.NewString(), BedId: uuid.NewString()})
	assert.NoError(t, err, "rejects valid request")
}

func TestPatientGrpcService_UnassignBed_Validation(t *testing.T) {
	ctx, client, _, teardown := setup(t)
	defer teardown()

	// id empty
	_, err := client.UnassignBed(ctx, &pb.UnassignBedRequest{Id: ""})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty id")

	// id invalid
	_, err = client.UnassignBed(ctx, &pb.UnassignBedRequest{Id: "asdasdasdasd"})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid id")

	// valid
	_, err = client.UnassignBed(ctx, &pb.UnassignBedRequest{Id: uuid.NewString()})
	assert.NoError(t, err, "rejects valid request")
}

func TestPatientGrpcService_DischargePatient_Validation(t *testing.T) {
	ctx, client, _, teardown := setup(t)
	defer teardown()

	// id empty
	_, err := client.DischargePatient(ctx, &pb.DischargePatientRequest{Id: ""})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty id")

	// id invalid
	_, err = client.DischargePatient(ctx, &pb.DischargePatientRequest{Id: "asdasdasdasd"})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid id")

	// valid
	_, err = client.DischargePatient(ctx, &pb.DischargePatientRequest{Id: uuid.NewString()})
	assert.NoError(t, err, "rejects valid request")
}

func TestPatientGrpcService_ReadmitPatient_Validation(t *testing.T) {
	ctx, client, _, teardown := setup(t)
	defer teardown()

	// id empty
	_, err := client.ReadmitPatient(ctx, &pb.ReadmitPatientRequest{PatientId: ""})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty id")

	// id invalid
	_, err = client.ReadmitPatient(ctx, &pb.ReadmitPatientRequest{PatientId: "asdasdasdasd"})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid id")

	// valid
	_, err = client.ReadmitPatient(ctx, &pb.ReadmitPatientRequest{PatientId: uuid.NewString()})
	assert.NoError(t, err, "rejects valid request")
}

func TestPatientGrpcService_DeletePatient(t *testing.T) {
	ctx, client, _, teardown := setup(t)
	defer teardown()

	// id empty
	_, err := client.DeletePatient(ctx, &pb.DeletePatientRequest{Id: ""})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts empty id")

	// id invalid
	_, err = client.DeletePatient(ctx, &pb.DeletePatientRequest{Id: "asdasdasdasd"})
	common_test.AssertStatusError(t, err, codes.InvalidArgument, "accepts invalid id")

	// valid
	_, err = client.DeletePatient(ctx, &pb.DeletePatientRequest{Id: uuid.NewString()})
	assert.NoError(t, err, "rejects valid request")
}

// TODO: test GetRecentPatients, once we have a running redis instance (#458)
