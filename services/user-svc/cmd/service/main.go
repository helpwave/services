package service

import (
	"common"
	pb "gen/services/user_svc/v1"
	hwspicedb "hwauthz/spicedb"
	"hwdb"

	daprd "github.com/dapr/go-sdk/service/grpc"
	zlog "github.com/rs/zerolog/log"

	"user-svc/internal/hwkc"
	"user-svc/internal/organization"
	"user-svc/internal/user"
)

const ServiceName = "user-svc"

func Main(version string, ready func()) {
	ctx := common.Setup(ServiceName, version, common.WithAuth(),
		common.WithNonOrganizationMethod(pb.OrganizationService_CreatePersonalOrganization_FullMethodName),
	)

	ctx, closeDBPool := hwdb.SetupDatabaseFromEnv(ctx)
	defer closeDBPool()

	kc, err := hwkc.BuildClient(ctx)
	if err != nil {
		zlog.Fatal().Err(err).Msg("cannot create Keycloak client")
	}

	authz := hwspicedb.NewSpiceDBAuthZ()

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		common.MustAddTopicEventHandler(server, user.UserUpdatedEventSubscription, user.HandleUserUpdatedEvent)
		pb.RegisterUserServiceServer(grpcServer, user.NewServiceServer(authz))

		pb.RegisterOrganizationServiceServer(grpcServer, organization.NewServiceServer(kc, authz))

		if ready != nil {
			ready()
		}
	})

	// Shutdown cleanly
	common.Shutdown(nil)
}
