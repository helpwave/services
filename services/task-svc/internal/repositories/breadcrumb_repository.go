package repositories

import (
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"hwgorm"
	"task-svc/internal/models"
)

type BreadcrumbRepository struct {
	db *gorm.DB
}

func BreadcrumbRepo(logCtx context.Context) *BreadcrumbRepository {
	return &BreadcrumbRepository{
		db: hwgorm.GetDB(logCtx),
	}
}

func (r *BreadcrumbRepository) LoadPatientCrumbs(patientID uuid.UUID) (*models.Ward, error) {
	var ward models.Ward
	query := r.db.Preload("Rooms").Preload("Rooms.Beds").Preload("Rooms.Beds.Patients").Where("patient_id = ?", patientID).First(&ward)
	if err := query.Error; err != nil {
		return nil, err
	}
	return &ward, nil
}

func (r *BreadcrumbRepository) LoadBedCrumbs(bedID uuid.UUID) (*models.Ward, error) {
	var ward models.Ward
	query := r.db.Preload("Rooms").Preload("Rooms.Beds").Where("bed_id = ?", bedID).First(&ward)
	if err := query.Error; err != nil {
		return nil, err
	}
	return &ward, nil
}
