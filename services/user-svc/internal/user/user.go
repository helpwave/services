package user

import (
	"common"
	"context"
	"gen/proto/libs/events/v1"
	pb "gen/proto/services/user_svc/v1"
	daprcmn "github.com/dapr/go-sdk/service/common"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/proto"
	pbhelpersEvents "proto_helpers/events/v1"
	"user-svc/internal/models"
	"user-svc/internal/repositories"
)

var UserUpdatedEventSubscription = &daprcmn.Subscription{
	PubsubName: "pubsub",
	Topic:      "USER_UPDATED",
}

type ServiceServer struct {
	pb.UnimplementedUserServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (s ServiceServer) CreateUser(ctx context.Context, req *pb.CreateUserRequest) (*pb.CreateUserResponse, error) {
	log := zlog.Ctx(ctx)
	userRepository := repositories.UserRepo(ctx)

	userID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var user *models.User
	if existingUser, _ := userRepository.GetUserById(userID); existingUser == nil {
		avatarUrl := userRepository.GenerateDefaultAvatarUrl(userID.String())

		user, err = userRepository.CreateUser(models.User{
			ID: userID,
			BaseUser: models.BaseUser{
				Avatar:   avatarUrl,
				Email:    req.Email,
				Nickname: req.Nickname,
				Name:     req.Name,
			},
		})

		if err != nil {
			return nil, status.Error(codes.Internal, err.Error())
		}

		userCreatedEvent := &events.UserCreatedEvent{
			Id:       user.ID.String(),
			Email:    user.Email,
			Nickname: user.Nickname,
			Name:     user.Name,
		}

		daprClient := common.MustNewDaprGRPCClient()

		if err := common.PublishMessage(ctx, daprClient, "pubsub", "USER_CREATED", userCreatedEvent); err != nil {
			log.Error().Err(err).Msg("could not publish message")
		}
	}

	return &pb.CreateUserResponse{Id: user.ID.String()}, nil
}

func (s ServiceServer) ReadPublicProfile(ctx context.Context, req *pb.ReadPublicProfileRequest) (*pb.ReadPublicProfileResponse, error) {
	userRepository := repositories.UserRepo(ctx)

	userID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	user, err := userRepository.GetUserById(userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.ReadPublicProfileResponse{
		Id:        user.ID.String(),
		Name:      user.Name,
		Nickname:  user.Nickname,
		AvatarUrl: user.Avatar,
	}, nil
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
