package hwutil

import (
	"os"
)

// GetEnvOr returns the environment variable named `key` or returns a default value
func GetEnvOr(key, fallback string) string {
	value, found := os.LookupEnv(key)
	if found {
		return value
	}
	return fallback
}
