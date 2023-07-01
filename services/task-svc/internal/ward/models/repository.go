package models

import (
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type WardRepository struct {
	db *gorm.DB
}

func NewWardRepositoryWithDB(db *gorm.DB) *WardRepository {
	return &WardRepository{
		db: db,
	}
}

func (r *WardRepository) GetWardById(id uuid.UUID) (*Ward, error) {

	ward := Ward{ID: id}
	if err := r.db.First(&ward).Error; err != nil {
		return nil, err
	}

	return &ward, nil
}
