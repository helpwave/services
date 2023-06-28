package main

import (
	"common"
	pb "gen/proto/services/patient_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwgorm"
	"hwutil"
	"patient-svc/internal/patient"
)

const ServiceName = "patient-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	hwgorm.SetupDatabase(
		hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
		hwutil.GetEnvOr("POSTGRES_USER", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PASSWORD", "postgres"),
		hwutil.GetEnvOr("POSTGRES_DB", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PORT", "5432"),
	)

	common.StartNewGRPCServer(common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()
		pb.RegisterPatientServiceServer(grpcServer, patient.NewServiceServer())
	})
}
