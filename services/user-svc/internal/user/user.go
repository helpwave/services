package user

import (
	"common"
	"context"
	"gen/proto/libs/events/v1"
	pb "gen/proto/services/user_svc/v1"
	daprcmn "github.com/dapr/go-sdk/service/common"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/protobuf/proto"
	pbhelpersEvents "proto_helpers/events/v1"
	"user-svc/internal/models"
	"user-svc/internal/repositories"
)

var RegisteredEventSubscription = &daprcmn.Subscription{
	PubsubName: "pubsub",
	Topic:      "USER_REGISTERED",
	Route:      "/pubsub/user_registered/v1",
}

var UpdatedEventSubscription = &daprcmn.Subscription{
	PubsubName: "pubsub",
	Topic:      "USER_UPDATED",
	Route:      "/pubsub/user_updated/v1",
}

type ServiceServer struct {
	pb.UnimplementedUserServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func HandleUserRegisteredEvent(ctx context.Context, evt *daprcmn.TopicEvent) (retry bool, err error) {
	log := zlog.Ctx(ctx)
	userRepository := repositories.UserRepo(ctx)

	var payload events.UserRegisteredEvent
	if err := proto.Unmarshal(evt.RawData, &payload); err != nil {
		log.Error().Err(err).Send()
		return true, err
	}

	userID, err := uuid.Parse(payload.Id)
	if err != nil {
		log.Error().Err(err).Send()
		return true, err
	}

	var user *models.User
	if existingUser, _ := userRepository.GetUserById(userID); existingUser == nil {
		avatarUrl := userRepository.GenerateDefaultAvatarUrl(userID.String())

		user, err = userRepository.CreateUser(models.User{
			ID: userID,
			BaseUser: models.BaseUser{
				Avatar:   avatarUrl,
				Email:    payload.Email,
				Nickname: payload.Nickname,
				Name:     payload.Name,
			},
		})

		if err != nil {
			log.Error().Err(err).Send()
			return true, err
		}
	}

	userCreatedEvent := &events.UserCreatedEvent{
		Id:       user.ID.String(),
		Email:    user.Email,
		Nickname: user.Nickname,
		Name:     user.Name,
	}

	daprClient := common.MustNewDaprGRPCClient()

	if err := common.PublishMessage(ctx, daprClient, "pubsub", "USER_CREATED", userCreatedEvent); err != nil {
		return true, err
	}

	return false, nil
}

func HandleUserUpdatedEvent(ctx context.Context, evt *daprcmn.TopicEvent) (retry bool, err error) {
	log := zlog.Ctx(ctx)
	userRepository := repositories.UserRepo(ctx)

	var payload events.UserUpdatedEvent
	if err := proto.Unmarshal(evt.RawData, &payload); err != nil {
		log.Error().Err(err).Send()
		return true, err
	}

	userID, err := uuid.Parse(payload.Id)
	if err != nil {
		log.Error().Err(err).Send()
		return true, err
	}

	if err := userRepository.UpdateUser(userID, pbhelpersEvents.UpdatesMapForUserUpdatedEvent(&payload)); err != nil {
		log.Error().Err(err).Send()
		return true, err
	}

	return false, nil
}
