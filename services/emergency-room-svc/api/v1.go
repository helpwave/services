package api

import (
	"common"
	"emergency-room-svc/models"
	"github.com/google/uuid"
	"hwgorm"
	"hwutil"

	daprcmn "github.com/dapr/go-sdk/service/common"
)

//
// Create
//

type CreateERRequestV1 struct {
	models.EmergencyRoomBase
	Departments []uuid.UUID `json:"departments"`
}

//
// Get
//

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

//
// Get all
//

type GetERsRequestV1 struct {
	*hwgorm.PagedRequest
	Open        *bool                        `json:"open"`
	Utilization *hwutil.InclusiveIntInterval `json:"utilization"`
	Location    *hwgorm.Point                `json:"location"`
}

type GetERsResponseV1 struct {
	hwgorm.PageInfo
	EmergencyRooms []GetSingleERResponseV1 `json:"emergencyRooms"`
}

func (response GetERsResponseV1) ToContent() (*daprcmn.Content, error) {
	return common.ToContentJson(response, "types.helpwave.de/user-svc/GetERsResponseV1")
}

//
// Update
//

type UpdateERRequestV1 struct {
	ID                 uuid.UUID     `json:"id" validate:"required"`
	Name               *string       `json:"name"`
	Location           *hwgorm.Point `json:"location"`
	DisplayableAddress *string       `json:"displayableAddress"`
	Open               *bool         `json:"open"`
	Utilization        *int16        `json:"utilization"`
	AddDepartments     []uuid.UUID   `json:"addDepartments"`
	RemoveDepartments  []uuid.UUID   `json:"removeDepartments"`
}

//
// Delete
//

type DeleteERRequestV1 struct {
	ID uuid.UUID `json:"id" validate:"required"`
}
