package main

import (
	"common"
	"context"
	pb "gen/proto/services/user_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwdb"
	"user-svc/internal/organization"
	"user-svc/internal/user"
)

const ServiceName = "user-svc"

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, common.WithAuth(), common.WithUnauthenticatedMethods([]string{
		"/proto.services.user_svc.v1.UserService/CreateUser",
		"/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser",
		"/proto.services.user_svc.v1.OrganizationService/AddMember",
		"/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser",
	}))

	closeDBPool := hwdb.SetupDatabaseFromEnv(context.Background())
	defer closeDBPool()

	common.StartNewGRPCServer(context.Background(), common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		daprClient := common.MustNewDaprGRPCClient()

		common.MustAddTopicEventHandler(server, user.UserUpdatedEventSubscription, user.HandleUserUpdatedEvent)
		pb.RegisterUserServiceServer(grpcServer, user.NewServiceServer())

		pb.RegisterOrganizationServiceServer(grpcServer, organization.NewServiceServer(daprClient))
	})
}
