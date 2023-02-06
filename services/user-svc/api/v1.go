package api

import (
	"common"
	daprcmn "github.com/dapr/go-sdk/service/common"
	"github.com/google/uuid"
)

type CreateUserRequestV1 struct {
	Email     string `json:"email" validate:"required,email"`
	FirstName string `json:"firstName" validate:"required"`
	LastName  string `json:"lastName" validate:"required"`
	Password  string `json:"password" validate:"required,min=6,max=100"`
}

type CreateUserResponseV1 struct {
	UserID uuid.UUID `json:"userID"`
}

func (response CreateUserResponseV1) ToContent() (*daprcmn.Content, error) {
	return common.ToContentJson(response, "types.helpwave.de/user-svc/CreateUserResponseV1")
}

type CreateOrgRequestV1 struct {
	LongName  string  `json:"longName" validate:"required"`
	ShortName *string `json:"shortName"`
}

type CreateOrgResponseV1 struct {
	ID           string  `json:"id"`
	LongName     string  `json:"longName"`
	ShortName    *string `json:"shortName"`
	AvatarUrl    *string `json:"avatarUrl"`
	ContactEmail string  `json:"contactEmail"`
	IsPersonal   bool    `json:"isPersonal"`
}

func (response CreateOrgResponseV1) ToContent() (*daprcmn.Content, error) {
	return common.ToContentJson(response, "types.helpwave.de/user-svc/CreateOrgResponseV1")
}
