package models

import "github.com/google/uuid"

type DepartmentBase struct {
	ID   uuid.UUID `json:"id"`
	Name string    `json:"name" gorm:"default:NULL"`
}

type Department struct {
	DepartmentBase
	Rooms []EmergencyRoom `gorm:"many2many:rooms_have_departments"`
}

// DepartmentsToBases creates an array of DepartmentsToBases for a given array of Departments
func DepartmentsToBases(deps []Department) []DepartmentBase {
	bases := make([]DepartmentBase, len(deps))
	for i := range deps {
		bases[i] = deps[i].DepartmentBase
	}
	return bases
}

// UUIDsToDepartments turns given department UUIDs into an array of Departments
func UUIDsToDepartments(departments []uuid.UUID) []Department {
	deps := make([]Department, len(departments))
	for i := range departments {
		deps[i].ID = departments[i]
	}

	return deps
}
