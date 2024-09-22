package hwtesting

import (
	"context"
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
	zlog "github.com/rs/zerolog/log"
	"github.com/testcontainers/testcontainers-go"
	"github.com/testcontainers/testcontainers-go/modules/postgres"
	"github.com/testcontainers/testcontainers-go/wait"
	"sync"
)

const ImagePostgres = "postgres:15.6"
const ImageEventstore = "eventstore/eventstore:23.10.1-jammy"

const PostgresUser = "postgres"
const PostgresPassword = "postgres"
const PostgresDb = "postgres"

const EsUser = "admin"
const EsPassword = "changeit"

func startPostgres(ctx context.Context) (endpoint string, teardown func()) {
	container, err := postgres.Run(ctx,
		ImagePostgres,
		postgres.WithDatabase(PostgresDb),
		postgres.WithUsername(PostgresUser),
		postgres.WithPassword(PostgresPassword),
	)
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not start postgres")
	}
	endpoint, err = container.Endpoint(ctx, "")
	if err != nil {
		zlog.Fatal().Err(err).Msg("Could not get access to postgres endpoint")
	}
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("Could not stop postgres")
		}
	}
}

func startEventstore(ctx context.Context) (endpoint string, teardown func()) {
	req := testcontainers.ContainerRequest{
		Image: ImageEventstore,
		Env: map[string]string{
			"EVENTSTORE_INSECURE":                  "true",
			"EVENTSTORE_RUN_PROJECTIONS":           "All",
			"EVENTSTORE_ENABLE_ATOM_PUB_OVER_HTTP": "true",
			"EVENTSTORE_NODE_IP":                   "0.0.0.0",
			"EVENTSTORE_CLUSTER_SIZE":              "1",
		},
		WaitingFor: wait.ForHealthCheck(),
	}
	container, err := testcontainers.GenericContainer(ctx, testcontainers.GenericContainerRequest{
		ContainerRequest: req,
		Started:          true,
	})
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not start eventstore")
	}
	info, err := container.Inspect(ctx)
	zlog.Info().Interface("info", info).Err(err).Msg("INFO")
	endpoint, err = container.PortEndpoint(ctx, "2113", "")
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not get access to eventstore endpoint")
	}
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("could not stop eventstore")
		}
	}
}

type ContainerOpt int

const (
	Postgres   ContainerOpt = iota
	Eventstore ContainerOpt = iota
)

type Endpoints []string

func (e Endpoints) Get(opt ContainerOpt) string {
	return e[opt]
}

func maxOpt(opts []ContainerOpt) int {
	m := 0
	for _, opt := range opts {
		m = max(m, int(opt))
	}
	return m
}

func StartContainers(ctx context.Context, opts ...ContainerOpt) (endpoints Endpoints, teardown func()) {
	var wg sync.WaitGroup

	endpoints = make(Endpoints, maxOpt(opts)+1)
	teardowns := make([]func(), 0)

	for _, opt := range opts {
		wg.Add(1)
		var f func(ctx context.Context) (string, func())
		if opt == Postgres {
			f = startPostgres
		} else if opt == Eventstore {
			f = startEventstore
		} else {
			panic("unknown ContainerOpt provided")
		}

		go func() {
			endpoint, teardown := f(ctx)
			endpoints[opt] = endpoint
			teardowns = append(teardowns, teardown)
			wg.Done()
		}()
	}
	wg.Wait()

	teardown = func() {
		var wg sync.WaitGroup

		for _, teardown := range teardowns {
			wg.Add(1)
			go func() {
				teardown()
				wg.Done()
			}()
		}
		wg.Wait()
	}

	return endpoints, teardown
}
