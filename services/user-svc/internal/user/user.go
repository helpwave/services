package user

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	events "gen/libs/events/v1"
	pb "gen/services/user_svc/v1"
	"hwdb"

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
	userRepo := user_repo.New(hwdb.GetDB())

	userID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var createdUser user_repo.User
	result, err := hwdb.Optional(userRepo.GetUserById)(ctx, userID)
	err = hwdb.Error(ctx, err)
	switch {
	case err != nil:
		return nil, err
	case result != nil:
		return nil, status.Error(codes.InvalidArgument, "user already exists")
	default:
		hash := sha256.Sum256([]byte(userID.String()))
		avatarUrl := fmt.Sprintf("%s%s", "https://source.boringavatars.com/marble/128/", hex.EncodeToString(hash[:]))

		createdUser, err = userRepo.CreateUser(ctx, user_repo.CreateUserParams{
			ID:        userID,
			Email:     req.Email,
			Nickname:  req.Nickname,
			Name:      req.Name,
			AvatarUrl: &avatarUrl,
		})
		err = hwdb.Error(ctx, err)
		if err != nil {
			return nil, err
		}
	}
	return &pb.CreateUserResponse{Id: createdUser.ID.String()}, nil
}

func (s ServiceServer) ReadPublicProfile(
	ctx context.Context,
	req *pb.ReadPublicProfileRequest,
) (*pb.ReadPublicProfileResponse, error) {
	userRepo := user_repo.New(hwdb.GetDB())

	userID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	user, err := hwdb.Optional(userRepo.GetUserById)(ctx, userID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	} else if user == nil {
		return nil, status.Error(codes.Internal, "record not found")
	}

	return &pb.ReadPublicProfileResponse{
		Id:        user.ID.String(),
		Name:      user.Name,
		Nickname:  user.Nickname,
		AvatarUrl: user.AvatarUrl,
	}, nil
}

func HandleUserUpdatedEvent(ctx context.Context, evt *daprcmn.TopicEvent) (retry bool, err error) {
	log := zlog.Ctx(ctx)
	userRepo := user_repo.New(hwdb.GetDB())

	var payload events.UserUpdatedEvent
	if err := proto.Unmarshal(evt.RawData, &payload); err != nil {
		log.Error().Err(err).Send()
		return true, err
	}

	userId, err := uuid.Parse(payload.Id)
	if err != nil {
		log.Error().Err(err).Send()
		return true, err
	}

	err = userRepo.UpdateUser(ctx, user_repo.UpdateUserParams{
		ID:       userId,
		Email:    payload.Email,
		Name:     payload.Name,
		Nickname: payload.Nickname,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return true, err
	}

	return false, nil
}
