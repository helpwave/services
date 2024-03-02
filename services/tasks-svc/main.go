package main

import (
	"common"
	"context"
	pb "gen/proto/services/tasks_svc/v1"
	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/99designs/gqlgen/graphql/playground"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/rs/zerolog/log"
	"hwes/eventstoredb"
	"net/http"
	"tasks-svc/internal/task/api"
	"tasks-svc/internal/task/api/graphql/graph"
	"tasks-svc/internal/task/projections/echo"
)

const ServiceName = "tasks-svc"

// Version is set at compile time
var Version string

func main() {
	ctx, cancel := context.WithCancel(context.Background())

	common.Setup(ServiceName, Version, true)

	eventStore := eventstoredb.SetupEventStoreByEnv()
	aggregateStore := eventstoredb.NewAggregateStore(eventStore)

	go func() {
		echoProjection := echo.NewProjection(eventStore, ServiceName)
		if err := echoProjection.Subscribe(ctx); err != nil {
			log.Err(err).Msg("error during echo subscription")
			cancel()
		}
	}()

	go func() {
		resolver := graph.NewResolver(aggregateStore)
		srv := handler.NewDefaultServer(graph.NewExecutableSchema(graph.Config{Resolvers: resolver}))

		http.Handle("/", playground.Handler("GraphQL playground", "/query"))
		http.Handle("/query", srv)

		log.Printf("connect to http://localhost:%s/ for GraphQL playground", 3080)
		http.ListenAndServe("localhost:3080", nil)
	}()

	common.StartNewGRPCServer(ctx, common.ResolveAddrFromEnv(), func(server *daprd.Server) {
		grpcServer := server.GrpcServer()

		pb.RegisterTaskServiceServer(grpcServer, api.NewTaskGrpcService(aggregateStore))
	})

	// Close context
	cancel()
}
