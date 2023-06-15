package models

import (
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
