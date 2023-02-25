package main

import (
	"common"
	"fmt"
	"google.golang.org/grpc"
	"hwgorm"
	"hwutil"
	"task-svc/api"
	"task-svc/internal/patient"
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

	common.StartNewGRPCServer(addr, func(server *grpc.Server) {
		api.RegisterTaskServiceServer(server, task.NewServiceServer())
		api.RegisterPatientServiceServer(server, patient.NewServiceServer())
		api.RegisterWardServiceServer(server, ward.NewServiceServer())
	})
}
