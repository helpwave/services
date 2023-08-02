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

func (r *BedRepository) GetBedsByRoom(roomID uuid.UUID) ([]models.Bed, error) {
	var beds []models.Bed

	if err := r.db.Where("room_id = ?", roomID).Order("name ASC").Find(&beds).Error; err != nil {
		return nil, err
	}

	return beds, nil
}

func (r *BedRepository) GetById(id *uuid.UUID) (*models.Bed, error) {

	bed := models.Bed{}

	if err := r.db.Where("id = ?", id).Order("name ASC").First(&bed).Error; err != nil {
		return nil, err
	}

	return &bed, nil
}
