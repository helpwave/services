package organization

import (
	"common"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	pb "gen/services/user_svc/v1"
	"hwdb"
	"hwlocale"
	"hwutil"
	"user-svc/internal/hwkc"
	"user-svc/locale"
	"user-svc/repos/organization_repo"
	"user-svc/repos/user_repo"

	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type InvitationState = string

type ServiceServer struct {
	pb.UnimplementedOrganizationServiceServer
	kc hwkc.IClient
}

func NewServiceServer(kc hwkc.IClient) *ServiceServer {
	return &ServiceServer{
		kc: kc,
	}
}

func (s ServiceServer) CreateOrganization(
	ctx context.Context,
	req *pb.CreateOrganizationRequest,
) (*pb.CreateOrganizationResponse, error) {
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

func (s ServiceServer) GetOrganization(
	ctx context.Context,
	req *pb.GetOrganizationRequest,
) (*pb.GetOrganizationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())
	// TODO: Auth

	id, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	rows, err := organizationRepo.GetOrganizationWithMemberById(ctx, id)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}
	if len(rows) == 0 {
		return nil, status.Error(codes.InvalidArgument, "id not found")
	}

	organization := rows[0].Organization
	members := hwutil.FlatMap(rows,
		func(row organization_repo.GetOrganizationWithMemberByIdRow) **pb.GetOrganizationMember {
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

func (s ServiceServer) GetOrganizationsByUser(
	ctx context.Context,
	req *pb.GetOrganizationsByUserRequest,
) (*pb.GetOrganizationsByUserResponse, error) {
	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizations, err := GetOrganizationsByUserId(ctx, userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	mappedOrganizations := hwutil.Map(organizations,
		func(obj OrganizationWithMembers) *pb.GetOrganizationsByUserResponse_Organization {
			return &pb.GetOrganizationsByUserResponse_Organization{
				Id:           obj.Organization.ID.String(),
				LongName:     obj.Organization.LongName,
				ShortName:    obj.Organization.ShortName,
				ContactEmail: obj.Organization.ContactEmail,
				AvatarUrl:    obj.Organization.AvatarUrl,
				IsPersonal:   false,
				Members: hwutil.Map(obj.Members,
					func(membership organization_repo.User) *pb.GetOrganizationsByUserResponse_Organization_Member {
						return &pb.GetOrganizationsByUserResponse_Organization_Member{
							UserId:    membership.ID.String(),
							AvatarUrl: membership.AvatarUrl, // can be nil, if inserted intentionally
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

func GetOrganizationsByUserId(ctx context.Context, userId uuid.UUID) ([]OrganizationWithMembers, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	rows, err := organizationRepo.GetOrganizationsWithMembersByUser(ctx, userId)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}
	if len(rows) == 0 {
		return []OrganizationWithMembers{}, nil
	}

	processedOrganizations := make(map[uuid.UUID]bool)
	organizationsResponse := hwutil.FlatMap(rows,
		func(organizationRow organization_repo.GetOrganizationsWithMembersByUserRow) *OrganizationWithMembers {
			organization := organizationRow.Organization
			if _, processed := processedOrganizations[organization.ID]; processed {
				return nil
			}
			processedOrganizations[organization.ID] = true
			members := hwutil.FlatMap(rows,
				func(memberRow organization_repo.GetOrganizationsWithMembersByUserRow) *organization_repo.User {
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

	return organizationsResponse, nil

}

func (s ServiceServer) GetOrganizationsForUser(
	ctx context.Context,
	_ *pb.GetOrganizationsForUserRequest,
) (*pb.GetOrganizationsForUserResponse, error) {
	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizations, err := GetOrganizationsByUserId(ctx, userID)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	mappedOrganizations := hwutil.Map(organizations,
		func(obj OrganizationWithMembers) *pb.GetOrganizationsForUserResponse_Organization {
			return &pb.GetOrganizationsForUserResponse_Organization{
				Id:           obj.Organization.ID.String(),
				LongName:     obj.Organization.LongName,
				ShortName:    obj.Organization.ShortName,
				ContactEmail: obj.Organization.ContactEmail,
				AvatarUrl:    obj.Organization.AvatarUrl,
				IsPersonal:   false,
				Members: hwutil.Map(obj.Members,
					func(membership organization_repo.User) *pb.GetOrganizationsForUserResponse_Organization_Member {
						return &pb.GetOrganizationsForUserResponse_Organization_Member{
							UserId:    membership.ID.String(),
							AvatarUrl: membership.AvatarUrl, // can be nil, if inserted intentionally
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

func (s ServiceServer) UpdateOrganization(
	ctx context.Context,
	req *pb.UpdateOrganizationRequest,
) (*pb.UpdateOrganizationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = organizationRepo.UpdateOrganization(ctx, organization_repo.UpdateOrganizationParams{
		ID:           organizationID,
		ContactEmail: req.ContactEmail,
		LongName:     req.LongName,
		ShortName:    req.ShortName,
		IsPersonal:   req.IsPersonal,
		AvatarUrl:    req.AvatarUrl,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.UpdateOrganizationResponse{}, nil
}

func (s ServiceServer) DeleteOrganization(
	ctx context.Context,
	req *pb.DeleteOrganizationRequest,
) (*pb.DeleteOrganizationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := s.kc.DeleteOrganization(organizationID); err != nil {
		return nil, err
	}

	err = organizationRepo.DeleteOrganization(ctx, organizationID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.DeleteOrganizationResponse{}, nil
}

func (s ServiceServer) AddMember(
	ctx context.Context,
	req *pb.AddMemberRequest,
) (*pb.AddMemberResponse, error) {
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

	if err := s.kc.AddUserToOrganization(userID, organizationID); err != nil {
		return nil, err
	}

	err = organizationRepo.AddUserToOrganization(ctx, organization_repo.AddUserToOrganizationParams{
		UserID:         userID,
		OrganizationID: organizationID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("userID", userID.String()).
		Str("organizationID", organizationID.String()).
		Msg("user added to organization")

	return &pb.AddMemberResponse{}, nil
}

func (s ServiceServer) RemoveMember(
	ctx context.Context,
	req *pb.RemoveMemberRequest,
) (*pb.RemoveMemberResponse, error) {
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

	if err := s.kc.RemoveUserFromOrganization(userID, organizationID); err != nil {
		return nil, err
	}

	err = organizationRepo.RemoveMember(ctx, organization_repo.RemoveMemberParams{
		OrganizationID: organizationID,
		UserID:         userID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("userID", userID.String()).
		Str("organizationID", organizationID.String()).
		Msg("user removed from organization")

	return &pb.RemoveMemberResponse{}, nil
}

func (s ServiceServer) InviteMember(
	ctx context.Context,
	req *pb.InviteMemberRequest,
) (*pb.InviteMemberResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())
	invitation := organization_repo.Invitation{}

	log := zlog.Ctx(ctx)

	organizationId, err := uuid.Parse(req.OrganizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	conditions, err := organizationRepo.GetInvitationConditions(ctx, organization_repo.GetInvitationConditionsParams{
		OrganizationID: organizationId,
		Email:          req.Email,
		States: []int32{
			int32(pb.InvitationState_INVITATION_STATE_ACCEPTED.Number()),
			int32(pb.InvitationState_INVITATION_STATE_PENDING.Number()),
		},
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	switch {
	case !conditions.DoesOrganizationExist:
		return nil, status.Error(codes.InvalidArgument, "organization not found")
	case conditions.IsInOrganizationByEmail:
		return nil, status.Error(codes.InvalidArgument, "cannot invite a user that is already a member")
	case conditions.DoesInvitationExist:
		return nil, status.Error(codes.InvalidArgument, "user already invited")
	default:
		invitation, err = organizationRepo.InviteMember(ctx, organization_repo.InviteMemberParams{
			Email:          req.Email,
			OrganizationID: organizationId,
			State:          int32(pb.InvitationState_INVITATION_STATE_PENDING.Number()),
		})
		err = hwdb.Error(ctx, err)
		if err != nil {
			return nil, err
		}

		log.Info().
			Str("email", req.Email). // TODO: Revisited for privacy reasons
			Str("organizationID", organizationId.String()).
			Msg("user invited to organization")
	}

	return &pb.InviteMemberResponse{
		Id: invitation.ID.String(),
	}, nil
}

func (s ServiceServer) GetInvitationsByOrganization(
	ctx context.Context,
	req *pb.GetInvitationsByOrganizationRequest,
) (*pb.GetInvitationsByOrganizationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.OrganizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	doesOrganizationExist, err := organizationRepo.DoesOrganizationExist(ctx, organizationID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}
	if !doesOrganizationExist {
		return &pb.GetInvitationsByOrganizationResponse{}, nil
	}

	hasAccess, err := organizationRepo.IsInOrganizationById(ctx, organization_repo.IsInOrganizationByIdParams{
		Organizationid: organizationID,
		Userid:         userID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}
	if !hasAccess {
		return nil, status.Error(codes.Unauthenticated, "Not a member of this Organization")
	}

	invitations, err := organizationRepo.GetInvitations(ctx, organization_repo.GetInvitationsParams{
		OrganizationID: uuid.NullUUID{UUID: organizationID, Valid: true},
		State:          (*int32)(req.State),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	invitationsResponse := hwutil.Map(invitations,
		func(invitation organization_repo.Invitation) *pb.GetInvitationsByOrganizationResponse_Invitation {
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

func (s ServiceServer) GetInvitationsByUser(
	ctx context.Context,
	req *pb.GetInvitationsByUserRequest,
) (*pb.GetInvitationsByUserResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	claims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	invitations, err := organizationRepo.GetInvitationsWithOrganizationByUser(
		ctx,
		organization_repo.GetInvitationsWithOrganizationByUserParams{
			Email: claims.Email,
			State: (*int32)(req.State),
		})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	type rowType = organization_repo.GetInvitationsWithOrganizationByUserRow

	invitationResponse := hwutil.Map(invitations,
		func(invitation rowType) *pb.GetInvitationsByUserResponse_Invitation {
			organization := &pb.GetInvitationsByUserResponse_Invitation_Organization{
				Id:        invitation.Organization.ID.String(),
				LongName:  invitation.Organization.LongName,
				AvatarUrl: invitation.Organization.AvatarUrl, // can be null
			}
			return &pb.GetInvitationsByUserResponse_Invitation{
				Id:           invitation.ID.String(),
				Email:        invitation.Email,
				Organization: organization,
				State:        pb.InvitationState(invitation.State),
			}
		})

	return &pb.GetInvitationsByUserResponse{
		Invitations: invitationResponse,
	}, nil
}

func (s ServiceServer) GetMembersByOrganization(
	ctx context.Context,
	req *pb.GetMembersByOrganizationRequest,
) (*pb.GetMembersByOrganizationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.Id)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	doesOrganizationExist, err := organizationRepo.DoesOrganizationExist(ctx, organizationID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	} else if !doesOrganizationExist {
		return &pb.GetMembersByOrganizationResponse{}, nil
	}

	hasAccess, err := organizationRepo.IsInOrganizationById(ctx, organization_repo.IsInOrganizationByIdParams{
		Organizationid: organizationID,
		Userid:         userID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	if !hasAccess {
		return nil, status.Error(codes.Unauthenticated, "Not a member of this organization")
	}

	members, err := organizationRepo.GetMembersByOrganization(ctx, organizationID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	mappedMembers := hwutil.Map(members,
		func(member organization_repo.User) *pb.GetMembersByOrganizationResponse_Member {
			return &pb.GetMembersByOrganizationResponse_Member{
				UserId:    member.ID.String(),
				AvatarUrl: member.AvatarUrl, // can be nil, if inserted intentionally
				Email:     member.Email,
				Nickname:  member.Nickname,
			}
		})

	return &pb.GetMembersByOrganizationResponse{
		Members: mappedMembers,
	}, nil
}

func (s ServiceServer) AcceptInvitation(
	ctx context.Context,
	req *pb.AcceptInvitationRequest,
) (*pb.AcceptInvitationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	invitationId, err := uuid.Parse(req.InvitationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	claims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	// Check if invite exists
	rows, err := organizationRepo.GetInvitations(ctx, organization_repo.GetInvitationsParams{
		ID:    uuid.NullUUID{UUID: invitationId, Valid: true},
		Email: &claims.Email,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	} else if len(rows) == 0 {
		return nil, status.Error(codes.InvalidArgument, "record not found")
	}

	currentInvitation := rows[0]
	if currentInvitation.State == int32(pb.InvitationState_INVITATION_STATE_ACCEPTED.Number()) {
		return &pb.AcceptInvitationResponse{}, nil
	} else if currentInvitation.State != int32(pb.InvitationState_INVITATION_STATE_PENDING.Number()) {
		return nil, status.Error(codes.InvalidArgument, "only pending invitations can be accepted")
	}

	// Update Invitation State
	err = organizationRepo.UpdateInvitationState(ctx, organization_repo.UpdateInvitationStateParams{
		ID:    invitationId,
		State: int32(pb.InvitationState_INVITATION_STATE_ACCEPTED.Number()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// Add user to organization
	if err := AddUserToOrganization(ctx, s.kc, userID, currentInvitation.OrganizationID); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.AcceptInvitationResponse{}, nil
}

func (s ServiceServer) DeclineInvitation(
	ctx context.Context,
	req *pb.DeclineInvitationRequest,
) (*pb.DeclineInvitationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	invitationId, err := uuid.Parse(req.InvitationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	claims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	// Check if invite exists
	rows, err := organizationRepo.GetInvitations(ctx, organization_repo.GetInvitationsParams{
		ID:    uuid.NullUUID{UUID: invitationId, Valid: true},
		Email: &claims.Email,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	} else if len(rows) == 0 {
		return nil, status.Error(codes.InvalidArgument, "record not found")
	}

	currentInvitation := rows[0]
	if currentInvitation.State == int32(pb.InvitationState_INVITATION_STATE_REJECTED.Number()) {
		return &pb.DeclineInvitationResponse{}, nil
	} else if currentInvitation.State != int32(pb.InvitationState_INVITATION_STATE_PENDING.Number()) {
		return nil, status.Error(codes.InvalidArgument, "only pending invitations can be rejected")
	}

	// Update invitation state
	err = organizationRepo.UpdateInvitationState(ctx, organization_repo.UpdateInvitationStateParams{
		ID:    invitationId,
		State: int32(pb.InvitationState_INVITATION_STATE_REJECTED.Number()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	return &pb.DeclineInvitationResponse{}, nil
}

func (s ServiceServer) RevokeInvitation(
	ctx context.Context,
	req *pb.RevokeInvitationRequest,
) (*pb.RevokeInvitationResponse, error) {
	organizationRepo := organization_repo.New(hwdb.GetDB())

	log := zlog.Ctx(ctx)

	invitationId, err := uuid.Parse(req.InvitationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	rows, err := organizationRepo.GetInvitations(ctx, organization_repo.GetInvitationsParams{
		ID: uuid.NullUUID{UUID: invitationId, Valid: true},
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	} else if len(rows) == 0 {
		return nil, status.Error(codes.InvalidArgument, "record not found")
	}

	currentInvitation := rows[0]
	organizationID := currentInvitation.OrganizationID
	inviteeEmail := currentInvitation.Email

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	isAdmin, err := organizationRepo.IsAdminInOrganization(ctx, organization_repo.IsAdminInOrganizationParams{
		OrganizationID: organizationID,
		UserID:         userID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	if !isAdmin {
		return nil, status.Error(codes.PermissionDenied, "only admins can revoke invitations")
	}

	if currentInvitation.State != int32(pb.InvitationState_INVITATION_STATE_PENDING.Number()) {
		return nil, status.Error(codes.InvalidArgument, "only pending invitations can be revoked")
	}

	// Update invitation state
	err = organizationRepo.UpdateInvitationState(ctx, organization_repo.UpdateInvitationStateParams{
		ID:    invitationId,
		State: int32(pb.InvitationState_INVITATION_STATE_REVOKED.Number()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("admin", userID.String()).
		Str("organizationID", organizationID.String()).
		Str("inviteeEmail", inviteeEmail).
		Msg("admin revoked invitation to organization")

	return &pb.RevokeInvitationResponse{}, nil
}

func CreateOrganizationAndAddUser(
	ctx context.Context,
	attr organization_repo.Organization,
	userID uuid.UUID,
) (*organization_repo.Organization, error) {
	kc, err := hwkc.NewClientFromEnv(ctx)
	if err != nil {
		return nil, err
	}

	db := hwdb.GetDB()

	isPersonal := false
	if attr.IsPersonal == nil {
		isPersonal = *attr.IsPersonal
	}

	keycloakOrganization, err := kc.CreateOrganization(attr.LongName, attr.ShortName, isPersonal)
	if err != nil {
		return nil, err
	}

	organizationID, err := uuid.Parse(*keycloakOrganization.ID)
	if err != nil {
		return nil, err
	}

	if err := kc.AddUserToOrganization(userID, organizationID); err != nil {
		return nil, err
	}

	tx, rollback, err := hwdb.BeginTx(db, ctx)
	if err != nil {
		return nil, err
	}
	defer rollback()

	organizationRepo := organization_repo.New(db).WithTx(tx)

	organization, err := organizationRepo.CreateOrganization(ctx, organization_repo.CreateOrganizationParams{
		ID:              organizationID,
		LongName:        attr.LongName,
		ShortName:       attr.ShortName,
		ContactEmail:    attr.ContactEmail,
		AvatarUrl:       attr.AvatarUrl,
		IsPersonal:      attr.IsPersonal,
		CreatedByUserID: userID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	err = organizationRepo.AddUserToOrganization(ctx, organization_repo.AddUserToOrganizationParams{
		UserID:         userID,
		OrganizationID: organization.ID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	err = organizationRepo.ChangeMembershipAdminStatus(ctx, organization_repo.ChangeMembershipAdminStatusParams{
		UserID:         userID,
		OrganizationID: organization.ID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	if err := tx.Commit(ctx); err != nil {
		return nil, err
	}

	return &organization, nil
}

func AddUserToOrganization(ctx context.Context, kc hwkc.IClient, userId uuid.UUID, organizationId uuid.UUID) error {
	log := zlog.Ctx(ctx)
	organizationRepo := organization_repo.New(hwdb.GetDB())

	if err := kc.AddUserToOrganization(userId, organizationId); err != nil {
		return err
	}

	err := organizationRepo.AddUserToOrganization(ctx, organization_repo.AddUserToOrganizationParams{
		UserID:         userId,
		OrganizationID: organizationId,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return err
	}

	log.Info().
		Str("organizationID", organizationId.String()).
		Str("userID", userId.String()).
		Msg("added user to organization")

	// TODO: Dispatch UserJoinedOrganizationEvent

	return nil
}

func (s ServiceServer) CreatePersonalOrganization(
	ctx context.Context,
	_ *pb.CreatePersonalOrganizationRequest,
) (*pb.CreatePersonalOrganizationResponse, error) {
	kc, err := hwkc.NewClientFromEnv(ctx)
	if err != nil {
		return nil, err
	}

	userID, err := common.GetUserID(ctx)
	if err != nil {
		return nil, err
	}

	userClaims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	organisations, err := kc.GetOrganizationsOfUserById(userID)
	if err != nil {
		return nil, err
	}

	personalOrganizations := hwutil.Filter(organisations, func(organization *hwkc.Organization) bool {
		return organization.IsPersonal()
	})

	// We allow only one personal organization per account,
	// therefore we early return here with the previously found organization ID
	if len(personalOrganizations) > 0 {
		organizationID, err := uuid.Parse(*personalOrganizations[0].ID)
		if err != nil {
			return nil, fmt.Errorf("cannot parse id from keycloak for organization: %w", err)
		}

		return &pb.CreatePersonalOrganizationResponse{
			Id: organizationID.String(),
		}, nil
	}

	personalOrganizationLocale := hwlocale.Localize(ctx, locale.PersonalOrganizationName(ctx))
	organizationName := fmt.Sprintf("%s %s", personalOrganizationLocale, userClaims.Name)

	userRepo := user_repo.New(hwdb.GetDB())

	// create user, if it does not exist yet
	userResult, err := hwdb.Optional(userRepo.GetUserById)(ctx, userID)
	if err = hwdb.Error(ctx, err); err != nil {
		return nil, err
	} else if userResult == nil {
		hash := sha256.Sum256([]byte(userID.String()))
		avatarUrl := fmt.Sprintf(
			"%s%s",
			"https://source.boringavatars.com/marble/128/",
			hex.EncodeToString(hash[:]),
		)

		_, err = userRepo.CreateUser(ctx, user_repo.CreateUserParams{
			ID:        userID,
			Email:     userClaims.Email,
			Nickname:  userClaims.PreferredUsername,
			Name:      userClaims.Name,
			AvatarUrl: &avatarUrl,
		})
		if err = hwdb.Error(ctx, err); err != nil {
			return nil, err
		}
	}

	organization, err := CreateOrganizationAndAddUser(
		ctx,
		organization_repo.Organization{
			LongName:     organizationName,
			ShortName:    hwlocale.Localize(ctx, locale.PersonalOrganizationShortName(ctx)),
			ContactEmail: userClaims.Email,
			IsPersonal:   hwutil.PtrTo(true),
		},
		userID,
	)

	if err != nil {
		return nil, err
	}

	return &pb.CreatePersonalOrganizationResponse{
		Id: organization.ID.String(),
	}, nil
}
