package common

import (
	"context"
	"github.com/rs/zerolog/log"
	"google.golang.org/protobuf/proto"

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
