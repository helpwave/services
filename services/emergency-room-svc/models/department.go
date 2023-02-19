package models

import (
	"emergency-room-svc/api"
	"github.com/google/uuid"
)

type Department struct {
	ID    uuid.UUID       `json:"id"`
	Name  string          `json:"name" gorm:"default:NULL"`
	Rooms []EmergencyRoom `gorm:"many2many:rooms_have_departments"`
}

// DepartmentsToBases creates an array of DepartmentBases for a given array of Departments
func DepartmentsToBases(deps []Department) []*api.DepartmentBase {
	bases := make([]*api.DepartmentBase, len(deps))
	for i := range deps {
		bases[i].Id = deps[i].ID.String()
		bases[i].Name = deps[i].Name
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
