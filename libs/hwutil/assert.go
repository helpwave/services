package hwutil

import (
	"fmt"
	"time"
)

// AssertTimestampToTime takes an interface and returns a time
func AssertTimestampToTime(i interface{}) (*time.Time, error) {
	var s float64
	var n float64
	d, ok := i.(map[string]interface{})
	if !ok {
		return nil, fmt.Errorf("could not assert map")
	}
	s, ok = d["seconds"].(float64)
	if !ok {
		return nil, fmt.Errorf("could not assert seconds")
	}
	n, ok = d["nanos"].(float64)
	if !ok {
		return nil, fmt.Errorf("could not assert nanos")
	}
	return PtrTo(time.Unix(int64(s), int64(n))), nil
}

// AsserDate takes an interface and returns a date
func AssertDate(i interface{}, loc *time.Location) (*time.Time, error) {
	var day float64
	var month float64
	var year float64
	d, ok := i.(map[string]interface{})
	if !ok {
		return nil, fmt.Errorf("could not assert map")
	}
	if day, ok = d["day"].(float64); !ok {
		return nil, fmt.Errorf("could not assert day")
	}
	if month, ok = d["month"].(float64); !ok {
		return nil, fmt.Errorf("could not assert month")
	}
	if year, ok = d["year"].(float64); !ok {
		return nil, fmt.Errorf("could not assert year")
	}

	return PtrTo(time.Date(int(year), time.Month(int(month)), int(day), 0, 0, 0, 0, loc)), nil
}
