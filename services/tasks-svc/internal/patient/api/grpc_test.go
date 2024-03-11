package api_test

import (
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/google/uuid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/test/bufconn"
	hwes_test "hwes/test"
	"log"
	"net"
	"tasks-svc/internal/patient/api"
	"testing"
)

func server(ctx context.Context) (pb.PatientServiceClient, func()) {
	buffer := 1024 * 1024
	listener := bufconn.Listen(buffer)

	aggregateStore := hwes_test.NewAggregateStore()
	patientGrpcService := api.NewPatientGrpcService(aggregateStore)

	grpcServer := grpc.NewServer()

	pb.RegisterPatientServiceServer(grpcServer, patientGrpcService)
	go func() {
		if err := grpcServer.Serve(listener); err != nil {
			log.Fatal(err)
		}
	}()

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

	client := pb.NewPatientServiceClient(conn)

	return client, closer
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
