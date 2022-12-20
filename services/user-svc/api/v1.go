package api

import (
	"common"
	daprcmn "github.com/dapr/go-sdk/service/common"
	"github.com/google/uuid"
	"user-svc/models"
)

type CreateUserRequestV1 struct {
	Email        string `validate:"required,email"`
	FullName     string `validate:"required"`
	Password     string `validate:"required,min=6,max=100"`
	Admin        bool
	Organization uuid.UUID
}

type CreateUserResponseV1 struct {
	UserID uuid.UUID `json:"userID"`
}

func (response CreateUserResponseV1) ToContent() (*daprcmn.Content, error) {
	return common.ToContentJson(response, "types.helpwave.de/user-svc/CreateUserResponseV1")
}

type CreateOrgRequestV1 struct {
	LongName     string `validate:"required"`
	ShortName    string `gorm:"default:NULL"`
	ContactEmail string `validate:"required,email"`
}

type CreateOrgResponseV1 struct {
	models.OrganizationBase
}

func (response CreateOrgResponseV1) ToContent() (*daprcmn.Content, error) {
	return common.ToContentJson(response, "types.helpwave.de/user-svc/CreateOrgResponseV1")
}
