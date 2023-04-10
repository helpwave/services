package main

import (
	"common"
	pb "gen/proto/services/user_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwgorm"
	"hwutil"
	"user-svc/internal/organization"
	"user-svc/internal/user"
)

const ServiceName = "user-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, false) // TODO: enable auth when KC -> ory migration is done

	hwgorm.SetupDatabase(
		hwutil.GetEnvOr("POSTGRES_HOST", "localhost"),
		hwutil.GetEnvOr("POSTGRES_USER", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PASSWORD", "postgres"),
		hwutil.GetEnvOr("POSTGRES_DB", "postgres"),
		hwutil.GetEnvOr("POSTGRES_PORT", "5432"),
	)

	common.StartNewGRPCServer(hwutil.GetAddr(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		daprClient := common.MustNewDaprGRPCClient()

		pb.RegisterUserServiceServer(grpcServer, user.NewServiceServer())

		common.MustAddTopicEventHandler(server, organization.UserCreatedEventSubscription, organization.HandleUserCreatedEvent)
		pb.RegisterOrganizationServiceServer(grpcServer, organization.NewServiceServer(daprClient))
	})
}
