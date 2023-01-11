package api

import (
	"common"
	"emergency-room-svc/models"
	"github.com/google/uuid"
	"hwgorm"
	"hwutil"

	daprcmn "github.com/dapr/go-sdk/service/common"
)

type CreateERRequestV1 struct {
	models.EmergencyRoomBase
	Departments []uuid.UUID
}

type GetSingleERRequestV1 struct {
	ID uuid.UUID `json:"id" validate:"required"`
}

type GetSingleERResponseV1 struct {
	ID uuid.UUID `json:"id"`
	models.EmergencyRoomBase
	Departments []models.DepartmentBase `json:"departments"`
}

func (response GetSingleERResponseV1) ToContent() (*daprcmn.Content, error) {
	return common.ToContentJson(response, "types.helpwave.de/user-svc/GetSingleERResponseV1")
}

type LocationFilterV1 struct {
	Point  hwgorm.Point `json:"point" validate:"required"`
	Radius int          `json:"radius" validate:"required"`
}

type GetERsRequestV1 struct {
	*hwgorm.PagedRequest
	Open        *bool               `json:"open"`
	Utilization *hwutil.IntInterval `json:"utilization"`
	Location    *LocationFilterV1   `json:"location"`
	Departments *[]uuid.UUID        `json:"departments"`
}

type GetERsResponseV1 struct {
	hwgorm.PageInfo
	EmergencyRooms []GetSingleERResponseV1 `json:"emergencyRooms"`
}

func (response GetERsResponseV1) ToContent() (*daprcmn.Content, error) {
	return common.ToContentJson(response, "types.helpwave.de/user-svc/GetERsResponseV1")
}

type DeleteERRequestV1 struct {
	ID uuid.UUID `json:"id" validate:"required"`
}
