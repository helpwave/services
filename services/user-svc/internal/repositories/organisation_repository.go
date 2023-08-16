package repositories

import (
	"github.com/google/uuid"
	"golang.org/x/net/context"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"gorm.io/gorm"
	"hwgorm"
	"user-svc/internal/models"
)

type OrganisationRepository struct {
	db *gorm.DB
}

func OrganisationRepo(logCtx context.Context) *OrganisationRepository {
	return &OrganisationRepository{
		db: hwgorm.GetDB(logCtx),
	}
}

func (r *OrganisationRepository) IsAdminInOrganization(organizationID uuid.UUID, userID uuid.UUID) (bool, error) {

	membership := models.Membership{
		UserID:         userID,
		OrganizationID: organizationID,
	}

	err := r.db.First(&membership).Error
	if err != nil {
		if hwgorm.IsOurFault(err) {
			return false, status.Error(codes.Internal, err.Error())
		} else {
			return false, status.Error(codes.InvalidArgument, "not a member of this organization")
		}
	}
	isAdmin := membership.IsAdmin
	return isAdmin, nil
}

func (r *OrganisationRepository) GetOrganizationById(id uuid.UUID) (*models.Organization, error) {
	organization := models.Organization{ID: id}

	if err := r.db.Preload("Members").First(&organization).Error; err != nil {
		return nil, err
	}

	return &organization, nil
}

func (r *OrganisationRepository) GetInvitationById(id uuid.UUID) (*models.Invitation, error) {
	invitation := models.Invitation{
		ID: id,
	}

	if err := r.db.First(&invitation).Error; err != nil {
		return nil, err
	}

	return &invitation, nil
}
