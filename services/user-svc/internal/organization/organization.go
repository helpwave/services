package organization

import (
	"common"
	"context"
	"gen/proto/libs/events/v1"
	pb "gen/proto/services/user_svc/v1"
	"hwdb"
	"hwgorm"
	"hwutil"
	pbhelpers "proto_helpers/user_svc/v1"
	"user-svc/internal/models"
	"user-svc/internal/repositories"
	"user-svc/repos/organization_repo"

	daprc "github.com/dapr/go-sdk/client"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
)

type InvitationState = string

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
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organization, err := CreateOrganizationAndAddUser(
		ctx,
		organization_repo.Organization{
			LongName:     req.LongName,
			ShortName:    req.ShortName,
			ContactEmail: req.ContactEmail,
			IsPersonal:   req.IsPersonal,
		},
		userID,
	)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
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
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organization, err := CreateOrganizationAndAddUser(
		ctx,
		organization_repo.Organization{
			LongName:     req.LongName,
			ShortName:    req.ShortName,
			ContactEmail: req.ContactEmail,
			IsPersonal:   req.IsPersonal,
		},
		userID,
	)

	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.CreateOrganizationForUserResponse{
		Id: organization.ID.String(),
	}, nil
}

func (s ServiceServer) GetOrganization(ctx context.Context, req *pb.GetOrganizationRequest) (*pb.GetOrganizationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())
	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := organizationRepo.GetOrganizationWithMemberById(ctx, id)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}
	if len(rows) == 0 {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}

	organization := rows[0].Organization
	members := hwutil.FlatMap(rows, func(row organization_repo.GetOrganizationWithMemberByIdRow) **pb.GetOrganizationMember {
		if !row.UserID.Valid {
			return nil
		}
		val := &pb.GetOrganizationMember{
			UserId: row.UserID.UUID.String(),
		}
		return &val
	})

	// TODO: Move members out of GetOrganizationResponse into GetMembers with pagination
	return &pb.GetOrganizationResponse{
		Id:           organization.ID.String(),
		LongName:     organization.LongName,
		ShortName:    organization.ShortName,
		ContactEmail: organization.ContactEmail,
		IsPersonal:   *organization.IsPersonal, // must exist
		AvatarUrl:    organization.AvatarUrl,
		Members:      members,
	}, nil
}

func getOrganizationsByUser(ctx context.Context, userID uuid.UUID) ([]models.Organization, error) {
	db := hwgorm.GetDB(ctx)

	var organizations []models.Organization
	err := db.
		Preload("Members.User").
		Preload("Members").
		Joins("JOIN memberships ON memberships.organization_id = organizations.id").
		Where("memberships.user_id = ?", userID).
		Find(&organizations).Error
	if err != nil {
		return nil, err
	}

	return organizations, nil
}

func (s ServiceServer) GetOrganizationsByUser(ctx context.Context, req *pb.GetOrganizationsByUserRequest) (*pb.GetOrganizationsByUserResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())
	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}
	rows, err := organizationRepo.GetOrganizationsWithMembersByUser(ctx, userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}
	if len(rows) == 0 {
		return &pb.GetOrganizationsByUserResponse{}, nil
	}

	processedOrganizations := make(map[uuid.UUID]bool)

	organizationsResponse := hwutil.FlatMap(rows, func(organizationRow organization_repo.GetOrganizationsWithMembersByUserRow) **pb.GetOrganizationsByUserResponse_Organization {
		organization := organizationRow.Organization
		if _, processed := processedOrganizations[organization.ID]; processed {
			return nil
		}
		processedOrganizations[organization.ID] = true
		members := hwutil.FlatMap(rows, func(memberRow organization_repo.GetOrganizationsWithMembersByUserRow) **pb.GetOrganizationsByUserResponse_Organization_Member {
			if memberRow.Organization.ID != organization.ID {
				return nil
			}
			val := &pb.GetOrganizationsByUserResponse_Organization_Member{
				UserId:    memberRow.ID.String(),
				Email:     memberRow.Email,
				Nickname:  memberRow.Nickname,
				AvatarUrl: *memberRow.AvatarUrl,
			}
			return &val
		})

		val := &pb.GetOrganizationsByUserResponse_Organization{
			Id:           organization.ID.String(),
			LongName:     organization.LongName,
			ShortName:    organization.ShortName,
			ContactEmail: organization.ContactEmail,
			AvatarUrl:    organization.AvatarUrl, // can be nil
			IsPersonal:   false,
			Members:      members,
		}
		return &val
	})

	return &pb.GetOrganizationsByUserResponse{
		Organizations: organizationsResponse,
	}, nil
}

