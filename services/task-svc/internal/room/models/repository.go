package models

import (
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type RoomRepository struct {
	db             *gorm.DB
	organizationID *uuid.UUID
}

func NewRoomRepositoryWithDB(db *gorm.DB) *RoomRepository {
	return &RoomRepository{
		db: db,
	}
}

func (r *RoomRepository) SetOrganization(id uuid.UUID) *RoomRepository {
	r.organizationID = &id
	return r
}

func (r *RoomRepository) UnsetOrganization() *RoomRepository {
	r.organizationID = nil
	return r
}

func (r *RoomRepository) GetById(id uuid.UUID) (*Room, error) {
	room := Room{ID: id}

	if r.organizationID != nil {
		// room.OrganizationID = r.organizationID
	}

	if err := r.db.Preload("Beds").First(&room).Error; err != nil {
		return nil, err
	}
	return &room, nil
}
