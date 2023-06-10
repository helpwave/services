package hwutil

import (
	"encoding/json"
	"github.com/go-playground/validator/v10"
	"github.com/google/uuid"
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

func Validate(target any) error {
	if validate == nil {
		validate = validator.New()
	}
	return validate.Struct(target)
}

func ParseSeconds(seconds int) time.Duration {
	return time.Duration(seconds) * time.Second
}

func TimeInNSeconds(seconds int) time.Time {
	duration := ParseSeconds(seconds)
	return time.Now().Add(duration)
}

func StringsToUUIDs(strings []string) ([]uuid.UUID, error) {
	ids := make([]uuid.UUID, len(strings))
	for _, s := range strings {
		id, err := uuid.Parse(s)
		if err != nil {
			return nil, err
		}
		ids = append(ids, id)
	}
	return ids, nil
}

// DerefStringOrEmpty returns s or "" if pointer is nil
func DerefStringOrEmpty(s *string) string {
	return DerefStringOr(s, "")
}

// DerefStringOr returns s or alternative if pointer is nil
func DerefStringOr(s *string, alternative string) string {
	if s == nil {
		return alternative
	} else {
		return *s
	}
}

func UUIDToStringPtr(u *uuid.UUID) *string {
	var s string
	if u != nil {
		s = u.String()
	}
	return &s
}
