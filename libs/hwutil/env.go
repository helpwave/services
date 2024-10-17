package hwutil

import (
	"os"

	"github.com/rs/zerolog/log"
)

// GetEnvOr returns the environment variable named `key` or returns a default value
func GetEnvOr(key, fallback string) string {
	value, found := os.LookupEnv(key)
	if !found {
		log.Debug().Msgf("%s not set, use fallback: %s", key, fallback)
		return fallback
	}
	return value
}

func MustGetEnv(key string) string {
	value, found := os.LookupEnv(key)
	if !found {
		log.Fatal().Msgf("%s env variable missing", key)
	}
	return value
}

// HasEnv considers a key with the empty value as set
func HasEnv(key string) bool {
	_, found := os.LookupEnv(key)
	return found
}
