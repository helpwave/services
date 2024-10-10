package main

import (
	"common"
	pb "gen/services/user_svc/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	zlog "github.com/rs/zerolog/log"
	"hwdb"
	"user-svc/internal/hwkc"
	"user-svc/internal/organization"
	"user-svc/internal/user"
)

const ServiceName = "user-svc"

// Version is set at compile time
var Version string

func main() {
	ctx := common.Setup(ServiceName, Version, common.WithAuth(),
		common.WithUnauthenticatedMethod("/services.user_svc.v1.UserService/CreateUser"),
		common.WithUnauthenticatedMethod("/services.user_svc.v1.OrganizationService/CreateOrganizationForUser"),
		common.WithUnauthenticatedMethod("/services.user_svc.v1.OrganizationService/AddMember"),
		common.WithUnauthenticatedMethod("/services.user_svc.v1.OrganizationService/GetOrganizationsByUser"),
		common.WithNonOrganizationMethod("/services.user_svc.v1.OrganizationService/CreatePersonalOrganization"),
	)

	closeDBPool := hwdb.SetupDatabaseFromEnv(ctx)
	defer closeDBPool()

	kc, err := hwkc.BuildClient(ctx)
	if err != nil {
		zlog.Fatal().Err(err).Msg("cannot create Keycloak client")
	}

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		common.MustAddTopicEventHandler(server, user.UserUpdatedEventSubscription, user.HandleUserUpdatedEvent)
		pb.RegisterUserServiceServer(grpcServer, user.NewServiceServer())

		pb.RegisterOrganizationServiceServer(grpcServer, organization.NewServiceServer(kc))
	})
}
