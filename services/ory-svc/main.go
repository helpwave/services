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
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwutil"
	"net/http"
)

const ServiceName = "ory-svc"

// Version is set at compile time
var Version string

var DaprPubsub string

var daprClient *daprc.GRPCClient

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

	addr := common.ResolveAddrFromEnv()
	service := daprd.NewService(addr)

	if err := service.AddServiceInvocationHandler("/after_registration_webhook", afterRegistrationWebhookHandler); err != nil {
		zlog.Fatal().Str("endpoint", "after_registration_webhook").Err(err).Msg("could not add service invocation handler")
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
		return nil, err
	}

	userID, err := uuid.Parse(payload.UserId)
	if err != nil {
		return nil, err
	}

	userCreatedEvent := &events.UserCreatedEvent{
		Id:       userID.String(),
		Email:    payload.Email,
		Nickname: payload.Nickname,
		Name:     payload.Name,
	}

	if err := common.PublishMessage(ctx, daprClient, DaprPubsub, "USER_CREATED", userCreatedEvent); err != nil {
		return nil, err
	}

	return nil, nil // 200 OK
}
