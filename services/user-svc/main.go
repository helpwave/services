package main

import (
	"common"
	"context"
	"github.com/Nerzal/gocloak/v12"
	"github.com/google/uuid"
	"hwutil"
	"logging"
	"time"
	"user-svc/api"

	daprcmn "github.com/dapr/go-sdk/service/common"
	zlog "github.com/rs/zerolog/log"
)

const ServiceName = "user-svc"

// Version is set at compile time
var Version string

// set in prepareGocloakClient
var gocloakClient *gocloak.GoCloak
var realm string

func main() {
	common.Setup(ServiceName, Version, true)

	prepareGocloakClient()

	addr := ":" + hwutil.GetEnvOr("PORT", "8080")
	service := common.NewDaprService(addr)

	common.MustAddHWInvocationHandler(service, "/v1/create-user", createUser)
	common.MustAddHWInvocationHandler(service, "/v1/create-organization", createOrganization)

	zlog.Info().Str("addr", addr).Msg("starting dapr service")
	common.MustStartService(service)
}

// use getServiceAccountToken instead
var lastToken *gocloak.JWT = nil
var lastTokenExp time.Time

// getServiceAccountToken returns a valid token, or errors trying, do not modify it
func getServiceAccountToken(logCtx context.Context) (*gocloak.JWT, error) {
	if lastToken != nil && lastTokenExp.After(time.Now().Add(10*time.Second)) {
		return lastToken, nil
	}

	ctx := context.Background()
	clientID := hwutil.MustGetEnv("CLIENT_ID")
	clientSecret := hwutil.MustGetEnv("CLIENT_SECRET")
	token, err := gocloakClient.LoginClient(ctx, clientID, clientSecret, realm)
	if err == nil {
		lastToken = token
		lastTokenExp = hwutil.TimeInNSeconds(token.ExpiresIn)
		zlog.Ctx(logCtx).Info().Msgf("obtained new token, expires %s", lastTokenExp)
	}
	return token, err
}

func prepareGocloakClient() {
	realm = common.KeycloakRealm()
	gocloakClient = gocloak.NewClient(common.KeycloakBaseURL())

	token, err := getServiceAccountToken(context.Background())

	if err != nil {
		zlog.Fatal().Err(err).Send()
	}

	zlog.Info().Msg("obtained initial access token for service account")
	zlog.Trace().Msgf("%+v", token)
}

//
// Handlers
//

func createUser(ctx context.Context, in *daprcmn.InvocationEvent) (*common.Response, error) {
	log, logCtx := common.GetHandlerLogger("createUser", ctx)

	// Parse
	request := api.CreateUserRequestV1{}
	if err := hwutil.ParseValidJson(in.Data, &request); err != nil {
		log.Warn().Err(err).Msg("invalid input")
		return nil, err
	}

	user := gocloak.User{
		FirstName: gocloak.StringP(request.FirstName),
		LastName:  gocloak.StringP(request.LastName),
		Email:     gocloak.StringP(request.Email),
		Enabled:   gocloak.BoolP(true),
		Username:  gocloak.StringP(request.Email),
	}

	token, err := getServiceAccountToken(logCtx)
	if err != nil {
		log.Error().Err(err).Msg("could not refresh service token!")
		return nil, err
	}

	kcCtx := context.Background()

	userID, err := gocloakClient.CreateUser(kcCtx, token.AccessToken, realm, user)
	if err != nil {
		log.Warn().Err(err).Msg("could not create new user")
		return nil, err
	} else {
		log.Info().Str("userID", userID).Msg("created new user")
	}

	err = gocloakClient.SetPassword(kcCtx, token.AccessToken, userID, realm, request.Password, false)
	if err != nil {
		log.Error().Str("userID", userID).Err(err).Msg("could not set new user's password")

		// to prevent inconsistent state (every user should have a password),
		// we remove the user again

		if err := gocloakClient.DeleteUser(kcCtx, token.AccessToken, realm, userID); err != nil {
			log.
				Error().
				Str("userID", userID).
				Err(err).
				Msg("can't recover from error: could not remove new user")
		} else {
			log.Info().Str("userID", userID).Msg("removed new user due to previous error")
		}
		return nil, err
	}

	userIDUUID, err := uuid.Parse(userID)
	if err != nil {
		log.Error().Err(err).Msg("could not parse new user's id")
		return nil, err
	}

	// Response
	var response common.Response = api.CreateUserResponseV1{
		UserID: userIDUUID,
	}

	return &response, nil
}

func createOrganization(ctx context.Context, in *daprcmn.InvocationEvent) (*common.Response, error) {
	log, logCtx := common.GetHandlerLogger("createUser", ctx)

	// Authentication
	_, err := common.GetAuthClaims(ctx, logCtx)
	if err != nil {
		return nil, err
	}

	// Parse
	request := api.CreateOrgRequestV1{}
	if err := hwutil.ParseValidJson(in.Data, &request); err != nil {
		log.Warn().Err(err).Msg("invalid input")
		return nil, err
	}
	log.Debug().Str("body", logging.Formatted(request)).Send()

	// TODO: make request to keycloak

	// Response
	var response common.Response = api.CreateOrgResponseV1{
		// TODO
	}

	return &response, nil
}
