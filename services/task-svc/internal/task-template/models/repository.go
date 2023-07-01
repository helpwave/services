package models

import (
	"gorm.io/gorm"
)

type TemplateRepository struct {
	db *gorm.DB
}

func NewTemplateRepositoryWithDB(db *gorm.DB) *TemplateRepository {
	return &TemplateRepository{
		db: db,
	}
}
