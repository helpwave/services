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

func (r *RoomRepository) GetRoomById(id uuid.UUID) (*Room, error) {
	room := Room{ID: id}

	if err := r.db.Scopes(PreloadBedsSorted).First(&room).Error; err != nil {
		return nil, err
	}

	return &room, nil
}

func (r *RoomRepository) GetRoomsByWardForOrganization(ctx context.Context, wardID uuid.UUID) ([]Room, error) {
	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var rooms []Room
	query := r.db.
		Where("organization_id = ? AND ward_id = ?", organizationID.String(), wardID.String()).
		Order("name ASC").
		Find(&rooms)
	if err := query.Error; err != nil {
		return nil, err
	}

	return rooms, nil
}

func (r *RoomRepository) GetRoomsByWard(wardID uuid.UUID) ([]Room, error) {
	var rooms []Room

	if err := r.db.Where("ward_id = ?", wardID).Order("name ASC").Find(&rooms).Error; err != nil {
		return nil, err
	}

	return rooms, nil
}

// PreloadBedsSorted is a gorm scope to easily preload the Beds field,
// where the beds are sorted by name
//
//	db.Scopes(PreloadBedsSorted).Find(&rooms)
func PreloadBedsSorted(db *gorm.DB) *gorm.DB {
	return db.Preload("Beds", func(db *gorm.DB) *gorm.DB {
		return db.Order("beds.name ASC")
	})
}
