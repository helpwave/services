package repositories

import (
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"hwgorm"
	"task-svc/internal/models"
)

type WardRepository struct {
	db *gorm.DB
}

func WardRepo(logCtx context.Context) *WardRepository {
	return &WardRepository{
		db: hwgorm.GetDB(logCtx),
	}
}

func (r *WardRepository) GetWardById(id uuid.UUID) (*models.Ward, error) {
	ward := models.Ward{ID: id}
	query := r.db.
		First(&ward)

	if err := query.Error; err != nil {
		return nil, err
	}
	return &ward, nil
}

func (r *WardRepository) GetWardByIdForOrganization(id, organizationID uuid.UUID) (*models.Ward, error) {
	ward := models.Ward{ID: id, OrganizationID: organizationID}
	query := r.db.
		First(&ward)

	if err := query.Error; err != nil {
		return nil, err
	}
	return &ward, nil
}

func (r *WardRepository) GetWardsForOrganization(organizationID uuid.UUID) ([]*models.Ward, error) {
	var wards []*models.Ward
	query := r.db.
		Where("organization_id = ?", organizationID).
		Find(&wards)

	if err := query.Error; err != nil {
		return nil, err
	}
	return wards, nil
}
