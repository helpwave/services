package organization

import (
	"common"
	"context"
	pb "gen/proto/services/user_svc/v1"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
	"hwgorm"
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
	ID              uuid.UUID `gorm:"column:id"`
	CreatedByUserId uuid.UUID `gorm:"column:created_by_user_id"`
	Members         []Member  `gorm:"foreignKey:OrganizationID"`
}

type Member struct {
	ID             uuid.UUID `gorm:"primaryKey,column:id"`
	UserID         uuid.UUID `gorm:"column:user_id"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
}

type ServiceServer struct {
	pb.UnimplementedOrganizationServiceServer
}

func NewServiceServer() *ServiceServer {
	return &ServiceServer{}
}

func (s ServiceServer) CreateOrganization(ctx context.Context, req *pb.CreateOrganizationRequest) (*pb.CreateOrganizationResponse, error) {
	db := hwgorm.GetDB(ctx)

	claims, err := common.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	userID, err := uuid.Parse(claims.Sub)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	var organization Organization
	err = db.Transaction(func(tx *gorm.DB) error {
		organizationPtr, err := CreateOrganization(
			ctx,
			tx,
			Base{
				LongName:     req.LongName,
				ShortName:    req.ShortName,
				ContactEmail: req.ContactEmail,
				IsPersonal:   false,
			},
			userID,
		)
		if err != nil {
			return err
		}

		organization = *organizationPtr

		if err := AddUserToOrganization(ctx, tx, userID, organization.ID); err != nil {
			return err
		}

		return nil
	})

	if err != nil {
		if hwgorm.IsOurFault(err) {
			return nil, status.Error(codes.Internal, err.Error())
		} else {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
	}

	// TODO: Dispatch OrganizationCreatedEvent & UserJoinedOrganizationEvent

	return &pb.CreateOrganizationResponse{
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
	var members []*pb.Member
	for _, member := range organization.Members {
		members = append(members, &pb.Member{UserId: member.UserID.String()})
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
		Members:         []Member{},
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
	member := Member{
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
