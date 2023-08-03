package repositories

import (
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"hwgorm"
	"task-svc/internal/models"
)

type BedRepository struct {
	db *gorm.DB
}

func BedRepo(logCtx context.Context) *BedRepository {
	return &BedRepository{
		db: hwgorm.GetDB(logCtx),
	}
}

func (r *BedRepository) CreateBed(bed *models.Bed) (*models.Bed, error) {
	query := r.db.
		Create(&bed)

	if err := query.Error; err != nil {
		return nil, err
	}
	return bed, nil
}

func (r *BedRepository) GetBedsForOrganization(organizationID uuid.UUID) ([]models.Bed, error) {
	var beds []models.Bed
	query := r.db.
		Where("organization_id = ?", organizationID).
		Order("name ASC").
		Find(&beds)

	if err := query.Error; err != nil {
		return nil, err
	}
	return beds, nil
}

func (r *BedRepository) GetBedsByRoom(roomID uuid.UUID) ([]models.Bed, error) {
	var beds []models.Bed
	query := r.db.
		Where("room_id = ?", roomID).
		Order("name ASC").
		Find(&beds)

	if err := query.Error; err != nil {
		return nil, err
	}
	return beds, nil
}

func (r *BedRepository) GetBedById(id uuid.UUID) (*models.Bed, error) {
	bed := models.Bed{}
	query := r.db.
		Where("id = ?", id).
		Order("name ASC").First(&bed)

	if err := query.Error; err != nil {
		return nil, err
	}
	return &bed, nil
}

func (r *BedRepository) GetBedsByRoomForOrganization(roomID, organizationID uuid.UUID) ([]models.Bed, error) {
	var beds []models.Bed
	query := r.db.
		Where("organization_id = ? AND room_id = ?", organizationID.String(), roomID.String()).
		Order("name ASC").
		Find(&beds)

	if err := query.Error; err != nil {
		return nil, err
	}
	return beds, nil
}

func (r *BedRepository) UpdateBed(bedID uuid.UUID, updates map[string]interface{}) (*models.Bed, error) {
	bed := &models.Bed{ID: bedID}
	query := r.db.
		Model(&bed).
		Updates(updates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return bed, nil
}

func (r *BedRepository) DeleteBed(bedID uuid.UUID) error {
	bed := &models.Bed{ID: bedID}
	query := r.db.
		Delete(&bed)

	return query.Error
}
