package main

import (
	"common"
	"context"
	"errors"
	"gen/proto/libs/events/v1"
	pb "gen/proto/services/ory_svc/v1"
	daprc "github.com/dapr/go-sdk/client"
	daprcmn "github.com/dapr/go-sdk/service/common"
	daprd "github.com/dapr/go-sdk/service/http"
	"github.com/go-chi/chi/v5"
	"github.com/google/uuid"
	ory "github.com/ory/client-go"
	zlog "github.com/rs/zerolog/log"
	"hwutil"
	"net/http"
	"net/url"
	oryInt "ory-svc/internal/ory"
)

const ServiceName = "ory-svc"

// Version is set at compile time
var Version string

var DaprPubsub string

var daprClient *daprc.GRPCClient

var oryClient *ory.APIClient

func newErrAndLog(ctx context.Context, msg string) error {
	log := zlog.Ctx(ctx)
	err := errors.New(msg)
	log.Warn().Err(err).Send()
	return err
}

func main() {
	common.Setup(ServiceName, Version, false)
	DaprPubsub = hwutil.GetEnvOr("DAPR_PUBSUB", "pubsub")

	daprClient = common.MustNewDaprGRPCClient()
	oryClient = oryInt.MustNewOryClient()

	router := chi.NewRouter()
	router.Use(InjectResponseWriterAndRequestIntoContext())

	addr := common.ResolveAddrFromEnv()
	service := daprd.NewServiceWithMux(addr, router)

	if err := service.AddServiceInvocationHandler("/after_registration_webhook", afterRegistrationWebhookHandler); err != nil {
		zlog.Fatal().Str("endpoint", "after_registration_webhook").Err(err).Msg("could not add service invocation handler")
	}

	if err := service.AddServiceInvocationHandler("/oauth2_consent", oauth2ConsentHandler); err != nil {
		zlog.Fatal().Str("endpoint", "oauth2_consent").Err(err).Msg("could not add service invocation handler")
	}

	if err := service.Start(); err != nil {
		zlog.Fatal().Str("addr", addr).Err(err).Msg("could not start http server")
	}
}

func afterRegistrationWebhookHandler(ctx context.Context, in *daprcmn.InvocationEvent) (out *daprcmn.Content, err error) {
	if in.Verb != http.MethodPost {
		return nil, newErrAndLog(ctx, "invalid method")
	}

	if in.ContentType != "application/json" {
		return nil, newErrAndLog(ctx, "invalid content-type")
	}

	var payload pb.AfterRegistrationWebhookPayload
	if err := hwutil.ParseValidJson(in.Data, &payload); err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	userID, err := uuid.Parse(payload.UserId)
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	userCreatedEvent := &events.UserCreatedEvent{
		Id:       userID.String(),
		Email:    payload.Email,
		Nickname: payload.Nickname,
		Name:     payload.Name,
	}

	if err := common.PublishMessage(ctx, daprClient, DaprPubsub, "USER_CREATED", userCreatedEvent); err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	return nil, nil // 200 OK
}

func oauth2ConsentHandler(ctx context.Context, in *daprcmn.InvocationEvent) (out *daprcmn.Content, err error) {
	queryString, err := url.ParseQuery(in.QueryString)
	if err != nil {
		return nil, err
	}

	consentChallenge := queryString.Get("consent_challenge")
	if consentChallenge == "" {
		return nil, errors.New("key consent_challenge not in query-string")
	}

	redirectUrl, err := oryInt.HandleOAuth2Consent(ctx, oryClient, consentChallenge)
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	w, r, err := GetHttpResponseWriterAndRequestFromCtx(ctx)
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	http.Redirect(w, r, *redirectUrl, http.StatusFound)

	return nil, nil
}
