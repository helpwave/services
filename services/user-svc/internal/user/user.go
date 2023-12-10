package user

import (
	"common"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"gen/proto/libs/events/v1"
	pb "gen/proto/services/user_svc/v1"
	"hwdb"
	pbhelpersEvents "proto_helpers/events/v1"
	"user-svc/internal/repositories"
	"user-svc/repos/user_repo"

	daprcmn "github.com/dapr/go-sdk/service/common"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/proto"
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
	userRepo := user_repo.New(hwdb.GetDB())

	userID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var createdUser user_repo.User
	result, err := hwdb.Optional(userRepo.GetUserById)(ctx, userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	} else if result != nil {
		return nil, status.Error(codes.InvalidArgument, "user already exists")
	} else {
		hash := sha256.Sum256([]byte(userID.String()))
		avatarUrl := fmt.Sprintf("%s%s", "https://source.boringavatars.com/marble/128/", hex.EncodeToString(hash[:]))

		createdUser, err = userRepo.CreateUser(ctx, user_repo.CreateUserParams{
			ID:        userID,
			Email:     req.Email,
			Nickname:  req.Nickname,
			Name:      req.Name,
			AvatarUrl: &avatarUrl,
		})
		if err != nil {
			return nil, status.Error(codes.Internal, err.Error())
		}

		userCreatedEvent := &events.UserCreatedEvent{
			Id:       createdUser.ID.String(),
			Email:    createdUser.Email,
			Nickname: createdUser.Nickname,
			Name:     createdUser.Name,
		}
		daprClient := common.MustNewDaprGRPCClient()
		if err := common.PublishMessage(ctx, daprClient, "pubsub", "USER_CREATED", userCreatedEvent); err != nil {
			log.Error().Err(err).Msg("could not publish message")
		}
	}
	return &pb.CreateUserResponse{Id: createdUser.ID.String()}, nil
}

func (s ServiceServer) ReadPublicProfile(ctx context.Context, req *pb.ReadPublicProfileRequest) (*pb.ReadPublicProfileResponse, error) {
	userRepo := user_repo.New(hwdb.GetDB())

	userID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	user, err := hwdb.Optional(userRepo.GetUserById)(ctx, userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	} else if user == nil {
		return nil, status.Error(codes.Internal, "record not found")
	}

	return &pb.ReadPublicProfileResponse{
		Id:        user.ID.String(),
		Name:      user.Name,
		Nickname:  user.Nickname,
		AvatarUrl: *user.AvatarUrl,
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
