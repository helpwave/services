package hwneo

import (
	"context"
	"github.com/neo4j/neo4j-go-driver/v5/neo4j"
	"github.com/rs/zerolog/log"
	"hwutil"
)

func SetupNeo4JFromEnv(ctx context.Context) (func(), neo4j.DriverWithContext) {
	log.Info().Msg("connecting to neo4j")

	dbUri := hwutil.GetEnvOr("NEO4J_DB_URI", "http://localhost")
	dbUser := hwutil.GetEnvOr("NEO4J_DB_USER", "root")
	dbPass := hwutil.GetEnvOr("NEO4J_DB_PASS", "ChangeMe4r")

	d, err := neo4j.NewDriverWithContext(dbUri, neo4j.BasicAuth(dbUser, dbPass, ""))
	if err = d.VerifyConnectivity(ctx); err != nil {
		panic(err)
	}
	log.Info().Msg("connected to neo4j")

	return func() {
		log.Info().Msg("disconnecting neo4j")
		if err := d.Close(ctx); err != nil {
			log.Error().Err(err).Msg("failed to close connection to neo4j")
		}
	}, d
}
