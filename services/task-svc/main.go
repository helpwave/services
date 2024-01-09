package main

import (
	"common"
	"context"
	pb "gen/proto/services/task_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	"hwdb"
	"hwes"
	"hwgorm"
	"task-svc/internal/bed"
	"task-svc/internal/feature"
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

	if feature.IsEventSourcingEnabled() {
		log.Info().
			Str("FEATURE_FLAG", feature.FeatureFlagEventSourcing).
			Msg("feature flag enabled")
		hwes.SetupEventStoreByEnv()
	} else {
		log.Info().
			Str("FEATURE_FLAG", feature.FeatureFlagEventSourcing).
			Msg("feature flag disabled")
	}

	hwgorm.SetupDatabaseByEnvs() // TODO: to be removed

	closeDBPool := hwdb.SetupDatabaseFromEnv(context.Background())
	defer closeDBPool()

	tracking.SetupTracking(ServiceName, 10, 24*time.Hour, 20)

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
