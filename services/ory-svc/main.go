package main

import (
	"common"
	"context"
	"errors"
	"fmt"
	"gen/proto/libs/events/v1"
	pb "gen/proto/services/ory_svc/v1"
	userSvcPb "gen/proto/services/user_svc/v1"
	daprc "github.com/dapr/go-sdk/client"
	daprcmn "github.com/dapr/go-sdk/service/common"
	daprd "github.com/dapr/go-sdk/service/http"
	"github.com/go-chi/chi/v5"
	"github.com/google/uuid"
	ory "github.com/ory/client-go"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/metadata"
	"hwutil"
	"net/http"
	"net/url"
	oryInt "ory-svc/internal/ory"
	"strings"
	"time"
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

	if err := service.AddServiceInvocationHandler("/after_settings_webhook", afterSettingsWebhookHandler); err != nil {
		zlog.Fatal().Str("endpoint", "after_settings_webhook").Err(err).Msg("could not add service invocation handler")
	}

	if err := service.AddServiceInvocationHandler("/oauth2_consent", oauth2ConsentHandler); err != nil {
		zlog.Fatal().Str("endpoint", "oauth2_consent").Err(err).Msg("could not add service invocation handler")
	}

	interrupted, err := hwutil.RunUntilInterrupted(context.Background(), func() error {
		return service.Start()
	})

	if err != nil {
		zlog.Error().Str("addr", addr).Err(err).Msg("could not start http server")
	} else if interrupted {
		zlog.Info().Msg("SIGINT received")
	}

	// we don't use common.StartNewGRPCServer,
	// so we have to call Shutdown manually
	common.Shutdown()
}

func prepCtxForSvcToSvcCall(parentCtx context.Context, targetDaprAppId string) (context.Context, context.CancelFunc, error) {
	timeout := time.Second * 3
	ctx, cancel := context.WithTimeout(parentCtx, timeout)
	ctx = metadata.AppendToOutgoingContext(ctx, "dapr-app-id", targetDaprAppId)

	return ctx, cancel, nil
}

// afterRegistrationWebhookHandler handles the registration of new users from our identity provider
func afterRegistrationWebhookHandler(ctx context.Context, in *daprcmn.InvocationEvent) (out *daprcmn.Content, err error) {
	if in.Verb != http.MethodPost {
		return nil, newErrAndLog(ctx, "invalid method")
	}

	if !strings.Contains(in.ContentType, "application/json") {
		return nil, newErrAndLog(ctx, "invalid content-type")
	}

	var payload pb.AfterRegistrationWebhookPayloadRequest
	if err := hwutil.ParseValidJson(in.Data, &payload); err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	userID, err := uuid.Parse(payload.UserId)
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	ctx, cancel, err := prepCtxForSvcToSvcCall(ctx, "user-svc")
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}
	defer cancel()

	daprClient := common.MustNewDaprGRPCClient()
	userSvc := userSvcPb.NewUserServiceClient(daprClient.GrpcClientConn())
	organizationSvc := userSvcPb.NewOrganizationServiceClient(daprClient.GrpcClientConn())

	_, err = userSvc.CreateUser(ctx, &userSvcPb.CreateUserRequest{
		Id:       userID.String(),
		Email:    payload.Email,
		Nickname: payload.Nickname,
		Name:     payload.Name,
	})

	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	createOrganizationForUserResponse, err := organizationSvc.CreateOrganizationForUser(ctx, &userSvcPb.CreateOrganizationForUserRequest{
		UserId:       userID.String(),
		LongName:     fmt.Sprintf("%s personal organization", payload.Nickname),
		ShortName:    payload.Nickname,
		ContactEmail: payload.Email,
		IsPersonal:   hwutil.PtrTo(true),
	})

	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	organizationID, err := uuid.Parse(createOrganizationForUserResponse.Id)
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	// Update identity in Ory with the new organizations
	if err := oryInt.UpdateIdentityMetadataPublic(ctx, oryClient, userID, oryInt.OryIdentityMetadataPublic{
		Organizations: []string{organizationID.String()},
	}); err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	return nil, nil // 200 OK
}

func afterSettingsWebhookHandler(ctx context.Context, in *daprcmn.InvocationEvent) (out *daprcmn.Content, err error) {
	if in.Verb != http.MethodPost {
		return nil, newErrAndLog(ctx, "invalid method")
	}

	if in.ContentType != "application/json" {
		return nil, newErrAndLog(ctx, "invalid content-type")
	}

	var payload pb.AfterSettingsWebhookPayload
	if err := hwutil.ParseValidJson(in.Data, &payload); err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	userID, err := uuid.Parse(payload.UserId)
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	userUpdatedEvent := &events.UserRegisteredEvent{
		Id:       userID.String(),
		Email:    payload.Email,
		Nickname: payload.Nickname,
		Name:     payload.Name,
	}

	if err := common.PublishMessage(ctx, daprClient, DaprPubsub, "USER_UPDATED", userUpdatedEvent); err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	return nil, nil // 200 OK
}

func oauth2ConsentHandler(ctx context.Context, in *daprcmn.InvocationEvent) (out *daprcmn.Content, err error) {
	if in.Verb != http.MethodGet {
		return nil, newErrAndLog(ctx, "invalid method")
	}

	queryString, err := url.ParseQuery(in.QueryString)
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	consentChallenge := queryString.Get("consent_challenge")
	if consentChallenge == "" {
		return nil, newErrAndLog(ctx, "key consent_challenge not in query-string")
	}

	redirectUrl, idTokenClaims, err := oryInt.HandleOAuth2Consent(ctx, oryClient, consentChallenge)
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	w, r, err := GetHttpResponseWriterAndRequestFromCtx(ctx)
	if err != nil {
		return nil, newErrAndLog(ctx, err.Error())
	}

	zlog.Ctx(ctx).Info().
		Str("userID", idTokenClaims.Sub).
		Msg("OAuth2 consent given")

	http.Redirect(w, r, *redirectUrl, http.StatusFound)

	return nil, nil
}
