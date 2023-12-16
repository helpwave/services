package organization

import (
	"common"
	"context"
	"gen/proto/libs/events/v1"
	pb "gen/proto/services/user_svc/v1"
	"hwdb"
	"hwgorm"
	"hwutil"
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

func (s ServiceServer) GetOrganizationsByUser(ctx context.Context, req *pb.GetOrganizationsByUserRequest) (*pb.GetOrganizationsByUserResponse, error) {
	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizations, err := GetOrganizationsForUser(ctx, userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	mappedOrganizations := hwutil.Map(*organizations, func(obj OrganizationWithMembers) *pb.GetOrganizationsByUserResponse_Organization {
		return &pb.GetOrganizationsByUserResponse_Organization{
			Id:           obj.Organization.ID.String(),
			LongName:     obj.Organization.LongName,
			ShortName:    obj.Organization.ShortName,
			ContactEmail: obj.Organization.ContactEmail,
			AvatarUrl:    obj.Organization.AvatarUrl,
			IsPersonal:   false,
			Members: hwutil.Map(obj.Members, func(membership organization_repo.User) *pb.GetOrganizationsByUserResponse_Organization_Member {
				return &pb.GetOrganizationsByUserResponse_Organization_Member{
					UserId:    membership.ID.String(),
					AvatarUrl: *membership.AvatarUrl,
					Email:     membership.Email,
					Nickname:  membership.Nickname,
				}
			}),
		}
	})

	return &pb.GetOrganizationsByUserResponse{
		Organizations: mappedOrganizations,
	}, nil

}

type OrganizationWithMembers struct {
	Organization organization_repo.Organization
	Members      []organization_repo.User
}

func GetOrganizationsForUser(ctx context.Context, userId uuid.UUID) (*[]OrganizationWithMembers, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	rows, err := organizationRepo.GetOrganizationsWithMembersByUser(ctx, userId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}
	if len(rows) == 0 {
		return &[]OrganizationWithMembers{}, nil
	}

	processedOrganizations := make(map[uuid.UUID]bool)
	organizationsResponse := hwutil.FlatMap(rows, func(organizationRow organization_repo.GetOrganizationsWithMembersByUserRow) *OrganizationWithMembers {
		organization := organizationRow.Organization
		if _, processed := processedOrganizations[organization.ID]; processed {
			return nil
		}
		processedOrganizations[organization.ID] = true
		members := hwutil.FlatMap(rows, func(memberRow organization_repo.GetOrganizationsWithMembersByUserRow) *organization_repo.User {
			if memberRow.Organization.ID != organization.ID {
				return nil
			}
			val := &organization_repo.User{
				ID:        memberRow.ID,
				Email:     memberRow.Email,
				Nickname:  memberRow.Nickname,
				AvatarUrl: memberRow.AvatarUrl,
			}
			return val
		})

		val := &OrganizationWithMembers{
			Organization: organization,
			Members:      members,
		}
		return val
	})

	return &organizationsResponse, nil

}

func (s ServiceServer) GetOrganizationsForUser(ctx context.Context, _ *pb.GetOrganizationsForUserRequest) (*pb.GetOrganizationsForUserResponse, error) {
	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizations, err := GetOrganizationsForUser(ctx, userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	mappedOrganizations := hwutil.Map(*organizations, func(obj OrganizationWithMembers) *pb.GetOrganizationsForUserResponse_Organization {
		return &pb.GetOrganizationsForUserResponse_Organization{
			Id:           obj.Organization.ID.String(),
			LongName:     obj.Organization.LongName,
			ShortName:    obj.Organization.ShortName,
			ContactEmail: obj.Organization.ContactEmail,
			AvatarUrl:    obj.Organization.AvatarUrl,
			IsPersonal:   false,
			Members: hwutil.Map(obj.Members, func(membership organization_repo.User) *pb.GetOrganizationsForUserResponse_Organization_Member {
				return &pb.GetOrganizationsForUserResponse_Organization_Member{
					UserId:    membership.ID.String(),
					AvatarUrl: *membership.AvatarUrl,
					Email:     membership.Email,
					Nickname:  membership.Nickname,
				}
			}),
		}
	})

	return &pb.GetOrganizationsForUserResponse{
		Organizations: mappedOrganizations,
	}, nil
}

func (s ServiceServer) UpdateOrganization(ctx context.Context, req *pb.UpdateOrganizationRequest) (*pb.UpdateOrganizationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := organizationRepo.UpdateOrganization(ctx, organization_repo.UpdateOrganizationParams{
		ID:           organizationID,
		ContactEmail: req.ContactEmail,
		LongName:     req.LongName,
		ShortName:    req.ShortName,
		IsPersonal:   req.IsPersonal,
		AvatarUrl:    req.AvatarUrl,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.UpdateOrganizationResponse{}, nil
}

func (s ServiceServer) DeleteOrganization(ctx context.Context, req *pb.DeleteOrganizationRequest) (*pb.DeleteOrganizationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := organizationRepo.DeleteOrganization(ctx, organizationID); err != nil {
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
	organizationRepo := organization_repo.New(hwdb.GetDB())

	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := organizationRepo.AddUserToOrganization(ctx, organization_repo.AddUserToOrganizationParams{
		UserID:         userID,
		OrganizationID: organizationID,
	}); err != nil {
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
	organizationRepo := organization_repo.New(hwdb.GetDB())

	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := organizationRepo.RemoveMember(ctx, organization_repo.RemoveMemberParams{
		OrganizationID: organizationID,
		UserID:         userID,
	}); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	log.Info().
		Str("userID", userID.String()).
		Str("organizationID", organizationID.String()).
		Msg("user removed from organization")

	return &pb.RemoveMemberResponse{}, nil
}

func (s ServiceServer) InviteMember(ctx context.Context, req *pb.InviteMemberRequest) (*pb.InviteMemberResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())
	invitation := organization_repo.Invitation{}

	log := zlog.Ctx(ctx)

	organizationId, err := uuid.Parse(req.OrganizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// Check if an organization exists
	organization, err := hwdb.Optional(organizationRepo.GetOrganizationById)(ctx, organizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}
	if organization == nil {
		return nil, status.Error(codes.InvalidArgument, "organization not found")
	}

	// Check if email is already in organization
	isInOrganization, err := organizationRepo.IsInOrganizationByEmail(ctx, organization_repo.IsInOrganizationByEmailParams{
		OrganizationID: organizationId,
		Email:          req.Email,
	})
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	if isInOrganization {
		return nil, status.Error(codes.InvalidArgument, "cannot invite a user that is already a member")
	}

	// check if an Invitation already exists
	doesInvitationExists, err := organizationRepo.DoesInvitationExist(ctx, organization_repo.DoesInvitationExistParams{
		Email:          req.Email,
		OrganizationID: organizationId,
		State:          []int32{int32(pb.InvitationState_INVITATION_STATE_ACCEPTED.Number()), int32(pb.InvitationState_INVITATION_STATE_PENDING.Number())},
	})
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	} else if doesInvitationExists == false {
		invitation, err = organizationRepo.InviteMember(ctx, organization_repo.InviteMemberParams{
			Email:          req.Email,
			OrganizationID: organizationId,
			State:          int32(pb.InvitationState_INVITATION_STATE_PENDING.Number()),
		})
		if err != nil {
			return nil, status.Error(codes.Internal, err.Error())
		}

		log.Info().
			Str("email", req.Email). // TODO: Revisited for privacy reasons
			Str("organizationID", organizationId.String()).
			Msg("user invited to organization")
	} else {
		return nil, status.Error(codes.InvalidArgument, "user already invited")
	}

	return &pb.InviteMemberResponse{
		Id: invitation.ID.String(),
	}, nil
}

func (s ServiceServer) GetInvitationsByOrganization(ctx context.Context, req *pb.GetInvitationsByOrganizationRequest) (*pb.GetInvitationsByOrganizationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.OrganizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	hasAccess, err := organizationRepo.IsInOrganizationById(ctx, organization_repo.IsInOrganizationByIdParams{
		Organizationid: organizationID,
		Userid:         userID,
	})
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}
	if !hasAccess {
		return nil, status.Error(codes.Unauthenticated, "Not a member of this Organization")
	}

	invitations, err := organizationRepo.GetInvitationsByOrganizations(ctx, organization_repo.GetInvitationsByOrganizationsParams{
		OrganizationID: organizationID,
		State:          (*int32)(req.State),
	})

	invitationsResponse := hwutil.Map(invitations, func(invitation organization_repo.Invitation) *pb.GetInvitationsByOrganizationResponse_Invitation {
		return &pb.GetInvitationsByOrganizationResponse_Invitation{
			Id:             invitation.ID.String(),
			Email:          invitation.Email,
			OrganizationId: invitation.OrganizationID.String(),
			State:          pb.InvitationState(invitation.State),
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
