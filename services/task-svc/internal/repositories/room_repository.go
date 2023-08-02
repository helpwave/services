package repositories

import (
	"common"
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"task-svc/internal/models"
)

type RoomRepository struct {
	db *gorm.DB
}

func NewRoomRepositoryWithDB(db *gorm.DB) *RoomRepository {
	return &RoomRepository{
		db: db,
	}
}

func (r *RoomRepository) GetById(id uuid.UUID) (*models.Room, error) {
	room := models.Room{ID: id}

	if err := r.db.Preload("Beds").First(&room).Error; err != nil {
		return nil, err
	}

	return &room, nil
}

func (r *RoomRepository) GetByWardForOrganization(ctx context.Context, wardID uuid.UUID) ([]models.Room, error) {
	organizationID, err := common.GetOrganizationID(ctx)
	if err != nil {
		return nil, err
	}

	var rooms []models.Room
	if err := r.db.Where("organization_id = ? AND ward_id = ?", organizationID.String(), wardID.String()).Find(&rooms).Error; err != nil {
		return nil, err
	}

	return rooms, nil
}

func (r *RoomRepository) GetRoomByWard(wardID uuid.UUID) ([]models.Room, error) {
	var rooms []models.Room

	if err := r.db.Where("ward_id = ?", wardID).Find(&rooms).Error; err != nil {
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