func (s ServiceServer) GetOrganizationsForUser(ctx context.Context, _ *pb.GetOrganizationsForUserRequest) (*pb.GetOrganizationsForUserResponse, error) {
	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizations, err := getOrganizationsByUser(ctx, userID)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "id not found")
		}
	}

	mappedOrganizations := hwutil.Map(organizations, func(organization models.Organization) *pb.GetOrganizationsForUserResponse_Organization {
		return &pb.GetOrganizationsForUserResponse_Organization{
			Id:           organization.ID.String(),
			LongName:     organization.LongName,
			ShortName:    organization.ShortName,
			ContactEmail: organization.ContactEmail,
			AvatarUrl:    organization.AvatarUrl,
			IsPersonal:   false,
			Members: hwutil.Map(organization.Members, func(membership models.Membership) *pb.GetOrganizationsForUserResponse_Organization_Member {
				return &pb.GetOrganizationsForUserResponse_Organization_Member{
					UserId:    membership.UserID.String(),
					AvatarUrl: membership.User.Avatar,
					Email:     membership.User.Email,
					Nickname:  membership.User.Nickname,
				}
			}),
		}
	})

	return &pb.GetOrganizationsForUserResponse{
		Organizations: mappedOrganizations,
	}, nil
}

func (s ServiceServer) UpdateOrganization(ctx context.Context, req *pb.UpdateOrganizationRequest) (*pb.UpdateOrganizationResponse, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organization := models.Organization{ID: organizationID}
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

	organization := models.Organization{ID: organizationID}

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

	member := models.Membership{
		UserID:         userID,
		OrganizationID: organizationID,
	}
	if err := db.Delete(&member, "user_id = ?", userID).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("userID", userID.String()).
		Str("organizationID", organizationID.String()).
		Msg("user removed from organization")

	return &pb.RemoveMemberResponse{}, nil
}

