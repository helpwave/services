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
}

// UpdatesMap is a map only containing the requested updates
// this is needed due to go's handling of default values
// and makes it possible for gorm to update a field for an ER
// with a zero value without it being skipped
func (request *UpdateERRequestV1) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if request.Name != nil {
		m["name"] = *request.Name
	}
	if request.Location != nil {
		m["location"] = *request.Location
	}
	if request.DisplayableAddress != nil {
		m["displayable_address"] = *request.DisplayableAddress
	}
	if request.Open != nil {
		m["open"] = *request.Open
	}
	if request.Utilization != nil {
		m["utilization"] = *request.Utilization
	}
	return m
}

type AddDepartmentsToERRequestV1 struct {
	ID          uuid.UUID   `json:"id" validate:"required"`
	Departments []uuid.UUID `json:"departments" validate:"required"`
}

type RemoveDepartmentsFromERRequestV1 struct {
	ID          uuid.UUID   `json:"id" validate:"required"`
	Departments []uuid.UUID `json:"departments" validate:"required"`
}

//
// Delete
//

type DeleteERRequestV1 struct {
	ID uuid.UUID `json:"id" validate:"required"`
}
