package models

import "github.com/google/uuid"

const Admin = "admin"

type UserBase struct {
	ID             uuid.UUID `json:"id"`
	Email          string    `json:"email" gorm:"default:NULL"`
	FullName       string    `json:"fullName" gorm:"default:NULL"`
	AvatarUrl      string    `json:"avatarUrl" gorm:"default:NULL"`
	OrganizationID uuid.UUID `json:"organizationID" gorm:"default:NULL"`
}

type User struct {
	UserBase
	PwBcrypt     string `gorm:"default:NULL"`
	Organization Organization
	GlobalRoles  []GlobalRole
}

type GlobalRole struct {
	UserID uuid.UUID
	Role   string `gorm:"default:NULL"`
}
