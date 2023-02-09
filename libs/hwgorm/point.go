package hwgorm

import (
	"database/sql/driver"
	"errors"
	"strconv"
)

// Thank you mkopriv (https://stackoverflow.com/a/68521736)

type Point struct {
	Lat  float32 `json:"lat" validate:"required"`
	Long float32 `json:"long" validate:"required"`
}

// Value converts a Point into a []byte for the database driver to consume
func (p Point) Value() (driver.Value, error) {
	out := []byte{'('}
	out = strconv.AppendFloat(out, float64(p.Lat), 'f', -1, 64)
	out = append(out, ',')
	out = strconv.AppendFloat(out, float64(p.Long), 'f', -1, 64)
	out = append(out, ')')
	return out, nil
}

// Scan converts a src (from the database) into a Point
func (p *Point) Scan(src interface{}) (err error) {
	var data []byte
	switch src := src.(type) {
	case []byte:
		data = src
	case string:
		data = []byte(src)
	case nil:
		return nil
	default:
		return errors.New("(*Point).Scan: unsupported data type")
	}

	if len(data) == 0 {
		return nil
	}

	data = data[1 : len(data)-1] // drop the surrounding parentheses
	for i := 0; i < len(data); i++ {
		if data[i] == ',' {
			var lat, long float64
			if lat, err = strconv.ParseFloat(string(data[:i]), 64); err != nil {
				return err
			}
			p.Lat = float32(lat)
			if long, err = strconv.ParseFloat(string(data[i+1:]), 64); err != nil {
				return err
			}
			p.Long = float32(long)
			break
		}
	}
	return nil
}

// MetersToMiles converts meters to miles, as required by postgres
func MetersToMiles(meters int) float32 {
	return float32(meters) * 0.000621371192
}
