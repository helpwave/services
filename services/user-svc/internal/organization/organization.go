package organization

import (
	"common/auth"
	"context"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	pb "gen/services/user_svc/v1"
	"hwauthz"
	"hwauthz/commonperm"
	"hwdb"
	"hwlocale"
	"hwutil"

	"user-svc/internal/organization/perm"
	userPerm "user-svc/internal/user/perm"

	"user-svc/internal/hwkc"
	"user-svc/locale"
	"user-svc/repos/organization-repo"
	"user-svc/repos/user-repo"

	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type InvitationState = string

type ServiceServer struct {
	pb.UnimplementedOrganizationServiceServer
	kc    hwkc.IClient
	authz hwauthz.AuthZ
}

func NewServiceServer(kc hwkc.IClient, authz hwauthz.AuthZ) *ServiceServer {
	return &ServiceServer{
		UnimplementedOrganizationServiceServer: pb.UnimplementedOrganizationServiceServer{},
		kc:                                     kc,
		authz:                                  authz,
	}
}

func (s ServiceServer) CreateOrganization(
	ctx context.Context,
	req *pb.CreateOrganizationRequest,
) (*pb.CreateOrganizationResponse, error) {
	userID := auth.MustGetUserID(ctx)

	isPersonal := false
	if req.IsPersonal != nil {
		isPersonal = *req.IsPersonal
	}

	organization, err := CreateOrganizationAndAddUser(
		ctx,
		organizationrepo.Organization{
			LongName:     req.LongName,
			ShortName:    req.ShortName,
			ContactEmail: req.ContactEmail,
			IsPersonal:   isPersonal,
		},
		userID,
		s.kc,
		s.authz,
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
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	id, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	user := commonperm.UserFromCtx(ctx)
	organizationPerm := commonperm.Organization(id)
	check := hwauthz.NewPermissionCheck(user, perm.OrganizationCanUserGet, organizationPerm)
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
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
		func(row organizationrepo.GetOrganizationWithMemberByIdRow) **pb.GetOrganizationMember {
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
		IsPersonal:   organization.IsPersonal,
		AvatarUrl:    organization.AvatarUrl,
		Members:      members,
	}, nil
}

func (s ServiceServer) GetOrganizationsByUser(
	ctx context.Context,
	req *pb.GetOrganizationsByUserRequest,
) (*pb.GetOrganizationsByUserResponse, error) {
	userID := uuid.MustParse(req.UserId)

	organizations, err := GetOrganizationsByUserID(ctx, userID, s.authz)
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
				IsPersonal:   obj.Organization.IsPersonal,
				Members: hwutil.Map(obj.Members,
					func(membership organizationrepo.User) *pb.GetOrganizationsByUserResponse_Organization_Member {
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
	Organization organizationrepo.Organization
	Members      []organizationrepo.User
}

func GetOrganizationsByUserID(
	ctx context.Context, userID uuid.UUID, authz hwauthz.AuthZ,
) ([]OrganizationWithMembers, error) {
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	rows, err := organizationRepo.GetOrganizationsWithMembersByUser(ctx, userID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}
	if len(rows) == 0 {
		return []OrganizationWithMembers{}, nil
	}

	processedOrganizations := make(map[uuid.UUID]bool)
	organizationsResponse := hwutil.FlatMap(rows,
		func(organizationRow organizationrepo.GetOrganizationsWithMembersByUserRow) *OrganizationWithMembers {
			organization := organizationRow.Organization
			if _, processed := processedOrganizations[organization.ID]; processed {
				return nil
			}
			processedOrganizations[organization.ID] = true
			members := hwutil.FlatMap(rows,
				func(memberRow organizationrepo.GetOrganizationsWithMembersByUserRow) *organizationrepo.User {
					if memberRow.Organization.ID != organization.ID {
						return nil
					}
					val := &organizationrepo.User{
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
		},
	)

	// filter out orgs which the requesting user is not allowed to see
	requestingUser := commonperm.UserFromCtx(ctx)
	checks := hwutil.Map(organizationsResponse, func(o OrganizationWithMembers) hwauthz.PermissionCheck {
		return hwauthz.NewPermissionCheck(
			requestingUser,
			perm.OrganizationCanUserGet,
			commonperm.Organization(o.Organization.ID),
		)
	})
	allowed, err := authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}
	organizationsResponse = hwutil.Filter(organizationsResponse, func(i int, _ OrganizationWithMembers) bool {
		return allowed[i]
	})

	return organizationsResponse, nil
}

func (s ServiceServer) GetOrganizationsForUser(
	ctx context.Context,
	_ *pb.GetOrganizationsForUserRequest,
) (*pb.GetOrganizationsForUserResponse, error) {
	userID := auth.MustGetUserID(ctx)

	organizations, err := GetOrganizationsByUserID(ctx, userID, s.authz)
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
					func(membership organizationrepo.User) *pb.GetOrganizationsForUserResponse_Organization_Member {
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
	userPerm := commonperm.UserFromCtx(ctx)
	orgPerm := commonperm.Organization(uuid.MustParse(req.GetId()))
	check := hwauthz.NewPermissionCheck(userPerm, perm.OrganizationCanUserUpdate, orgPerm)
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	organizationRepo := organizationrepo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	err = organizationRepo.UpdateOrganization(ctx, organizationrepo.UpdateOrganizationParams{
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
	permUser := commonperm.UserFromCtx(ctx)
	permOrg := commonperm.Organization(uuid.MustParse(req.GetId()))
	check := hwauthz.NewPermissionCheck(permUser, perm.OrganizationCanUserDelete, permOrg)
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	organizationRepo := organizationrepo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	// delete from kc
	if err := s.kc.DeleteOrganization(ctx, organizationID); err != nil {
		return nil, err
	}

	// delete from db
	err = organizationRepo.DeleteOrganization(ctx, organizationID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// delete from permission graph
	if err := s.authz.DeleteObject(ctx, commonperm.Organization(organizationID)); err != nil {
		return nil, fmt.Errorf("could not delete organization from spicedb: %w", err)
	}

	return &pb.DeleteOrganizationResponse{}, nil
}

func (s ServiceServer) RemoveMember(
	ctx context.Context,
	req *pb.RemoveMemberRequest,
) (*pb.RemoveMemberResponse, error) {
	permUser := commonperm.UserFromCtx(ctx)
	permOrg := commonperm.Organization(uuid.MustParse(req.GetId()))
	check := hwauthz.NewPermissionCheck(permUser, perm.OrganizationCanUserRemoveMember, permOrg)
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	log := zlog.Ctx(ctx)
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	userID, err := uuid.Parse(req.UserId)
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	organizationID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.InvalidArgument, err.Error())
	}

	if err := s.kc.RemoveUserFromOrganization(ctx, userID, organizationID); err != nil {
		return nil, err
	}

	err = organizationRepo.RemoveMember(ctx, organizationrepo.RemoveMemberParams{
		OrganizationID: organizationID,
		UserID:         userID,
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	deletedUser := commonperm.User(userID)
	if _, err := s.authz.
		Delete(hwauthz.NewRelationship(deletedUser, perm.OrganizationMember, permOrg)).
		Delete(hwauthz.NewRelationship(deletedUser, perm.OrganizationLeader, permOrg)).
		Delete(hwauthz.NewRelationship(permOrg, userPerm.UserOrganization, deletedUser)).
		Commit(ctx); err != nil {
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
	log := zlog.Ctx(ctx)
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	// check permissions
	permUser := commonperm.UserFromCtx(ctx)
	permOrg := commonperm.Organization(uuid.MustParse(req.GetOrganizationId()))
	check := hwauthz.NewPermissionCheck(permUser, perm.OrganizationCanUserInviteMember, permOrg)
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	organizationID, err := uuid.Parse(req.OrganizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// sanity checks
	conditions, err := organizationRepo.GetInvitationConditions(ctx, organizationrepo.GetInvitationConditionsParams{
		OrganizationID: organizationID,
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
	}

	// do invite
	invitation, err := organizationRepo.InviteMember(ctx, organizationrepo.InviteMemberParams{
		Email:          req.Email,
		OrganizationID: organizationID,
		State:          int32(pb.InvitationState_INVITATION_STATE_PENDING.Number()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// add to permission graph

	// subject is the email, unless we currently have a user assigned to it, then it's the user
	// for more info in this read the comment in the core spicedb schema file
	var subj hwauthz.Object = perm.Email(req.Email)
	if invitation.UserID.Valid {
		subj = commonperm.User(invitation.UserID.UUID)
	}
	org := commonperm.Organization(organizationID)
	resc := perm.Invite(invitation.InvitationID)
	if _, err := s.authz.
		Create(hwauthz.NewRelationship(subj, perm.InviteInvitee, resc)).
		Create(hwauthz.NewRelationship(org, perm.InviteOrganization, resc)).Commit(ctx); err != nil {
		return nil, err
	}

	log.Info().
		Str("email", req.Email). // TODO: privacy issues?
		Str("organizationID", organizationID.String()).
		Msg("user invited to organization")

	return &pb.InviteMemberResponse{
		Id: invitation.InvitationID.String(),
	}, nil
}

func (s ServiceServer) GetInvitationsByOrganization(
	ctx context.Context,
	req *pb.GetInvitationsByOrganizationRequest,
) (*pb.GetInvitationsByOrganizationResponse, error) {
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.OrganizationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	claims, err := auth.GetAuthClaims(ctx)
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

	invitations, err := organizationRepo.GetInvitations(ctx, organizationrepo.GetInvitationsParams{
		OrganizationID: uuid.NullUUID{UUID: organizationID, Valid: true},
		State:          (*int32)(req.State),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	// filter out invitations where permissions are missing
	user := commonperm.UserFromCtx(ctx)
	email := perm.Email(claims.Email)

	checks := make([]hwauthz.PermissionCheck, 0, 2*len(invitations))
	for _, inv := range invitations {
		checks = append(checks,
			hwauthz.NewPermissionCheck(user, perm.InviteCanUserView, perm.Invite(inv.ID)),
			hwauthz.NewPermissionCheck(email, perm.InviteCanUserView, perm.Invite(inv.ID)),
		)
	}
	allowed, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}
	invitations = hwutil.Filter(invitations, func(i int, _ organizationrepo.Invitation) bool {
		return allowed[2*i] || allowed[2*i+1] // either the user or their email is allowed to view this invite
	})

	// convert to response
	invitationsResponse := hwutil.Map(invitations,
		func(invitation organizationrepo.Invitation) *pb.GetInvitationsByOrganizationResponse_Invitation {
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
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	claims, err := auth.GetAuthClaims(ctx)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	invitations, err := organizationRepo.GetInvitationsWithOrganizationByUser(
		ctx,
		organizationrepo.GetInvitationsWithOrganizationByUserParams{
			Email: claims.Email,
			State: (*int32)(req.State),
		})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	type rowType = organizationrepo.GetInvitationsWithOrganizationByUserRow

	// filter out invitations where permissions are missing
	user := commonperm.UserFromCtx(ctx)
	email := perm.Email(claims.Email)

	checks := make([]hwauthz.PermissionCheck, 0, 2*len(invitations))
	for _, inv := range invitations {
		checks = append(checks,
			hwauthz.NewPermissionCheck(user, perm.InviteCanUserView, perm.Invite(inv.ID)),
			hwauthz.NewPermissionCheck(email, perm.InviteCanUserView, perm.Invite(inv.ID)),
		)
	}
	allowed, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}
	invitations = hwutil.Filter(invitations, func(i int, _ rowType) bool {
		return allowed[2*i] || allowed[2*i+1] // either the user or their email is allowed to view this invite
	})

	// convert to response
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
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	organizationID, err := uuid.Parse(req.GetId())
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// check permission
	user := commonperm.UserFromCtx(ctx)
	check := hwauthz.NewPermissionCheck(
		user, perm.OrganizationCanUserGetMembers, commonperm.Organization(organizationID))
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	members, err := organizationRepo.GetMembersByOrganization(ctx, organizationID)
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	mappedMembers := hwutil.Map(members,
		func(member organizationrepo.User) *pb.GetMembersByOrganizationResponse_Member {
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
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	invitationID, err := uuid.Parse(req.InvitationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	claims, err := auth.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	email := perm.Email(claims.Email)
	invite := perm.Invite(invitationID)

	checks := []hwauthz.PermissionCheck{
		hwauthz.NewPermissionCheck(user, perm.InviteCanUserAccept, invite),  // either the user as access
		hwauthz.NewPermissionCheck(email, perm.InviteCanUserAccept, invite), // or their email might have it
	}
	bools, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}
	if !hwutil.Contains(bools, true) {
		return nil, hwauthz.StatusErrorPermissionDenied(ctx, checks[0])
	}

	// Check if invite exists
	rows, err := organizationRepo.GetInvitations(ctx, organizationrepo.GetInvitationsParams{
		ID:    uuid.NullUUID{UUID: invitationID, Valid: true},
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
	err = organizationRepo.UpdateInvitationState(ctx, organizationrepo.UpdateInvitationStateParams{
		ID:    invitationID,
		State: int32(pb.InvitationState_INVITATION_STATE_ACCEPTED.Number()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	userID := auth.MustGetUserID(ctx)

	// Add user to organization
	if err := AddUserToOrganization(
		ctx,
		hwdb.GetDB(),
		s.authz,
		s.kc,
		userID,
		currentInvitation.OrganizationID,
	); err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &pb.AcceptInvitationResponse{}, nil
}

func (s ServiceServer) DeclineInvitation(
	ctx context.Context,
	req *pb.DeclineInvitationRequest,
) (*pb.DeclineInvitationResponse, error) {
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	invitationID, err := uuid.Parse(req.InvitationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	claims, err := auth.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	email := perm.Email(claims.Email)
	invite := perm.Invite(invitationID)

	checks := []hwauthz.PermissionCheck{
		hwauthz.NewPermissionCheck(user, perm.InviteCanUserDeny, invite),  // either the user as access
		hwauthz.NewPermissionCheck(email, perm.InviteCanUserDeny, invite), // or their email might have it
	}
	bools, err := s.authz.BulkCheck(ctx, checks)
	if err != nil {
		return nil, err
	}
	if !hwutil.Contains(bools, true) {
		return nil, hwauthz.StatusErrorPermissionDenied(ctx, checks[0])
	}

	// Check if invite exists
	rows, err := organizationRepo.GetInvitations(ctx, organizationrepo.GetInvitationsParams{
		ID:    uuid.NullUUID{UUID: invitationID, Valid: true},
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
	err = organizationRepo.UpdateInvitationState(ctx, organizationrepo.UpdateInvitationStateParams{
		ID:    invitationID,
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
	organizationRepo := organizationrepo.New(hwdb.GetDB())

	log := zlog.Ctx(ctx)

	invitationID, err := uuid.Parse(req.InvitationId)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	// check permissions
	user := commonperm.UserFromCtx(ctx)
	invite := perm.Invite(invitationID)

	check := hwauthz.NewPermissionCheck(user, perm.InviteCanUserCancel, invite)
	if err := s.authz.Must(ctx, check); err != nil {
		return nil, err
	}

	rows, err := organizationRepo.GetInvitations(ctx, organizationrepo.GetInvitationsParams{
		ID: uuid.NullUUID{UUID: invitationID, Valid: true},
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

	if currentInvitation.State != int32(pb.InvitationState_INVITATION_STATE_PENDING.Number()) {
		return nil, status.Error(codes.InvalidArgument, "only pending invitations can be revoked")
	}

	// Update invitation state
	err = organizationRepo.UpdateInvitationState(ctx, organizationrepo.UpdateInvitationStateParams{
		ID:    invitationID,
		State: int32(pb.InvitationState_INVITATION_STATE_REVOKED.Number()),
	})
	err = hwdb.Error(ctx, err)
	if err != nil {
		return nil, err
	}

	log.Info().
		Str("admin", auth.MustGetUserID(ctx).String()).
		Str("organizationID", organizationID.String()).
		Str("inviteeEmail", inviteeEmail).
		Msg("admin revoked invitation to organization")

	return &pb.RevokeInvitationResponse{}, nil
}

func CreateOrganizationAndAddUser(
	ctx context.Context,
	attr organizationrepo.Organization,
	userID uuid.UUID,
	kc hwkc.IClient,
	authz hwauthz.AuthZ,
) (*organizationrepo.Organization, error) {
	// open tx
	tx, rollback, err := hwdb.BeginTx(hwdb.GetDB(), ctx)
	if err != nil {
		return nil, err
	}
	defer rollback()
	organizationRepo := organizationrepo.New(tx)

	// create keycloak org
	keycloakOrganization, err := kc.CreateOrganization(ctx, attr.LongName, attr.ShortName, attr.IsPersonal)
	if err != nil {
		return nil, err
	}

	organizationID, err := uuid.Parse(*keycloakOrganization.ID)
	if err != nil {
		return nil, err
	}

	// create db org
	organization, err := organizationRepo.CreateOrganization(ctx, organizationrepo.CreateOrganizationParams{
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

	// add user to org
	if err := AddUserToOrganization(
		ctx,
		tx,
		authz,
		kc,
		userID,
		organizationID,
	); err != nil {
		return nil, err
	}

	// commit tx
	if err := tx.Commit(ctx); err != nil {
		return nil, err
	}

	return &organization, nil
}

func AddUserToOrganization(
	ctx context.Context,
	tx hwdb.DBTX,
	authz hwauthz.AuthZ,
	kc hwkc.IClient,
	userID uuid.UUID,
	organizationID uuid.UUID,
) error {
	log := zlog.Ctx(ctx)
	organizationRepo := organizationrepo.New(tx)

	// add user to org in kc
	if err := kc.AddUserToOrganization(ctx, userID, organizationID); err != nil {
		return err
	}

	// add user to org in db
	err := organizationRepo.AddUserToOrganization(ctx, organizationrepo.AddUserToOrganizationParams{
		UserID:         userID,
		OrganizationID: organizationID,
	})
	if err = hwdb.Error(ctx, err); err != nil {
		return err
	}

	// add user to org in spice
	permUser := commonperm.User(userID)
	permOrg := commonperm.Organization(organizationID)
	rel := hwauthz.NewRelationship(permUser, perm.OrganizationLeader, permOrg)
	backRel := hwauthz.NewRelationship(permOrg, userPerm.UserOrganization, permUser)
	if _, err := authz.Create(rel).Create(backRel).Commit(ctx); err != nil {
		return err
	}

	log.Info().
		Str("organizationID", organizationID.String()).
		Str("userID", userID.String()).
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

	userID := auth.MustGetUserID(ctx)

	userClaims, err := auth.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	organisations, err := kc.GetOrganizationsOfUserByID(ctx, userID)
	if err != nil {
		return nil, err
	}

	personalOrganizations := hwutil.Filter(organisations, func(_ int, organization *hwkc.Organization) bool {
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

	userRepo := userrepo.New(hwdb.GetDB())

	// create user, if it does not exist yet
	userResult, err := hwdb.Optional(userRepo.GetUserById)(ctx, userID)
	if err = hwdb.Error(ctx, err); err != nil {
		return nil, err
	} else if userResult == nil {
		hash := sha256.Sum256([]byte(userID.String()))
		avatarURL := fmt.Sprintf(
			"%s%s",
			"https://source.boringavatars.com/marble/128/",
			hex.EncodeToString(hash[:]),
		)

		_, err = userRepo.CreateUser(ctx, userrepo.CreateUserParams{
			ID:        userID,
			Email:     userClaims.Email,
			Nickname:  userClaims.PreferredUsername,
			Name:      userClaims.Name,
			AvatarUrl: &avatarURL,
		})
		if err = hwdb.Error(ctx, err); err != nil {
			return nil, err
		}
	}

	organization, err := CreateOrganizationAndAddUser(
		ctx,
		organizationrepo.Organization{
			LongName:     organizationName,
			ShortName:    hwlocale.Localize(ctx, locale.PersonalOrganizationShortName(ctx)),
			ContactEmail: userClaims.Email,
			IsPersonal:   true,
		},
		userID,
		s.kc,
		s.authz,
	)
	if err != nil {
		return nil, err
	}

	return &pb.CreatePersonalOrganizationResponse{
		Id: organization.ID.String(),
	}, nil
}
