package api_test

import (
	"common"
	"context"
	"encoding/base64"
	"encoding/json"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"github.com/stretchr/testify/assert"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
	"google.golang.org/grpc/test/bufconn"
	hwes_test "hwes/test"
	"log"
	"net"
	"tasks-svc/internal/patient/api"
	"testing"
)

func assertInvalidArgumentError(t *testing.T, err error, msg string) {
	if assert.Error(t, err, msg) {
		sE, ok := status.FromError(err)
		assert.True(t, ok, "not a status error")
		assert.Equal(t, sE.Code(), codes.InvalidArgument)
	}
}

func server(ctx context.Context) (pb.PatientServiceClient, func()) {
	common.Setup("tasks-svc", "test", common.WithFakeAuthOnly())

	// Create Listener
	buffer := 1024 * 1024
	listener := bufconn.Listen(buffer)

	// Build gRPC service with custom interceptor
	aggregateStore := hwes_test.NewAggregateStore()
	patientGrpcService := api.NewPatientGrpcService(aggregateStore)

	injectUserID := func(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
		organizationID := "3b25c6f5-4705-4074-9fc6-a50c28eba406"
		auth, err := json.Marshal(map[string]interface{}{
			"sub":           uuid.NewString(),
			"email":         "testine.test@helpwave.de",
			"name":          "Testine Test",
			"nickname":      "testine.test",
			"organizations": []string{organizationID},
		})
		if err != nil {
			log.Fatal(err)
		}
		ctx = metadata.NewIncomingContext(ctx, metadata.New(map[string]string{
			"X-Organization": organizationID,
			"Authorization":  "Bearer " + base64.StdEncoding.EncodeToString(auth),
		}))
		return next(ctx, req)
	}
	interceptors := append([]grpc.UnaryServerInterceptor{injectUserID}, common.DefaultInterceptors()...)
	chain := grpc.ChainUnaryInterceptor(interceptors...)

	grpcServer := grpc.NewServer(chain)

	// Start Server
	pb.RegisterPatientServiceServer(grpcServer, patientGrpcService)
	go func() {
		if err := grpcServer.Serve(listener); err != nil {
			log.Fatal(err)
		}
	}()

	// Start Connection
	conn, err := grpc.DialContext(ctx, "",
		grpc.WithContextDialer(func(ctx context.Context, s string) (net.Conn, error) {
			return listener.Dial()
		}),
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		log.Fatal(err)
	}

	closer := func() {
		err := listener.Close()
		if err != nil {
			log.Fatal(err)
		}
		grpcServer.Stop()
	}

	// Build client
	client := pb.NewPatientServiceClient(conn)

	return client, closer
}

func TestPatientGrpcService_GetPatientValidation(t *testing.T) {
	ctx := context.Background()
	client, closer := server(ctx)
	defer closer()

	// ID missing -> Error
	_, err := client.GetPatient(ctx, &pb.GetPatientRequest{Id: ""})
	assertInvalidArgumentError(t, err, "accepts empty ids")

	// ID no uuid -> Error
	_, err = client.GetPatient(ctx, &pb.GetPatientRequest{Id: "asdasdasdsa"})
	assertInvalidArgumentError(t, err, "accepts invalid ids")

	// ID Valid -> No Error
	_, err = client.GetPatient(ctx, &pb.GetPatientRequest{Id: uuid.NewString()})
	assert.NoError(t, err, "rejects valid ids")
}

func TestPatientGrpcService_CreatePatient(t *testing.T) {
	ctx := context.Background()
	client, closer := server(ctx)
	defer closer()

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
	ctx := context.Background()
	client, closer := server(ctx)
	defer closer()

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
