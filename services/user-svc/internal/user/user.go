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
	"gorm.io/gorm"
	"hwgorm"
	pbhelpersEvents "proto_helpers/events/v1"
)

type Base struct {
	Email    string `gorm:"column:email"`
	Nickname string `gorm:"column:nickname"`
	Name     string `gorm:"column:name"`
}

type User struct {
	Base
	ID uuid.UUID `gorm:"column:id"`
}

func createUser(ctx context.Context, db *gorm.DB, user User) (*User, error) {
	log := zlog.Ctx(ctx)

	if err := db.Create(&user).Error; err != nil {
		return nil, err
	}

	log.Info().
		Str("userId", user.ID.String()).
		Msg("user created")

	return &user, nil
}

func getUserById(ctx context.Context, id uuid.UUID) (*User, error) {
	db := hwgorm.GetDB(ctx)

	user := User{ID: id}

	if err := db.First(&user).Error; err != nil {
		return nil, err
	}

	return &user, nil
}

func updateUser(ctx context.Context, db *gorm.DB, id uuid.UUID, attr map[string]interface{}) error {
	user := User{ID: id}

	if err := db.Model(&user).Updates(attr).Error; err != nil {
		return err
	}

	return nil
}

var UserUpdatedEventSubscription = &daprcmn.Subscription{
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

func (s ServiceServer) CreateUser(ctx context.Context, req *pb.CreateUserRequest) (*pb.CreateUserResponse, error) {
	log := zlog.Ctx(ctx)

	userID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	db := hwgorm.GetDB(ctx)

	var user *User
	if existingUser, _ := getUserById(ctx, userID); existingUser == nil {
		user, err = createUser(ctx, db, User{
			ID: userID,
			Base: Base{
				Email:    req.Email,
				Nickname: req.Nickname,
				Name:     req.Name,
			},
		})

		if err != nil {
			return nil, status.Error(codes.Internal, err.Error())
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
		log.Error().Err(err).Msg("could not publish message")
	}

	return &pb.CreateUserResponse{Id: user.ID.String()}, nil
}

func HandleUserUpdatedEvent(ctx context.Context, evt *daprcmn.TopicEvent) (retry bool, err error) {
	log := zlog.Ctx(ctx)

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

	db := hwgorm.GetDB(ctx)

	if err := updateUser(ctx, db, userID, pbhelpersEvents.UpdatesMapForUserUpdatedEvent(&payload)); err != nil {
		log.Error().Err(err).Send()
		return true, err
	}

	return false, nil
}
