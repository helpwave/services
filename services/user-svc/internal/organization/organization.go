package organization

import (
	"common"
	"context"
	"fmt"
	"gen/proto/libs/events/v1"
	pb "gen/proto/services/user_svc/v1"
	daprc "github.com/dapr/go-sdk/client"
	daprcmn "github.com/dapr/go-sdk/service/common"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/proto"
	"gorm.io/gorm"
	"hwgorm"
)

type InvitationState string

const (
	Accepted InvitationState = "accepted"
	Rejected InvitationState = "rejected"
	Pending  InvitationState = "pending"
)

type Base struct {
	LongName     string `gorm:"column:long_name"`
	ShortName    string `gorm:"column:short_name"`
	ContactEmail string `gorm:"column:contact_email"`
	AvatarUrl    string `gorm:"column:avatar_url"`
	IsPersonal   bool   `gorm:"column:is_personal"`
}

type Organization struct {
	Base
	ID              uuid.UUID    `gorm:"column:id"`
	CreatedByUserId uuid.UUID    `gorm:"column:created_by_user_id"`
	Members         []Membership `gorm:"foreignKey:OrganizationID"`
	Invitations     []Invitation `gorm:"foreignKey:OrganizationID"`
}

type Membership struct {
	ID             uuid.UUID `gorm:"primaryKey,column:id"`
	UserID         uuid.UUID `gorm:"column:user_id"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
	IsAdmin        bool      `gorm:"column:is_admin;default:False"`
}

type Invitation struct {
	ID             uuid.UUID       `gorm:"column:id"`
	OrganizationID uuid.UUID       `gorm:"column:organization_id"`
	Email          string          `gorm:"column:email"`
	State          InvitationState `gorm:"column:state"`
}

var UserCreatedEventSubscription = &daprcmn.Subscription{
	PubsubName: "pubsub",
	Topic:      "USER_CREATED",
	Route:      "/pubsub/user_created/v1",
}

type ServiceServer struct {
	pb.UnimplementedOrganizationServiceServer
	daprClient *daprc.GRPCClient
}

func NewServiceServer(daprClient *daprc.GRPCClient) *ServiceServer {
	return &ServiceServer{
		daprClient: daprClient,
	}
}

func (s ServiceServer) CreateOrganization(ctx context.Context, req *pb.CreateOrganizationRequest) (*pb.CreateOrganizationResponse, error) {
	claims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	userID, err := uuid.Parse(claims.Sub)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	organization, err := CreateOrganizationAndAddUser(
		ctx,
		Base{
			LongName:     req.LongName,
			ShortName:    req.ShortName,
			ContactEmail: req.ContactEmail,
			IsPersonal:   req.IsPersonal,
		},
		userID,
	)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	return &pb.CreateOrganizationResponse{
		Id: organization.ID.String(),
	}, nil
}

// CreateOrganizationForUser internal method for other services
// TODO: Make sure that internal methods are not exposed via API gateway
func (s ServiceServer) CreateOrganizationForUser(ctx context.Context, req *pb.CreateOrganizationForUserRequest) (*pb.CreateOrganizationForUserResponse, error) {
	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	organization, err := CreateOrganizationAndAddUser(
		ctx,
		Base{
			LongName:     req.LongName,
			ShortName:    req.ShortName,
			ContactEmail: req.ContactEmail,
			IsPersonal:   req.IsPersonal,
		},
		userID,
	)

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	return &pb.CreateOrganizationForUserResponse{
		Id: organization.ID.String(),
	}, nil
}

func (s ServiceServer) GetOrganization(ctx context.Context, req *pb.GetOrganizationRequest) (*pb.GetOrganizationResponse, error) {
	db := hwgorm.GetDB(ctx)

	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organization, err := GetOrganizationById(db, id)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	// TODO: Move members out of GetOrganizationResponse into GetMembers with pagination
	var members []*pb.GetOrganizationMember
	for _, member := range organization.Members {
		members = append(members, &pb.GetOrganizationMember{UserId: member.UserID.String()})
	}

	return &pb.GetOrganizationResponse{
		Id:           organization.ID.String(),
		LongName:     organization.LongName,
		ShortName:    organization.ShortName,
		ContactEmail: organization.ContactEmail,
		AvatarUrl:    organization.AvatarUrl,
		IsPersonal:   false,
		Members:      members,
	}, nil
}

func (s ServiceServer) AddMember(ctx context.Context, req *pb.AddMemberRequest) (*pb.AddMemberResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := AddUserToOrganization(ctx, db, userID, organizationID); err != nil {
		return nil, err
	}

	log.Info().
		Str("userID", userID.String()).
		Str("organizationID", organizationID.String()).
		Msg("user added to organization")

	return &pb.AddMemberResponse{}, nil
}

func (s ServiceServer) RemoveMember(ctx context.Context, req *pb.RemoveMemberRequest) (*pb.RemoveMemberResponse, error) {
	log := zlog.Ctx(ctx)
	db := hwgorm.GetDB(ctx)

	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	member := Membership{
		UserID:         userID,
		OrganizationID: organizationID,
	}
	if err := db.Delete(&member).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("userID", userID.String()).
		Str("organizationID", organizationID.String()).
		Msg("user removed from organization")

	return &pb.RemoveMemberResponse{}, nil
}

func (s ServiceServer) InviteMember(ctx context.Context, req *pb.InviteMemberRequest) (*pb.InviteMemberResponse, error) {
	db := hwgorm.GetDB(ctx)
	log := zlog.Ctx(ctx)

	organizationId, err := uuid.Parse(req.OrganizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	invite := Invitation{
		Email:          req.Email,
		OrganizationID: organizationId,
		State:          Pending,
	}

	// Check if organisation exists
	_, err = GetOrganizationById(db, organizationId)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "organisation not found")
		}
	}

	if err := db.Create(&invite).Error; err != nil {
		log.Warn().Err(err).Msg("database error")
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("email", req.Email). // TODO: Revisited for privacy reasons
		Str("organizationId", organizationId.String()).
		Msg("user invited to organization")

	return &pb.InviteMemberResponse{}, nil
}

func CreateOrganizationAndAddUser(ctx context.Context, attr Base, userID uuid.UUID) (*Organization, error) {
	db := hwgorm.GetDB(ctx)

	var organization Organization
	err := db.Transaction(func(tx *gorm.DB) error {
		organizationPtr, err := CreateOrganization(ctx, tx, attr, userID)
		if err != nil {
			return err
		}

		organization = *organizationPtr

		if err := AddUserToOrganization(ctx, tx, userID, organization.ID); err != nil {
			return err
		}

		// Make the creating user admin of the organization
		if err := ChangeMembershipAdminStatus(db, userID, organization.ID, true); err != nil {
			return err
		}

		userCreatedEvent := &events.OrganizationCreatedEvent{
			Id:     organization.ID.String(),
			UserId: userID.String(),
		}

		daprClient := common.MustNewDaprGRPCClient()

		if err := common.PublishMessage(ctx, daprClient, "pubsub", "ORGANIZATION_CREATED", userCreatedEvent); err != nil {
			return err
		}

		// TODO: Dispatch UserJoinedOrganizationEvent

		return nil
	})

	if err != nil {
		return nil, err
	}

	return &organization, nil
}

func CreateOrganization(ctx context.Context, db *gorm.DB, attr Base, creatorUserId uuid.UUID) (*Organization, error) {
	log := zlog.Ctx(ctx)

	// TODO: Auth

	organization := Organization{
		Base: Base{
			LongName:     attr.LongName,
			ShortName:    attr.ShortName,
			ContactEmail: attr.ContactEmail,
			AvatarUrl:    attr.AvatarUrl,
			IsPersonal:   attr.IsPersonal,
		},
		CreatedByUserId: creatorUserId,
		Members:         []Membership{},
	}

	if err := db.Create(&organization).Error; err != nil {
		return nil, err
	}

	log.Info().
		Str("organizationId", organization.ID.String()).
		Str("userId", creatorUserId.String()).
		Msg("organization created")

	return &organization, nil
}

func AddUserToOrganization(ctx context.Context, db *gorm.DB, userId uuid.UUID, organizationId uuid.UUID) error {
	log := zlog.Ctx(ctx)

	organization := Organization{ID: organizationId}
	member := Membership{
		UserID: userId,
	}

	if err := db.Model(&organization).Association("Members").Append(&member); err != nil {
		return err
	}

	log.Info().
		Str("organizationId", organizationId.String()).
		Str("userId", userId.String()).
		Msg("added user to organization")

	// TODO: Dispatch UserJoinedOrganizationEvent

	return nil
}

func GetOrganizationById(db *gorm.DB, id uuid.UUID) (*Organization, error) {
	organization := Organization{ID: id}

	if err := db.Preload("Members").First(&organization).Error; err != nil {
		return nil, err
	}

	return &organization, nil
}

func HandleUserCreatedEvent(ctx context.Context, evt *daprcmn.TopicEvent) (retry bool, err error) {
	log := zlog.Ctx(ctx)

	var payload events.UserCreatedEvent
	if err := proto.Unmarshal(evt.RawData, &payload); err != nil {
		log.Error().Err(err).Msg("could not convert USER_CREATED event data to UserCreatedEvent")
		return true, err
	}

	userId, err := uuid.Parse(payload.Id)
	if err != nil {
		log.Error().Err(err).Msg("could not convert Id of USER_CREATED event to UUID")
		return true, err
	}

	if _, err := CreateOrganizationAndAddUser(ctx, Base{
		LongName:     fmt.Sprintf("%s personal organization", payload.Nickname),
		ShortName:    payload.Nickname,
		ContactEmail: payload.Email,
		IsPersonal:   true,
	}, userId); err != nil {
		log.Error().Err(err).Str("userId", userId.String()).Msg("could not create organization")
		return true, err
	}

	return false, nil
}

func ChangeMembershipAdminStatus(db *gorm.DB, userID uuid.UUID, organizationID uuid.UUID, isAdmin bool) error {
	member := Membership{
		OrganizationID: organizationID,
		UserID:         userID,
	}

	if err := db.First(&member).Update("is_admin", isAdmin).Error; err != nil {
		return err
	}

	return nil
}
