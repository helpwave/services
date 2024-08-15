package authz

import (
	"common"
	"context"
	openfga "github.com/openfga/go-sdk"
	"github.com/openfga/go-sdk/client"
	zlog "github.com/rs/zerolog"
	"hwutil"
)

var fgaClient *client.OpenFgaClient

func Setup(ctx context.Context) {
	log := *zlog.Ctx(ctx)

	log.Debug().Msg("setting up fga")

	config := getBasicConfiguration()
	config.StoreId = getStoreId(ctx)
	log = log.With().Str("fga.storeId", config.StoreId).Logger()
	config.AuthorizationModelId = getAuthorizationModel(ctx, config)
	log = log.With().Str("fga.authorizationModelId", config.AuthorizationModelId).Logger()

	var err error
	fgaClient, err = client.NewSdkClient(config)

	if err != nil {
		log.Fatal().Err(err).Msg("authz setup: could not create new fga client")
	}

	log.Info().Msg("fga client ready")
}

func mustGetNewClient(ctx context.Context, cfg *client.ClientConfiguration) *client.OpenFgaClient {
	log := zlog.Ctx(ctx)

	fgaClient, err := client.NewSdkClient(cfg)

	if err != nil {
		log.Fatal().Err(err).Interface("config", cfg).Msg("could not create fga client")
	}

	return fgaClient
}

func getBasicConfiguration() *client.ClientConfiguration {
	apiURL := hwutil.MustGetEnv("FGA_API_URL") // required, e.g. https://api.fga.example

	// TODO:

	return &client.ClientConfiguration{
		Configuration: openfga.Configuration{
			ApiUrl:         apiURL,
			Credentials:    nil,
			DefaultHeaders: nil,
			UserAgent:      "",
			Debug:          false,
			HTTPClient:     nil,
			RetryParams:    nil,
		},
		ApiUrl:               apiURL,
		StoreId:              "",
		AuthorizationModelId: "",
		Credentials:          nil,
		DefaultHeaders:       nil,
		Debug:                false,
		HTTPClient:           nil,
		RetryParams:          nil,
	}
}

// getStoreId gets the FGA_STORE_ID from env,
// in development mode it tries to discover/create one, if missing
func getStoreId(ctx context.Context) string {
	log := zlog.Ctx(ctx)

	storeId := hwutil.GetEnvOr("FGA_STORE_ID", "")
	if storeId != "" {
		return storeId
	}

	if common.Mode == common.ProductionMode {
		log.Fatal().Msg("FGA_STORE_ID not set")
	}

	log.Warn().Msg("FGA_STORE_ID not set. Discovering or creating store on my own, this won't happen in production!")

	tempClient := mustGetNewClient(ctx, getBasicConfiguration())

	storesResponse, err := tempClient.ListStores(ctx).Execute()

	if err != nil {
		log.Fatal().Err(err).Msg("could not query existing fga stores")
	}

	stores := storesResponse.GetStores()
	log.Debug().Interface("stores", stores).Send()

	if len(stores) != 0 {
		storeId = stores[0].Id
		log.Info().Msgf("using fga store '%s' with id %s", stores[0].Name, storeId)
		return storeId
	}

	log.Info().Msg("No fga store available, creating one")

	resp, err := tempClient.CreateStore(ctx).Body(client.ClientCreateStoreRequest{Name: "helpwave"}).Execute()
	if err != nil {
		log.Fatal().Err(err).Msg("could not create new fga store")
	}

	log.Info().Msgf("using fga store '%s' with id %s", resp.Name, resp.Id)
	return resp.Id
}

// getAuthorizationModel gets the FGA_MODEL_ID from env,
// in development mode it tries to discover/create one, if missing
func getAuthorizationModel(ctx context.Context, cfg *client.ClientConfiguration) string {
	log := zlog.Ctx(ctx)

	modelId := hwutil.GetEnvOr("FGA_MODEL_ID", "")
	if modelId != "" {
		return modelId
	}

	log.Warn().Msg("FGA_MODEL_ID not set, default behavior is to use the latest model, this might cause issues!")
	return ""
}
