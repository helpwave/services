package hwutil

import "time"

// IntInterval should be lower-bound inclusive, upper-bound exclusive
type IntInterval struct {
	Min *int `json:"min"`
	Max *int `json:"max"`
}

// InclusiveIntInterval is a IntInterval where both Min and Max should be inclusive
type InclusiveIntInterval IntInterval

// TruncateTimeToDay is useful for proto/lib/common/v1/types' Date type
func TruncateTimeToDay(t time.Time) time.Time {
	return time.Date(t.Year(), t.Month(), t.Day(), 0, 0, 0, 0, t.Location())
}
