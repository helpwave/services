package common

import (
	"context"
	"fmt"
	"time"

	daprc "github.com/dapr/go-sdk/client"
	daprcmn "github.com/dapr/go-sdk/service/common"
	"github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/proto"
)

func MustAddTopicEventHandler(svc daprcmn.Service, sub *daprcmn.Subscription, handler daprcmn.TopicEventHandler) {
	if err := svc.AddTopicEventHandler(sub, handler); err != nil {
		log.Fatal().
			Err(err).
			Interface("sub", sub).
			Msg("failed to add topic event handler")
	}
}

// PublishMessage encodes a proto message and publishes it to the topic
// It already takes care of logging, so you may ignore the returned error
func PublishMessage(ctx context.Context, c daprc.Client, pubsub string, topic string, message proto.Message) error {
	bytes, err := proto.Marshal(message)
	if err != nil {
		log.Ctx(ctx).
			Error().
			Err(err).
			Msgf("could not marshal message for topic %s", topic)
		return fmt.Errorf("PublishMessage: could not marshal message: %w", err)
	}

	err = c.PublishEvent(ctx, pubsub, topic, bytes)
	if err != nil {
		log.Ctx(ctx).
			Error().
			Err(err).
			Msgf("could not publish message for topic %s", topic)
		return fmt.Errorf("PublishMessage: could not publish message: %w", err)
	}
	return nil
}

// MustNewDaprGRPCClient tries to create an Dapr Client (GRPCClient)
// by respecting the Dapr injected environment variables like DAPR_GRPC_PORT
func MustNewDaprGRPCClient() *daprc.GRPCClient {
	client, err := daprc.NewClient()
	if err != nil {
		log.Fatal().Err(err).Msg("could not create Dapr client")
	}

	daprClient, ok := client.(*daprc.GRPCClient)
	if !ok {
		log.Fatal().Msg("Dapr client does not implement GRPCClient")
	}

	return daprClient
}

// PrepCtxForSvcToSvcCall returns a context that can be used with Dapr specific service to service gRPC calls
func PrepCtxForSvcToSvcCall(ctx context.Context, targetDaprAppId string) (context.Context, context.CancelFunc, error) {
	md, ok := metadata.FromIncomingContext(ctx)
	if !ok {
		return nil, nil, status.Errorf(codes.Internal, "No incoming metadata in context")
	}
	outgoingCtx := metadata.NewOutgoingContext(ctx, md)

	timeout := time.Second * 3
	ctx, cancel := context.WithTimeout(outgoingCtx, timeout)
	ctx = metadata.AppendToOutgoingContext(ctx, "dapr-app-id", targetDaprAppId)

	return ctx, cancel, nil
}
