package main

import (
	"common"
	pb "gen/services/user_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwdb"
	"user-svc/internal/organization"
	"user-svc/internal/user"
)

const ServiceName = "user-svc"

// Version is set at compile time
var Version string

func main() {
	ctx := common.Setup(ServiceName, Version, common.WithAuth(), common.WithUnauthenticatedMethods([]string{
		"/services.user_svc.v1.UserService/CreateUser",
		"/services.user_svc.v1.OrganizationService/CreateOrganizationForUser",
		"/services.user_svc.v1.OrganizationService/AddMember",
		"/services.user_svc.v1.OrganizationService/GetOrganizationsByUser",
	}))

	closeDBPool := hwdb.SetupDatabaseFromEnv(ctx)
	defer closeDBPool()

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		daprClient := common.MustNewDaprGRPCClient()

		common.MustAddTopicEventHandler(server, user.UserUpdatedEventSubscription, user.HandleUserUpdatedEvent)
		pb.RegisterUserServiceServer(grpcServer, user.NewServiceServer())

		pb.RegisterOrganizationServiceServer(grpcServer, organization.NewServiceServer(daprClient))
	})
}
