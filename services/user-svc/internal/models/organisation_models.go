package models

import (
	pb "gen/proto/services/user_svc/v1"
	"github.com/google/uuid"
)

type Base struct {
	LongName     string `gorm:"column:long_name"`
	ShortName    string `gorm:"column:short_name"`
	ContactEmail string `gorm:"column:contact_email"`
	AvatarUrl    string `gorm:"column:avatar_url"`
	IsPersonal   bool   `gorm:"column:is_personal"`
}

type Organization struct {
	Base
	ID              uuid.UUID    `gorm:"column:id;default:uuid_generate_v4()"`
	CreatedByUserId uuid.UUID    `gorm:"column:created_by_user_id"`
	Members         []Membership `gorm:"foreignKey:OrganizationID"`
	Invitations     []Invitation `gorm:"foreignKey:OrganizationID"`
}

type Membership struct {
	ID             uuid.UUID    `gorm:"primaryKey,column:id;default:uuid_generate_v4()"`
	UserID         uuid.UUID    `gorm:"column:user_id"`
	User           User         `gorm:"foreignKey:UserID"`
	OrganizationID uuid.UUID    `gorm:"column:organization_id"`
	Organization   Organization `gorm:"foreignKey:OrganizationID"`
	IsAdmin        bool         `gorm:"column:is_admin;default:False"`
}

type Invitation struct {
	ID             uuid.UUID `gorm:"column:id;default:uuid_generate_v4()"`
	OrganizationID uuid.UUID `gorm:"column:organization_id"`
	Organization   Organization
	Email          string             `gorm:"column:email"`
	State          pb.InvitationState `gorm:"column:state"`
}
