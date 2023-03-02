package common

import (
	daprcmn "github.com/dapr/go-sdk/service/common"
	"github.com/rs/zerolog/log"
)

func MustAddTopicEventHandler(service daprcmn.Service, sub *daprcmn.Subscription, eventHandler daprcmn.TopicEventHandler) {
	if err := service.AddTopicEventHandler(sub, eventHandler); err != nil {
		log.Fatal().
			Err(err).
			Interface("sub", sub).
			Msg("failed to add topic event handler")
	}
}
