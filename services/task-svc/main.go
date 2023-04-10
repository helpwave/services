package main

import (
	"common"
	pb "gen/proto/services/task_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwgorm"
	"hwutil"
	"task-svc/internal/patient"
	"task-svc/internal/room"
	"task-svc/internal/task"
	"task-svc/internal/ward"
)

const ServiceName = "task-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, false)

	hwgorm.SetupDatabase(
		hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
		hwutil.GetEnvOr("POSTGRES_USER", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PASSWORD", "postgres"),
		hwutil.GetEnvOr("POSTGRES_DB", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PORT", "5432"),
	)

	common.StartNewGRPCServer(hwutil.GetAddr(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()
		pb.RegisterTaskServiceServer(grpcServer, task.NewServiceServer())
		pb.RegisterPatientServiceServer(grpcServer, patient.NewServiceServer())
		pb.RegisterWardServiceServer(grpcServer, ward.NewServiceServer())
		pb.RegisterRoomServiceServer(grpcServer, room.NewServiceServer())
	})
}
