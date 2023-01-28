package hwutil

import (
	"encoding/json"
	"github.com/go-playground/validator/v10"
	"time"
)

var validate *validator.Validate

// ParseValidJson parses a JSON buffer into a struct and runs verifier on it
func ParseValidJson(buffer []byte, target any) error {
	if err := json.Unmarshal(buffer, target); err != nil {
		return err
	}
	if validate == nil {
		validate = validator.New()
	}
	if err := validate.Struct(target); err != nil {
		return err
	}
	return nil
}

func ParseSeconds(seconds int) time.Duration {
	return time.Duration(seconds) * time.Second
}

func TimeInNSeconds(seconds int) time.Time {
	duration := ParseSeconds(seconds)
	return time.Now().Add(duration)
}
