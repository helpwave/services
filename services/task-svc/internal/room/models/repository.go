package models

import (
	"common"
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type RoomRepository struct {
	db *gorm.DB
}

func NewRoomRepositoryWithDB(db *gorm.DB) *RoomRepository {
	return &RoomRepository{
		db: db,
	}
}

func (r *RoomRepository) GetById(id uuid.UUID) (*Room, error) {
	room := Room{ID: id}

	if err := r.db.Preload("Beds").First(&room).Error; err != nil {
		return nil, err
	}

	return &room, nil
}

func (r *RoomRepository) GetByWardForOrganization(ctx context.Context, wardID uuid.UUID) ([]Room, error) {
	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var rooms []Room
	if err := r.db.Where("organization_id = ? AND ward_id = ?", organizationID.String(), wardID.String()).Find(&rooms).Error; err != nil {
		return nil, err
	}

	return rooms, nil
}

func (r *RoomRepository) GetRoomByWard(wardID uuid.UUID) ([]Room, error) {
	var rooms []Room

	if err := r.db.Where("ward_id = ?", wardID).Find(&rooms).Error; err != nil {
		return nil, err
	}

	return rooms, nil
}
