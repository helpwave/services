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
	"hwutil"
	pbhelpers "proto_helpers/user_svc/v1"
)

type InvitationState = string

type Base struct {
	LongName     string `gorm:"column:long_name"`
	ShortName    string `gorm:"column:short_name"`
	ContactEmail string `gorm:"column:contact_email"`
	AvatarUrl    string `gorm:"column:avatar_url"`
	IsPersonal   bool   `gorm:"column:is_personal"`
}

type Organization struct {
	Base
	ID              uuid.UUID    `gorm:"column:id;default:uuid_generate_v4()"`
	CreatedByUserId uuid.UUID    `gorm:"column:created_by_user_id"`
	Members         []Membership `gorm:"foreignKey:OrganizationID"`
	Invitations     []Invitation `gorm:"foreignKey:OrganizationID"`
}

type Membership struct {
	ID             uuid.UUID    `gorm:"primaryKey,column:id;default:uuid_generate_v4()"`
	UserID         uuid.UUID    `gorm:"column:user_id"`
	OrganizationID uuid.UUID    `gorm:"column:organization_id"`
	Organization   Organization `gorm:"foreignKey:OrganizationID"`
	IsAdmin        bool         `gorm:"column:is_admin;default:False"`
}

type Invitation struct {
	ID             uuid.UUID `gorm:"column:id;default:uuid_generate_v4()"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
	Organization   Organization
	Email          string             `gorm:"column:email"`
	State          pb.InvitationState `gorm:"column:state"`
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
	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	organization, err := CreateOrganizationAndAddUser(
		ctx,
		Base{
			LongName:     req.LongName,
			ShortName:    req.ShortName,
			ContactEmail: req.ContactEmail,
			IsPersonal:   req.GetIsPersonal(),
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
			IsPersonal:   req.GetIsPersonal(),
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

func (s ServiceServer) GetOrganizationsByUser(ctx context.Context, _ *pb.GetOrganizationsByUserRequest) (*pb.GetOrganizationsByUserResponse, error) {
	db := hwgorm.GetDB(ctx)

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	var organizations []Organization
	err = db.Preload("Members").Joins("JOIN memberships ON memberships.organization_id = organizations.id").
		Where("memberships.user_id = ?", userID).
		Find(&organizations).Error
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	mappedOrganizations := hwutil.Map(organizations, func(organization Organization) *pb.GetOrganizationsByUserResponse_Organization {
		return &pb.GetOrganizationsByUserResponse_Organization{
			Id:           organization.ID.String(),
			LongName:     organization.LongName,
			ShortName:    organization.ShortName,
			ContactEmail: organization.ContactEmail,
			AvatarUrl:    organization.AvatarUrl,
			IsPersonal:   false,
			Members: hwutil.Map(organization.Members, func(membership Membership) *pb.GetOrganizationsByUserResponse_Organization_Member {
				return &pb.GetOrganizationsByUserResponse_Organization_Member{
					UserId:    membership.UserID.String(),
					AvatarUrl: "",
					Email:     membership.UserID.String() + "@helpwave.de", // TODO replace ones Users are implemented
					Nickname:  membership.UserID.String(),                  // TODO replace ones Users are implemented
				}
			}),
		}
	})

	return &pb.GetOrganizationsByUserResponse{
		Organizations: mappedOrganizations,
	}, nil
}

func (s ServiceServer) UpdateOrganization(ctx context.Context, req *pb.UpdateOrganizationRequest) (*pb.UpdateOrganizationResponse, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organization := Organization{ID: organizationID}
	updates := pbhelpers.UpdatesMapForUpdateOrganizationRequest(req)

	if err := db.Model(&organization).Updates(updates).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateOrganizationResponse{}, nil
}

func (s ServiceServer) DeleteOrganization(ctx context.Context, req *pb.DeleteOrganizationRequest) (*pb.DeleteOrganizationResponse, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organization := Organization{ID: organizationID}

	if err := db.Delete(&organization).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	organizationDeletedEvent := &events.OrganizationDeletedEvent{
		Id: organizationID.String(),
	}

	daprClient := common.MustNewDaprGRPCClient()

	if err := common.PublishMessage(ctx, daprClient, "pubsub", "ORGANIZATION_DELETED", organizationDeletedEvent); err != nil {
		return nil, err
	}

	return &pb.DeleteOrganizationResponse{}, nil
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

	// Check if an organization exists
	_, err = GetOrganizationById(db, organizationId)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "organisation not found")
		}
	}

	// check if already an invitation exists
	invitation := Invitation{}

	if err := db.Where("(email = ? AND organization_id = ?) AND (state IN ?)", req.Email, organizationId, []pb.InvitationState{pb.InvitationState_INVITATION_STATE_PENDING, pb.InvitationState_INVITATION_STATE_ACCEPTED}).First(&invitation).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			// create invitation because doesn't exist
			invitation = Invitation{
				Email:          req.Email,
				OrganizationID: organizationId,
				State:          pb.InvitationState_INVITATION_STATE_PENDING,
			}

			if err := db.Create(&invitation).Error; err != nil {
				return nil, status.Error(codes.Internal, err.Error())
			}

			log.Info().
				Str("email", req.Email). // TODO: Revisited for privacy reasons
				Str("organizationId", organizationId.String()).
				Msg("user invited to organization")
		}
	}

	return &pb.InviteMemberResponse{
		Id: invitation.ID.String(),
	}, nil
}

func (s ServiceServer) GetInvitationsByOrganization(ctx context.Context, req *pb.GetInvitationsByOrganizationRequest) (*pb.GetInvitationsByOrganizationResponse, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := uuid.Parse(req.OrganizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	hasAccess, err := IsInOrganization(db, organizationID, userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	if !hasAccess {
		return nil, status.Error(codes.Unauthenticated, "Not a member of this Organization")
	}

	var invitations []Invitation
	var invitationsResponse []*pb.GetInvitationsByOrganizationResponse_Invitation

	filter := db.Where("organization_id = ?", organizationID)
	if req.State != nil {
		filter = filter.Where("state = ?", req.State)
	}

	if err := filter.Find(&invitations).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "invalid state")
		}
	}

	invitationsResponse = hwutil.Map(invitations, func(invitation Invitation) *pb.GetInvitationsByOrganizationResponse_Invitation {
		return &pb.GetInvitationsByOrganizationResponse_Invitation{
			Id:             invitation.ID.String(),
			Email:          invitation.Email,
			OrganizationId: invitation.OrganizationID.String(),
			State:          invitation.State,
		}
	})

	return &pb.GetInvitationsByOrganizationResponse{
		Invitations: invitationsResponse,
	}, nil
}

func (s ServiceServer) GetInvitationsByUser(ctx context.Context, req *pb.GetInvitationsByUserRequest) (*pb.GetInvitationsByUserResponse, error) {
	db := hwgorm.GetDB(ctx)

	claims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var invitations []Invitation
	var invitationsResponse []*pb.GetInvitationsByUserResponse_Invitation

	filter := db.Where("email = ?", claims.Email)
	if req.State != nil {
		filter = filter.Where("state = ?", req.State)
	}

	if err := filter.Preload("Organization").Find(&invitations).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "invalid state")
		}
	}

	invitationsResponse = hwutil.Map(invitations, func(invitation Invitation) *pb.GetInvitationsByUserResponse_Invitation {
		organization := &pb.GetInvitationsByUserResponse_Invitation_Organization{
			Id:        invitation.Organization.ID.String(),
			LongName:  invitation.Organization.LongName,
			AvatarUrl: invitation.Organization.AvatarUrl,
		}

		return &pb.GetInvitationsByUserResponse_Invitation{
			Id:           invitation.ID.String(),
			Email:        invitation.Email,
			Organization: organization,
			State:        invitation.State,
		}
	})

	return &pb.GetInvitationsByUserResponse{
		Invitations: invitationsResponse,
	}, nil
}

func (s ServiceServer) AcceptInvitation(ctx context.Context, req *pb.AcceptInvitationRequest) (*pb.AcceptInvitationResponse, error) {
	db := hwgorm.GetDB(ctx)

	invitationId, err := uuid.Parse(req.InvitationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	claims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	// Check if invite exists
	currentInvitation, err := GetInvitationByIdAndEmail(db, claims.Email, invitationId)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	if currentInvitation.State == pb.InvitationState_INVITATION_STATE_ACCEPTED {
		return &pb.AcceptInvitationResponse{}, nil
	} else if currentInvitation.State != pb.InvitationState_INVITATION_STATE_PENDING {
		return nil, status.Error(codes.InvalidArgument, "only pending invitations can be accepted")
	}

	// Update invitation state
	invitation := Invitation{
		ID: invitationId,
	}

	if err := db.Model(&invitation).Update("state", pb.InvitationState_INVITATION_STATE_ACCEPTED).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// Add user to organization
	if err := AddUserToOrganization(ctx, db, userID, currentInvitation.OrganizationID); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.AcceptInvitationResponse{}, nil
}

func (s ServiceServer) DeclineInvitation(ctx context.Context, req *pb.DeclineInvitationRequest) (*pb.DeclineInvitationResponse, error) {
	db := hwgorm.GetDB(ctx)

	invitationId, err := uuid.Parse(req.InvitationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	claims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	// Check if invite exists
	currentInvitation, err := GetInvitationByIdAndEmail(db, claims.Email, invitationId)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	if currentInvitation.State == pb.InvitationState_INVITATION_STATE_REJECTED {
		return &pb.DeclineInvitationResponse{}, nil
	} else if currentInvitation.State != pb.InvitationState_INVITATION_STATE_PENDING {
		return nil, status.Error(codes.InvalidArgument, "only pending invitations can be rejected")
	}

	// Update invitation state
	invitation := Invitation{
		ID: invitationId,
	}

	if err := db.Model(&invitation).Update("state", pb.InvitationState_INVITATION_STATE_REJECTED).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.DeclineInvitationResponse{}, nil
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
		if err := ChangeMembershipAdminStatus(ctx, tx, userID, organization.ID, true); err != nil {
			return err
		}

		organizationCreatedEvent := &events.OrganizationCreatedEvent{
			Id:     organization.ID.String(),
			UserId: userID.String(),
		}

		daprClient := common.MustNewDaprGRPCClient()

		if err := common.PublishMessage(ctx, daprClient, "pubsub", "ORGANIZATION_CREATED", organizationCreatedEvent); err != nil {
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

func GetInvitationById(db *gorm.DB, id uuid.UUID) (*Invitation, error) {
	invitation := Invitation{
		ID: id,
	}

	if err := db.First(&invitation).Error; err != nil {
		return nil, err
	}

	return &invitation, nil
}

func GetInvitationByIdAndEmail(db *gorm.DB, email string, id uuid.UUID) (*Invitation, error) {

	var invitation Invitation
	if err := db.Where("id = ? AND email = ?", id, email).First(&invitation).Error; err != nil {
		return nil, err
	}

	return &invitation, nil
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

func ChangeMembershipAdminStatus(ctx context.Context, db *gorm.DB, userID uuid.UUID, organizationID uuid.UUID, isAdmin bool) error {
	log := zlog.Ctx(ctx)

	member := Membership{
		OrganizationID: organizationID,
		UserID:         userID,
	}

	if err := db.First(&member).Update("is_admin", isAdmin).Error; err != nil {
		return err
	}

	log.Info().
		Str("organizationId", organizationID.String()).
		Str("userId", userID.String()).
		Bool("is_admin", isAdmin).
		Msg("admin status changed")

	return nil
}

func IsInOrganization(db *gorm.DB, organizationID uuid.UUID, userID uuid.UUID) (bool, error) {

	membership := Membership{
		UserID:         userID,
		OrganizationID: organizationID,
	}
	err := db.Model(&membership).Error

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return false, status.Error(codes.Internal, err.Error())
		} else {
			return false, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	return true, nil
}
