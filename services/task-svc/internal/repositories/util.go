package repositories

import "gorm.io/gorm"

// preloadBedsSorted is a gorm scope to easily preload the Beds field,
// where the beds are sorted by name
//
//	db.Scopes(preloadBedsSorted).Find(&rooms)
func preloadBedsSorted(db *gorm.DB) *gorm.DB {
	return db.Preload("Beds", func(db *gorm.DB) *gorm.DB {
		return db.Order("beds.name ASC")
	})
}
