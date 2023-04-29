package bed

import (
	"github.com/google/uuid"
	"gorm.io/gorm"
)

type BedRepository struct {
	db             *gorm.DB
	organizationID *uuid.UUID
}

func NewBedRepositoryWithDB(db *gorm.DB) *BedRepository {
	return &BedRepository{
		db: db,
	}
}

func (r *BedRepository) SetOrganization(id uuid.UUID) *BedRepository {
	r.organizationID = &id
	return r
}

func (r *BedRepository) UnsetOrganization() *BedRepository {
	r.organizationID = nil
	return r
}

func (r *BedRepository) GetById(id uuid.UUID) (*Bed, error) {
	bed := Bed{ID: id}

	if r.organizationID != nil {
		bed.OrganizationID = *r.organizationID
	}

	if err := r.db.Preload("Rooms").First(&bed).Error; err != nil {
		return nil, err
	}
	return &bed, nil
}

func (r *BedRepository) GetAll() (*[]Bed, error) {
	bed := Bed{}
	var beds []Bed

	if r.organizationID != nil {
		bed.OrganizationID = *r.organizationID
	}

	if err := r.db.Preload("Rooms").Find(&bed, &beds).Error; err != nil {
		return nil, err
	}
	return &beds, nil
}

func (r *BedRepository) GetByRoom(roomID uuid.UUID) (*[]Bed, error) {
	bed := Bed{RoomID: roomID}
	var beds []Bed

	if r.organizationID != nil {
		bed.OrganizationID = *r.organizationID
	}

	if err := r.db.Preload("Rooms").Find(&bed, &beds).Error; err != nil {
		return nil, err
	}
	return &beds, nil
}
