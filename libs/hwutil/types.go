package hwutil

// IntInterval should be lower-bound inclusive, upper-bound exclusive
type IntInterval struct {
	Min *int `json:"min"`
	Max *int `json:"max"`
}

// InclusiveIntInterval is a IntInterval where both Min and Max should be inclusive
type InclusiveIntInterval IntInterval
