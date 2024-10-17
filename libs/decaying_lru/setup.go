package decaying_lru

import (
	"context"
	"crypto/tls"
	"errors"
	"hwutil"
	"strings"
	"time"

	"github.com/redis/go-redis/v9"
	"github.com/rs/zerolog/log"
)

// Setup creates a DecayingLRU and sets it up from env
// Size is the max size of the LRU
// decay is the time in seconds after which a key is evicted, reset with every write
// We expect a garbage collection for a key to run every invP add calls
func Setup(ctx context.Context, serviceName string, size int64, decay time.Duration, invP int) DecayingLRU {
	return CustomSetup(ctx, serviceName, size, decay, invP, nil, nil)
}

// DefaultRedisOptions collects values from env (read the README so see which vars are respected)
// You can update the struct and use it with CustomSetup instead of Setup
func DefaultRedisOptions(serviceName string) *redis.Options {
	tlsConfig := &tls.Config{
		MinVersion: tls.VersionTLS13,
	}

	if strings.ToLower(hwutil.GetEnvOr("INSECURE_REDIS_NO_TLS", "false")) == "true" {
		log.Error().Msg("connecting to redis without TLS")
		tlsConfig = nil
	}

	return &redis.Options{
		Addr:       hwutil.GetEnvOr("REDIS_ADDR", ""),
		ClientName: serviceName,
		Username:   hwutil.GetEnvOr("REDIS_USER", ""),
		Password:   hwutil.GetEnvOr("REDIS_PASSWORD", ""),
		DB:         hwutil.MustParseInt(hwutil.GetEnvOr("REDIS_DB", "0")),
		TLSConfig:  tlsConfig,
	}
}

func redisOptionsOrDefault(serviceName string, redisOptions *redis.Options) *redis.Options {
	if redisOptions != nil {
		return redisOptions
	}
	return DefaultRedisOptions(serviceName)
}

func CustomSetup(ctx context.Context,
	serviceName string,
	size int64,
	decay time.Duration,
	invP int,
	redisOptions *redis.Options,
	redisClient *redis.Client,
) DecayingLRU {
	if redisClient == nil {
		redisClient = redis.NewClient(redisOptionsOrDefault(serviceName, redisOptions))
	}

	lru := DecayingLRU{
		redisClient: redisClient,
		decay:       decay,
		size:        size,
		invP:        invP,
	}

	if err := lru.redisClient.Get(ctx, "connectiontest").Err(); err != nil && !errors.Is(err, redis.Nil) {
		log.Error().Err(err).Msg("error during redis connection test")
	} else {
		log.Info().Msg("redis connection test ok")
	}

	return lru
}
