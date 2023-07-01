package models

import (
	"common"
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type WardRepository struct {
	db *gorm.DB
}

func NewWardRepositoryWithDB(db *gorm.DB) *WardRepository {
	return &WardRepository{
		db: db,
	}
}

func (r *WardRepository) GetWardById(id uuid.UUID) (*Ward, error) {
	ward := Ward{ID: id}
	if err := r.db.First(&ward).Error; err != nil {
		return nil, err
	}

	return &ward, nil
}

func (r *WardRepository) GetWardByIdForOrganization(ctx context.Context, id uuid.UUID) (*Ward, error) {
	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	ward := Ward{ID: id, OrganizationID: organizationID}
	if err := r.db.First(&ward).Error; err != nil {
		return nil, err
	}

	return &ward, nil
}

func (r *WardRepository) GetWardsForOrganization(ctx context.Context) ([]*Ward, error) {
	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var wards []*Ward
	if err := r.db.Where("organization_id = ?", organizationID).Find(&wards).Error; err != nil {
		return nil, err
	}

	return wards, err
}
