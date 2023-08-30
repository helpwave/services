package main

import (
	"common"
	pb "gen/proto/services/user_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"hwgorm"
	"user-svc/internal/organization"
	"user-svc/internal/user"
)

const ServiceName = "user-svc"

// Version is set at compile time
var Version string

func main() {
	common.SetupWithUnauthenticatedMethods(ServiceName, Version, true, &[]string{
		"/proto.services.user_svc.v1.UserService/CreateUser",
		"/proto.services.user_svc.v1.OrganizationService/CreateOrganizationForUser",
		"/proto.services.user_svc.v1.OrganizationService/AddMember",
		"/proto.services.user_svc.v1.OrganizationService/GetOrganizationsByUser",
	})

	hwgorm.SetupDatabaseByEnvs()

	common.StartNewGRPCServer(common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		daprClient := common.MustNewDaprGRPCClient()

		common.MustAddTopicEventHandler(server, user.UserUpdatedEventSubscription, user.HandleUserUpdatedEvent)
		pb.RegisterUserServiceServer(grpcServer, user.NewServiceServer())

		pb.RegisterOrganizationServiceServer(grpcServer, organization.NewServiceServer(daprClient))
	})
}
