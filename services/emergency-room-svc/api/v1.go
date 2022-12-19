package api

import (
	"common"
	"emergency-room-svc/models"
	"github.com/google/uuid"

	daprcmn "github.com/dapr/go-sdk/service/common"
)

type CreateERRequestV1 struct {
	models.EmergencyRoomBase
	Departments []uuid.UUID
}

type GetSingleERResponseV1 struct {
	ID uuid.UUID `json:"id"`
	models.EmergencyRoomBase
	Departments []models.DepartmentBase `json:"departments"`
}

func (response GetSingleERResponseV1) ToContent() (*daprcmn.Content, error) {
	return common.ToContentJson(response, "types.helpwave.de/user-svc/GetSingleERResponseV1")
}
