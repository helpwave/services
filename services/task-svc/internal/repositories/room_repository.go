package repositories

import (
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"hwgorm"
	"task-svc/internal/models"
)

type RoomRepository struct {
	db *gorm.DB
}

func RoomRepo(logCtx context.Context) *RoomRepository {
	return &RoomRepository{
		db: hwgorm.GetDB(logCtx),
	}
}

func (r *RoomRepository) GetById(id uuid.UUID) (*models.Room, error) {
	room := models.Room{ID: id}
	query := r.db.
		Preload("Beds").
		First(&room)

	if err := query.Error; err != nil {
		return nil, err
	}
	return &room, nil
}

func (r *RoomRepository) GetByWardForOrganization(wardID uuid.UUID, organizationID uuid.UUID) ([]models.Room, error) {
	var rooms []models.Room
	query := r.db.
		Where("organization_id = ? AND ward_id = ?", organizationID.String(), wardID.String()).
		Find(&rooms)

	if err := query.Error; err != nil {
		return nil, err
	}
	return rooms, nil
}

func (r *RoomRepository) GetRoomByWard(wardID uuid.UUID) ([]models.Room, error) {
	var rooms []models.Room
	query := r.db.
		Where("ward_id = ?", wardID).
		Find(&rooms)

	if err := query.Error; err != nil {
		return nil, err
	}
	return rooms, nil
}
