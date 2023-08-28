package main

import (
	"common"
	pb "gen/proto/services/task_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwgorm"
	"task-svc/internal/bed"
	"task-svc/internal/patient"
	"task-svc/internal/room"
	"task-svc/internal/task"
	"task-svc/internal/task-template"
	"task-svc/internal/tracking"
	"task-svc/internal/ward"
	"time"
)

const ServiceName = "task-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	hwgorm.SetupDatabaseByEnvs()
	tracking.SetupTracking(ServiceName, 5, 4*24*time.Hour, 10)

	common.StartNewGRPCServer(common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()
		pb.RegisterTaskServiceServer(grpcServer, task.NewServiceServer())
		pb.RegisterPatientServiceServer(grpcServer, patient.NewServiceServer())
		pb.RegisterWardServiceServer(grpcServer, ward.NewServiceServer())
		pb.RegisterRoomServiceServer(grpcServer, room.NewServiceServer())
		pb.RegisterBedServiceServer(grpcServer, bed.NewServiceServer())
		pb.RegisterTaskTemplateServiceServer(grpcServer, task_template.NewServiceServer())
	})
}
