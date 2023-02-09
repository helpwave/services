package api

import (
	"hwgorm"
)

func FromGormPoint(point *hwgorm.Point) *Point {
	return &Point{
		Lat:  point.Lat,
		Long: point.Long,
	}
}

func ToGormPagedRequest(pr *PagedRequest) hwgorm.PagedRequest {
	return hwgorm.PagedRequest{
		Page:     int(pr.Page),
		PageSize: int(pr.PageSize),
	}
}

// UpdatesMap is a map only containing the requested updates
// this is needed due to go's handling of default values
// and makes it possible for gorm to update a field for an ER
// with a zero value without it being skipped
func (x *UpdateERRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if x.Name != nil {
		m["name"] = *x.Name
	}
	if x.Location != nil {
		m["location"] = hwgorm.Point{
			Lat:  x.Location.Lat,
			Long: x.Location.Long,
		}
	}
	if x.DisplayableAddress != nil {
		m["displayable_address"] = *x.DisplayableAddress
	}
	if x.Open != nil {
		m["open"] = *x.Open
	}
	if x.Utilization != nil {
		m["utilization"] = *x.Utilization
	}
	return m
}
