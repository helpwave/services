package repositories

import (
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"hwgorm"
	"task-svc/internal/models"
)

type PatientRepository struct {
	db *gorm.DB
}

func PatientRepo(logCtx context.Context) *PatientRepository {
	return &PatientRepository{
		db: hwgorm.GetDB(logCtx),
	}
}

func (r *PatientRepository) CreatePatient(patient *models.Patient) (*models.Patient, error) {
	query := r.db.
		Create(patient)

	if err := query.Error; err != nil {
		return nil, err
	}
	return patient, nil
}

func (r *PatientRepository) GetPatientById(id uuid.UUID) (*models.Patient, error) {
	patient := &models.Patient{ID: id}
	query := r.db.
		First(patient)

	if err := query.Error; err != nil {
		return nil, err
	}
	return patient, nil
}

func (r *PatientRepository) GetPatientsByIdsWithBedAndRoom(ids []uuid.UUID) ([]models.Patient, error) {
	var patients []models.Patient

	query := r.db.
		Where("id IN ?", ids).
		Preload("Bed").
		Preload("Bed.Room").
		Find(&patients)

	if err := query.Error; err != nil {
		return nil, err
	}
	return patients, nil
}

func (r *PatientRepository) GetPatientsByWardForOrganization(wardID, organizationID uuid.UUID) ([]models.Patient, error) {
	var patients []models.Patient
	query := r.db.
		Table("patients").
		Joins("JOIN beds ON beds.id = patients.bed_id").
		Joins("JOIN rooms ON rooms.id = beds.room_id").
		Where("rooms.ward_id = ? AND rooms.organization_id = ?", wardID, organizationID).
		Find(&patients)

	if err := query.Error; err != nil {
		return nil, err
	}
	return patients, nil
}

func (r *PatientRepository) GetRoomsWithBedsWithPatientsByWard(wardID uuid.UUID) ([]models.Room, error) {
	var rooms []models.Room
	query := r.db.
		Preload("Beds.Patient").
		Scopes(preloadBedsSorted).
		Where("ward_id = ?", wardID).
		Find(&rooms)

	if err := query.Error; err != nil {
		return nil, err
	}
	return rooms, nil
}

func (r *PatientRepository) GetUnassignedPatientsForOrganization(organizationID uuid.UUID) ([]models.Patient, error) {
	var unassignedPatients []models.Patient
	query := r.db.
		Where("organization_id = ? AND bed_id IS NULL AND is_discharged = 0", organizationID).
		Find(&unassignedPatients)

	if err := query.Error; err != nil {
		return nil, err
	}
	return unassignedPatients, nil
}

func (r *PatientRepository) GetDischargedPatientsForOrganization(organizationID uuid.UUID) ([]models.Patient, error) {
	var patients []models.Patient
	query := r.db.
		Unscoped().
		Where("organization_id = ? AND NOT is_discharged = 0", organizationID).
		Find(&patients)

	if err := query.Error; err != nil {
		return nil, err
	}
	return patients, nil
}

func (r *PatientRepository) GetRoomsWithBedsWithActivePatientsForOrganization(organizationID uuid.UUID) ([]models.Room, error) {
	var rooms []models.Room
	query := r.db.
		Preload("Beds.Patient").
		Joins("JOIN beds ON rooms.id = beds.room_id").
		Joins("JOIN patients ON patients.bed_id = beds.id").
		Where("patients.organization_id = ? AND patients.is_discharged = 0", organizationID).
		Group("rooms.id").
		Find(&rooms)

	if err := query.Error; err != nil {
		return nil, err
	}
	return rooms, nil
}

func (r *PatientRepository) UpdatePatient(patientID uuid.UUID, updates map[string]interface{}) (*models.Patient, error) {
	patient := &models.Patient{ID: patientID}
	query := r.db.
		Model(patient).
		Updates(updates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return patient, nil
}

func (r *PatientRepository) DeletePatient(patientID uuid.UUID) (*models.Patient, error) {
	patient := &models.Patient{ID: patientID}
	query := r.db.Unscoped().Delete(patient)

	if err := query.Error; err != nil {
		return nil, err
	}
	return patient, nil
}
