package common

import (
	"context"
	"github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/proto"
	"reflect"
	"time"

	daprc "github.com/dapr/go-sdk/client"
	daprcmn "github.com/dapr/go-sdk/service/common"
)

func MustAddTopicEventHandler(service daprcmn.Service, sub *daprcmn.Subscription, eventHandler daprcmn.TopicEventHandler) {
	if err := service.AddTopicEventHandler(sub, eventHandler); err != nil {
		log.Fatal().
			Err(err).
			Interface("sub", sub).
			Msg("failed to add topic event handler")
	}
}

// PublishMessage encodes a proto message and publishes it to the topic
// It already takes care of logging, so you may ignore the returned error
func PublishMessage(ctx context.Context, client daprc.Client, pubsub string, topic string, message proto.Message) error {
	bytes, err := proto.Marshal(message)
	if err != nil {
		log.Ctx(ctx).
			Error().
			Err(err).
			Msgf("could not marshal message for topic %s", topic)
		return err
	}

	err = client.PublishEvent(ctx, pubsub, topic, bytes)
	if err != nil {
		log.Ctx(ctx).
			Error().
			Err(err).
			Msgf("could not publish message for topic %s", topic)
		return err
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

	if reflect.TypeOf(client) != reflect.TypeOf(&daprc.GRPCClient{}) {
		log.Fatal().Msg("Dapr client does not implement GRPCClient")
	}

	return client.(*daprc.GRPCClient)
}

// PrepCtxForSvcToSvcCall returns a context that can be used with Dapr specific service to service gRPC calls
func PrepCtxForSvcToSvcCall(parentCtx context.Context, targetDaprAppId string) (context.Context, context.CancelFunc, error) {
	md, ok := metadata.FromIncomingContext(parentCtx)
	if !ok {
		return nil, nil, status.Errorf(codes.Internal, "No incoming metadata in context")
	}
	outgoingCtx := metadata.NewOutgoingContext(parentCtx, md)

	timeout := time.Second * 3
	ctx, cancel := context.WithTimeout(outgoingCtx, timeout)
	ctx = metadata.AppendToOutgoingContext(ctx, "dapr-app-id", targetDaprAppId)

	return ctx, cancel, nil
}
