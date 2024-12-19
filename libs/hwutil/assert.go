package hwutil

import (
	"fmt"
	"time"

	"hwutil/errs"
)

// AssertTimestampToTime takes an interface and returns a time
func AssertTimestampToTime(i interface{}) (*time.Time, error) {
	d, ok := i.(map[string]interface{})
	if !ok {
		return nil, fmt.Errorf("AssertTimestampToTime: %w",
			errs.NewCastError("map[string]interface{}", i))
	}

	fields := []string{"seconds", "nanos"}
	values := make([]float64, len(fields))

	for i, field := range fields {
		var err error
		values[i], err = AssertFloat64(d[field])
		if err != nil {
			return nil, fmt.Errorf("AssertTimestampToTime: %w", errs.NewInvalidMapFieldError(field, err))
		}
	}

	timestamp := time.Unix(int64(values[0]), int64(values[1]))
	return &timestamp, nil
}

func AssertFloat64(i interface{}) (float64, error) {
	if f, ok := i.(float64); ok {
		return f, nil
	} else {
		return 0, errs.NewCastError("float32", i)
	}
}
