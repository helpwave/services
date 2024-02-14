package hwutil

import (
	"encoding/json"
	"github.com/go-playground/validator/v10"
	"github.com/google/uuid"
	"github.com/rs/zerolog/log"
	"strconv"
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

func StringsToUUIDs(strings []string) ([]uuid.UUID, error) {
	ids := make([]uuid.UUID, 0, len(strings))
	for _, s := range strings {
		id, err := uuid.Parse(s)
		if err != nil {
			return nil, err
		}
		ids = append(ids, id)
	}
	return ids, nil
}

func UUIDToStringPtr(u *uuid.UUID) *string {
	if u != nil {
		s := u.String()
		return &s
	}
	return nil
}

func NullUUIDToStringPtr(u uuid.NullUUID) *string {
	if u.Valid {
		s := u.UUID.String()
		return &s
	}
	return nil
}

func StringToUUIDPtr(s *string) (*uuid.UUID, error) {
	var uPtr *uuid.UUID
	if s != nil {
		u, err := uuid.Parse(*s)
		if err != nil {
			return nil, err
		}
		uPtr = &u
	}
	return uPtr, nil
}

func MustParseInt(s string) int {
	i, err := strconv.ParseInt(s, 10, 32)
	if err != nil {
		log.Fatal().Str("string", s).Msg("could not parse int32")
	}

	return int(i)
}

// ParseNullUUID maps
//   - valid uuids to their parsed counterparts (valid = true),
//   - invalid uuids to invalid NullUUIDs and returns the parsing error
//   - nil-pointers to invalid NullUUIDs without returning an error
//
// Great for parsing optional uuid
func ParseNullUUID(ptr *string) (uuid.NullUUID, error) {
	id := uuid.NullUUID{} // invalid uuid
	if ptr == nil {
		return id, nil
	}
	parsedID, err := uuid.Parse(*ptr)
	id.UUID = parsedID
	id.Valid = err == nil
	return id, err
}

// PtrTo returns the pointer to the passed value
func PtrTo[T any](v T) *T {
	return &v
}
