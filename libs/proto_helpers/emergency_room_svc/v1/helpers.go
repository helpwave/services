package emergency_room_svc

import (
	pb "gen/proto/services/emergency_room_svc/v1"
	"hwgorm"
)

func FromGormPoint(point *hwgorm.Point) *pb.Point {
	return &pb.Point{
		Lat:  point.Lat,
		Long: point.Long,
	}
}

func ToGormPagedRequest(pr *pb.PagedRequest) hwgorm.PagedRequest {
	return hwgorm.PagedRequest{
		Page:     int(pr.Page),
		PageSize: int(pr.PageSize),
	}
}

// UpdatesMap is a map only containing the requested updates
// this is needed due to go's handling of default values
// and makes it possible for gorm to update a field for an ER
// with a zero value without it being skipped
func UpdatesMapForUpdateERRequest(r *pb.UpdateERRequest) map[string]interface{} {
	m := make(map[string]interface{})

	if r.Name != nil {
		m["name"] = *r.Name
	}
	if r.Location != nil {
		m["location"] = hwgorm.Point{
			Lat:  r.Location.Lat,
			Long: r.Location.Long,
		}
	}
	if r.DisplayableAddress != nil {
		m["displayable_address"] = *r.DisplayableAddress
	}
	if r.Open != nil {
		m["open"] = *r.Open
	}
	if r.Utilization != nil {
		m["utilization"] = *r.Utilization
	}
	return m
}
