package hwtesting

import (
	"context"
	spicedb "github.com/Mariscal6/testcontainers-spicedb-go"
	zlog "github.com/rs/zerolog/log"
	"os"
)

const ImageSpiceDB = "authzed/spicedb:spicev1.31.0"
const SpiceDBToken = "helpwave"

func startSpiceDB(ctx context.Context) (endpoint string, teardown func()) {
	container, err := spicedb.Run(ctx, ImageSpiceDB, spicedb.SecretKeyCustomizer{SecretKey: SpiceDBToken})
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not start spicedb")
	}
	endpoint = container.GetEndpoint(ctx)
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("could not stop spicedb")
		}
	}
}

func SetSpiceEnv(endpoint string) {
	err := os.Setenv("ZED_ENDPOINT", endpoint)
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not set ZED_ENDPOINT")
	}
	err = os.Setenv("ZED_TOKEN", SpiceDBToken)
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not set ZED_TOKEN")
	}
}
