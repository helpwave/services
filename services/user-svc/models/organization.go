package models

import "github.com/google/uuid"

type OrganizationBase struct {
	ID           uuid.UUID `json:"id"`
	LongName     string    `json:"longName" gorm:"default:NULL"`
	ShortName    string    `json:"shortName" gorm:"default:NULL"`
	AvatarUrl    string    `json:"avatarUrl" gorm:"default:NULL"`
	ContactEmail string    `json:"contactEmail" gorm:"default:NULL"`
}

type Organization struct {
	OrganizationBase
	Users []User
}
