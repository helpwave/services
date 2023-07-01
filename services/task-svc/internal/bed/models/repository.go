package models

import (
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type BedRepository struct {
	db *gorm.DB
}

func NewRoomRepositoryWithDB(db *gorm.DB) *BedRepository {
	return &BedRepository{
		db: db,
	}
}

func (r *BedRepository) GetByRoom(roomID uuid.UUID) ([]Bed, error) {
	var rooms []Bed

	if err := r.db.Find(Bed{RoomID: roomID}).Error; err != nil {
		return nil, err
	}

	return rooms, nil
}
