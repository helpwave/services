package repositories

import (
	"context"
	"github.com/google/uuid"
	"gorm.io/gorm"
	"hwgorm"
	"task-svc/internal/models"
)

type RoomRepository struct {
	db *gorm.DB
}

func RoomRepo(logCtx context.Context) *RoomRepository {
	return &RoomRepository{
		db: hwgorm.GetDB(logCtx),
	}
}

func (r *RoomRepository) CreateRoom(room *models.Room) (*models.Room, error) {
	query := r.db.
		Create(room)

	if err := query.Error; err != nil {
		return nil, err
	}
	return room, nil
}

func (r *RoomRepository) GetRoomWithBedsById(id uuid.UUID) (*models.Room, error) {
	room := models.Room{ID: id}
	query := r.db.
		Scopes(PreloadBedsSorted).
		First(&room)

	if err := query.Error; err != nil {
		return nil, err
	}
	return &room, nil
}

func (r *RoomRepository) GetRoomsWithBedsForOrganization(organizationID uuid.UUID) ([]models.Room, error) {
	var rooms []models.Room
	query := r.db.
		Scopes(PreloadBedsSorted).
		Where("organization_id = ?", organizationID.String()).
		Order("name ASC").
		Find(&rooms)

	if err := query.Error; err != nil {
		return nil, err
	}
	return rooms, nil
}

func (r *RoomRepository) GetRoomsWithBedsByWardForOrganization(wardID uuid.UUID, organizationID uuid.UUID) ([]models.Room, error) {
	var rooms []models.Room
	query := r.db.
		Scopes(PreloadBedsSorted).
		Where("organization_id = ? AND ward_id = ?", organizationID.String(), wardID.String()).
		Order("name ASC").
		Find(&rooms)

	if err := query.Error; err != nil {
		return nil, err
	}
	return rooms, nil
}

func (r *RoomRepository) GetRoomsByWard(wardID uuid.UUID) ([]models.Room, error) {
	var rooms []models.Room
	query := r.db.
		Where("ward_id = ?", wardID).
		Order("name ASC").
		Find(&rooms)

	if err := query.Error; err != nil {
		return nil, err
	}
	return rooms, nil
}

func (r *RoomRepository) GetRoomsWithBedsAndPatientsAndTasksByWardForOrganization(wardID, organizationID uuid.UUID) ([]models.Room, error) {
	var rooms []models.Room
	query := r.db.
		Scopes(PreloadBedsSorted).
		Preload("Beds.Patient").
		Preload("Beds.Patient.Tasks").
		Where("organization_id = ? AND ward_id = ?", organizationID.String(), wardID.String()).
		Order("name ASC").
		Find(&rooms)

	if err := query.Error; err != nil {
		return nil, err
	}
	return rooms, nil
}

func (r *RoomRepository) UpdateRoom(roomID uuid.UUID, updates map[string]interface{}) (*models.Room, error) {
	room := &models.Room{ID: roomID}
	query := r.db.
		Model(room).
		Updates(updates)

	if err := query.Error; err != nil {
		return nil, err
	}
	return room, nil
}

func (r *RoomRepository) DeleteRoom(roomID uuid.UUID) error {
	room := &models.Room{ID: roomID}
	query := r.db.
		Delete(room)
	return query.Error
}
