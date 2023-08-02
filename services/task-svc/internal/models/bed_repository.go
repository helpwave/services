package models

import (
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type BedRepository struct {
	db *gorm.DB
}

func NewBedRepositoryWithDB(db *gorm.DB) *BedRepository {
	return &BedRepository{
		db: db,
	}
}

func (r *BedRepository) GetBedsByRoom(roomID uuid.UUID) ([]Bed, error) {
	var beds []Bed

	if err := r.db.Where("room_id = ?", roomID).Order("name ASC").Find(&beds).Error; err != nil {
		return nil, err
	}

	return beds, nil
}

func (r *BedRepository) GetById(id *uuid.UUID) (*Bed, error) {

	bed := Bed{}

	if err := r.db.Where("id = ?", id).Order("name ASC").First(&bed).Error; err != nil {
		return nil, err
	}

	return &bed, nil
}
