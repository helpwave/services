package hwutil

// IntInterval should be lower-bound inclusive, upper-bound exclusive
type IntInterval struct {
	Min *int `json:"min"`
	Max *int `json:"max"`
}
