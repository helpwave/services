package decaying_lru

import (
	"context"
	"crypto/tls"
	"github.com/redis/go-redis/v9"
	"github.com/rs/zerolog/log"
	"hwutil"
	"strings"
	"time"
)

// Setup creates a DecayingLRU and sets it up from env
// Size is the max size of the LRU
// decay is the time after which a key is evicted, reset with every write
// We expect a gc for a key to run every invP write instructions
func Setup(serviceName string, size int64, decay time.Duration, invP int) DecayingLRU {
	return CustomSetup(serviceName, size, decay, invP, nil)
}

// DefaultRedisOptions collects values from env (read the README so see which vars are respected)
// You can update the struct and use it with CustomSetup instead of Setup
func DefaultRedisOptions(serviceName string) *redis.Options {
	var tlsConfig *tls.Config = nil
	if strings.ToLower(hwutil.GetEnvOr("INSECURE_REDIS_NO_TLS", "false")) != "true" {
		log.Error().Msg("connecting to redis without TLS")
		tlsConfig = &tls.Config{
			MinVersion: tls.VersionTLS13,
		}
	}

	return &redis.Options{
		Addr:       hwutil.MustGetEnv("REDIS_ADDR"),
		ClientName: serviceName,
		OnConnect:  nil, // TODO: inject script
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

func CustomSetup(serviceName string, size int64, decay time.Duration, invP int, redisOptions *redis.Options) DecayingLRU {
	redisClient := redis.NewClient(redisOptionsOrDefault(serviceName, redisOptions))
	return DecayingLRU{
		ctx:         context.Background(),
		redisClient: redisClient,
		decay:       decay,
		size:        size,
		invP:        invP,
	}
}
