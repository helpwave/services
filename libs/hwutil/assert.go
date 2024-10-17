package hwutil

import (
	"errors"
	"time"
)

// AssertTimestampToTime takes an interface and returns a time
func AssertTimestampToTime(i interface{}) (*time.Time, error) {
	var s float64
	var n float64
	d, ok := i.(map[string]interface{})
	if !ok {
		return nil, errors.New("could not assert map")
	}
	s, ok = d["seconds"].(float64)
	if !ok {
		return nil, errors.New("could not assert seconds")
	}
	n, ok = d["nanos"].(float64)
	if !ok {
		return nil, errors.New("could not assert nanos")
	}
	return PtrTo(time.Unix(int64(s), int64(n))), nil
}
