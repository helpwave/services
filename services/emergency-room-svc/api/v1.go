package api

import (
	"github.com/google/uuid"
	"github.com/helpwave/services/libs/common"
	"github.com/helpwave/services/services/emergency-room-svc/models"

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
