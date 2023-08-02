package repositories

import (
	"common"
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
	if err := r.db.First(&ward).Error; err != nil {
		return nil, err
	}

	return &ward, nil
}

func (r *WardRepository) GetWardByIdForOrganization(ctx context.Context, id uuid.UUID) (*models.Ward, error) {
	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward := models.Ward{ID: id, OrganizationID: organizationID}
	if err := r.db.First(&ward).Error; err != nil {
		return nil, err
	}

	return &ward, nil
}

func (r *WardRepository) GetWardsForOrganization(ctx context.Context) ([]*models.Ward, error) {
	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var wards []*models.Ward
	if err := r.db.Where("organization_id = ?", organizationID).Find(&wards).Error; err != nil {
		return nil, err
	}

	return wards, err
}
