package main

import (
	"common"
	"fmt"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwgorm"
	"hwutil"
	"task-svc/api"
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

	port := hwutil.GetEnvOr("PORT", "8080")
	addr := hwutil.GetEnvOr("ADDR", fmt.Sprintf(":%s", port))

	common.StartNewGRPCServer(addr, func(server *daprd.Server) {
		grpcServer := server.GrpcServer()
		api.RegisterTaskServiceServer(grpcServer, task.NewServiceServer())
		api.RegisterPatientServiceServer(grpcServer, patient.NewServiceServer())
		api.RegisterWardServiceServer(grpcServer, ward.NewServiceServer())
		api.RegisterRoomServiceServer(grpcServer, room.NewServiceServer())
	})
}
