package main

import (
	"common"
	pb "gen/services/task_svc/v1"
	"hwdb"
	"time"

	daprd "github.com/dapr/go-sdk/service/grpc"

	"task-svc/internal/bed"
	"task-svc/internal/patient"
	"task-svc/internal/room"
	"task-svc/internal/task"
	"task-svc/internal/task-template"
	"task-svc/internal/tracking"
	"task-svc/internal/ward"
)

const ServiceName = "task-svc"

// Version is set at compile time
var Version string

func main() {
	ctx := common.Setup(ServiceName, Version, common.WithAuth())

	closeDBPool := hwdb.SetupDatabaseFromEnv(ctx)
	defer closeDBPool()

	tracking.SetupTracking(ctx, ServiceName, 10, 24*time.Hour, 20)

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()
		pb.RegisterTaskServiceServer(grpcServer, task.NewServiceServer())
		pb.RegisterPatientServiceServer(grpcServer, patient.NewServiceServer())
		pb.RegisterWardServiceServer(grpcServer, ward.NewServiceServer())
		pb.RegisterRoomServiceServer(grpcServer, room.NewServiceServer())
		pb.RegisterBedServiceServer(grpcServer, bed.NewServiceServer())
		pb.RegisterTaskTemplateServiceServer(grpcServer, task_template.NewServiceServer())
	})
}
