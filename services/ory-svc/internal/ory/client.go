package ory

import (
	"common"
	"context"
	ory "github.com/ory/client-go"
	zlog "github.com/rs/zerolog/log"
	"hwutil"
	"net/url"
)

func prepareCtxForOry(ctx context.Context) context.Context {
	return context.WithValue(ctx, ory.ContextAccessToken, hwutil.MustGetEnv("ORY_APIKEY"))
}

func MustNewOryClient() *ory.APIClient {
	hwutil.MustGetEnv("ORY_APIKEY") // Test env for later usage

	host, err := url.Parse(common.DEFAULT_OAUTH_ISSUER_URL)
	if err != nil {
		zlog.Fatal().Err(err).Send()
	}

	config := ory.NewConfiguration()
	config.Host = host.Host

	return ory.NewAPIClient(config)
}
