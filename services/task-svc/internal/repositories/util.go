package repositories

import "gorm.io/gorm"

// TODO: make private

// PreloadBedsSorted is a gorm scope to easily preload the Beds field,
// where the beds are sorted by name
//
//	db.Scopes(PreloadBedsSorted).Find(&rooms)
func PreloadBedsSorted(db *gorm.DB) *gorm.DB {
	return db.Preload("Beds", func(db *gorm.DB) *gorm.DB {
		return db.Order("beds.name ASC")
	})
}
