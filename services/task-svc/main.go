package main

import (
	"common"
	pb "gen/proto/services/task_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwgorm"
	"hwutil"
	"task-svc/internal/bed"
	"task-svc/internal/patient"
	"task-svc/internal/room"
	"task-svc/internal/task"
	"task-svc/internal/task-template"
)

const ServiceName = "task-svc"

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
		pb.RegisterTaskServiceServer(grpcServer, task.NewServiceServer())
		pb.RegisterPatientServiceServer(grpcServer, patient.NewServiceServer())
		pb.RegisterRoomServiceServer(grpcServer, room.NewServiceServer())
		pb.RegisterBedServiceServer(grpcServer, bed.NewServiceServer())
		pb.RegisterTaskTemplateServiceServer(grpcServer, task_template.NewServiceServer())
	})
}
