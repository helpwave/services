package hwtesting

import (
	"context"
	"os"

	zlog "github.com/rs/zerolog/log"
	"github.com/testcontainers/testcontainers-go/modules/redis"
)

const ImageRedis = "redis:6"

func startRedis(ctx context.Context) (endpoint string, teardown func()) {
	container, err := redis.Run(ctx, ImageRedis)
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not start redis")
	}
	endpoint, err = container.Endpoint(ctx, "")
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not get access to redis endpoint")
	}
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("could not stop redis")
		}
	}
}

func SetRedisEnv(endpoint string) {
	err := os.Setenv("REDIS_ADDR", endpoint)
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not set REDIS_ADDR")
	}
}
