package hwkc

import (
	"context"
	zlog "github.com/rs/zerolog/log"
	"hwutil"
)

// BuildClient is a builder for hwkc.IClient
// Based on the environment variable INSECURE_HWKC_USE_NOOP_CLIENT,
// either hwkc.Client or hwkc.NoOpClient gets returned.
func BuildClient(ctx context.Context) (IClient, error) {
	if hwutil.GetEnvOr("INSECURE_HWKC_USE_NOOP_CLIENT", "false") == "true" {
		zlog.Warn().Msg("INSECURE_HWKC_USE_NOOP_CLIENT is true, creating hwkc.NoOpClient")
		return NewNoOpClient(), nil
	}

	hasClientSecretEnv := hwutil.HasEnv("OAUTH_KC_CLIENT_SECRET")
	if !hasClientSecretEnv {
		zlog.Warn().Msg(`Creation of hwkc.NewClientFromEnv() will fail due to an empty OAUTH_KC_CLIENT_SECRET. Please check your environment variables for 'OAUTH_KC_...'
or maybe you want to use a non-production implementation of hwkc.IClient via INSECURE_HWKC_USE_NOOP_CLIENT=true.`)
	}

	return NewClientFromEnv(ctx)
}
