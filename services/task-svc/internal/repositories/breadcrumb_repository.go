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

func (r *BreadcrumbRepository) LoadPatientCrumbs(patientId uuid.UUID) (*models.Patient, error) {
	var patient models.Patient
	query := r.db.Preload("Bed.Room.Ward").Preload("Bed.Room").Preload("Bed").Where("patients.id = ?", patientId).First(&patient)
	if err := query.Error; err != nil {
		return nil, err
	}
	return &patient, nil
}

func (r *BreadcrumbRepository) LoadBedCrumbs(bedId uuid.UUID) (*models.Bed, error) {
	var bed models.Bed
	query := r.db.Preload("Room.Ward").Preload("Room").Where("beds.id = ?", bedId).First(&bed)
	if err := query.Error; err != nil {
		return nil, err
	}
	return &bed, nil
}

func (r *BreadcrumbRepository) LoadRoomCrumbs(roomId uuid.UUID) (*models.Room, error) {
	var room models.Room
	query := r.db.Preload("Ward").Where("rooms.id = ?", roomId).First(&room)
	if err := query.Error; err != nil {
		return nil, err
	}
	return &room, nil
}

func (r *BreadcrumbRepository) LoadWardCrumbs(wardId uuid.UUID) (*models.Ward, error) {
	var ward models.Ward
	query := r.db.Where("wards.id = ?", wardId).First(&ward)
	if err := query.Error; err != nil {
		return nil, err
	}
	return &ward, nil
}

/* TODO add later
func (r *BreadcrumbRepository) LoadOrganizationCrumbs(organizationId uuid.UUID) (*models.Ward, error) {
	var ward models.Ward
	query := r.db.Where("wards.id = ?", wardId).First(&ward)
	if err := query.Error; err != nil {
		return nil, err
	}
	return &ward, nil
}
*/
