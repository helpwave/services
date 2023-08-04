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

func (r *WardRepository) CreateWard(ward *models.Ward) (*models.Ward, error) {
	query := r.db.
		Create(ward)

	if err := query.Error; err != nil {
		return nil, err
	}
	return ward, nil
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

func (r *WardRepository) UpdateWard(wardId uuid.UUID, updates map[string]interface{}) (*models.Ward, error) {
	ward := &models.Ward{ID: wardId}
	query := r.db.
		Model(ward).
		Updates(updates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return ward, nil
}

func (r *WardRepository) DeleteWard(wardId uuid.UUID) error {
	ward := &models.Ward{ID: wardId}
	query := r.db.
		Delete(ward)

	return query.Error
}