func (s ServiceServer) InviteMember(ctx context.Context, req *pb.InviteMemberRequest) (*pb.InviteMemberResponse, error) {
	organizationRepo := repositories.OrganizationRepo(ctx)

	db := hwgorm.GetDB(ctx)
	log := zlog.Ctx(ctx)

	organizationId, err := uuid.Parse(req.OrganizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// Check if an organization exists
	_, err = organizationRepo.GetOrganizationById(organizationId)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "organization not found")
		}
	}

	isInOrganization, err := organizationRepo.IsInOrganizationByEmail(organizationId, req.Email)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "organization not found")
		}
	}

	if isInOrganization {
		return nil, status.Error(codes.InvalidArgument, "cannot invite a user that is already a member")
	}

	// check if already an invitation exists
	invitation := models.Invitation{}

	if err := db.Where("(email = ? AND organization_id = ?) AND (state IN ?)", req.Email, organizationId, []pb.InvitationState{pb.InvitationState_INVITATION_STATE_PENDING, pb.InvitationState_INVITATION_STATE_ACCEPTED}).First(&invitation).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			// create invitation because doesn't exist
			invitation = models.Invitation{
				Email:          req.Email,
				OrganizationID: organizationId,
				State:          pb.InvitationState_INVITATION_STATE_PENDING,
			}

			if err := db.Create(&invitation).Error; err != nil {
				return nil, status.Error(codes.Internal, err.Error())
			}

			log.Info().
				Str("email", req.Email). // TODO: Revisited for privacy reasons
				Str("organizationID", organizationId.String()).
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

	var invitations []models.Invitation
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

	invitationsResponse = hwutil.Map(invitations, func(invitation models.Invitation) *pb.GetInvitationsByOrganizationResponse_Invitation {
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

	var invitations []models.Invitation
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

	invitationsResponse = hwutil.Map(invitations, func(invitation models.Invitation) *pb.GetInvitationsByUserResponse_Invitation {
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

func (s ServiceServer) GetMembersByOrganization(ctx context.Context, req *pb.GetMembersByOrganizationRequest) (*pb.GetMembersByOrganizationResponse, error) {
	db := hwgorm.GetDB(ctx)

	organizationID, err := uuid.Parse(req.Id)
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
		return nil, status.Error(codes.Unauthenticated, "Not a member of this organization")
	}

	var members []models.Membership
	if err := db.Where("organization_id = ?", organizationID).Preload("User").Find(&members).Error; err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, "invalid state")
		}
	}

	if err != nil {
		return nil, err
	}

	mappedMembers := hwutil.Map(members, func(member models.Membership) *pb.GetMembersByOrganizationResponse_Member {
		return &pb.GetMembersByOrganizationResponse_Member{
			UserId:    member.User.ID.String(),
			AvatarUrl: member.User.Avatar,
			Email:     member.User.Email,
			Nickname:  member.User.Nickname,
		}
	})

	return &pb.GetMembersByOrganizationResponse{
		Members: mappedMembers,
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
	invitation := models.Invitation{
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
	invitation := models.Invitation{
		ID: invitationId,
	}

	if err := db.Model(&invitation).Update("state", pb.InvitationState_INVITATION_STATE_REJECTED).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.DeclineInvitationResponse{}, nil
}

func (s ServiceServer) RevokeInvitation(ctx context.Context, req *pb.RevokeInvitationRequest) (*pb.RevokeInvitationResponse, error) {
	organizationRepo := repositories.OrganizationRepo(ctx)

	db := hwgorm.GetDB(ctx)
	log := zlog.Ctx(ctx)

	invitationId, err := uuid.Parse(req.InvitationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	currentInvitation, err := organizationRepo.GetInvitationById(invitationId)
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	organizationID := currentInvitation.OrganizationID
	inviteeEmail := currentInvitation.Email

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	isAdmin, err := organizationRepo.IsAdminInOrganization(organizationID, userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	if !isAdmin {
		return nil, status.Error(codes.PermissionDenied, "only admins can revoke invitations")
	}

	if currentInvitation.State != pb.InvitationState_INVITATION_STATE_PENDING {
		return nil, status.Error(codes.InvalidArgument, "only pending invitations can be revoked")
	}

	// Update invitation state
	invitation := models.Invitation{
		ID: invitationId,
	}

	if err := db.Model(&invitation).Update("state", pb.InvitationState_INVITATION_STATE_REVOKED).Error; err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("admin", userID.String()).
		Str("organizationID", organizationID.String()).
		Str("inviteeEmail", inviteeEmail).
		Msg("admin revoked invitation to organization")

	return &pb.RevokeInvitationResponse{}, nil
}

func CreateOrganizationAndAddUser(ctx context.Context, attr organization_repo.Organization, userID uuid.UUID) (*organization_repo.Organization, error) {
	db := hwdb.GetDB()

	tx, err := db.Begin(ctx)
	if err != nil {
		return nil, err
	}
	defer tx.Rollback(ctx)

	organizationRepo := organization_repo.New(db).WithTx(tx)

	organization, err := organizationRepo.CreateOrganization(ctx, organization_repo.CreateOrganizationParams{
		LongName:        attr.LongName,
		ShortName:       attr.ShortName,
		ContactEmail:    attr.ContactEmail,
		AvatarUrl:       attr.AvatarUrl,
		IsPersonal:      attr.IsPersonal,
		CreatedByUserID: userID,
	})
	if err != nil {
		return nil, err
	}

	if err := organizationRepo.AddUserToOrganization(ctx, organization_repo.AddUserToOrganizationParams{
		UserID:         userID,
		OrganizationID: organization.ID,
	}); err != nil {
		return nil, err
	}

	if err := organizationRepo.ChangeMembershipAdminStatus(ctx, organization_repo.ChangeMembershipAdminStatusParams{
		UserID:         userID,
		OrganizationID: organization.ID,
	}); err != nil {
		return nil, err
	}

	organizationCreatedEvent := &events.OrganizationCreatedEvent{
		Id:     organization.ID.String(),
		UserId: userID.String(),
	}
	daprClient := common.MustNewDaprGRPCClient()
	if err := common.PublishMessage(ctx, daprClient, "pubsub", "ORGANIZATION_CREATED", organizationCreatedEvent); err != nil {
		return nil, err
	}

	// TODO: Dispatch UserJoinedOrganizationEvent

	tx.Commit(ctx)
	return &organization, nil
}

func AddUserToOrganization(ctx context.Context, db *gorm.DB, userId uuid.UUID, organizationId uuid.UUID) error {
	log := zlog.Ctx(ctx)

	organization := models.Organization{ID: organizationId}
	member := models.Membership{
		UserID: userId,
	}

	if err := db.Model(&organization).Association("Members").Append(&member); err != nil {
		return err
	}

	log.Info().
		Str("organizationID", organizationId.String()).
		Str("userID", userId.String()).
		Msg("added user to organization")

	// TODO: Dispatch UserJoinedOrganizationEvent

	return nil
}

func GetInvitationByIdAndEmail(db *gorm.DB, email string, id uuid.UUID) (*models.Invitation, error) {

	var invitation models.Invitation
	if err := db.Where("id = ? AND email = ?", id, email).First(&invitation).Error; err != nil {
		return nil, err
	}

	return &invitation, nil
}

func IsInOrganization(db *gorm.DB, organizationID uuid.UUID, userID uuid.UUID) (bool, error) {
	membership := models.Membership{
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
