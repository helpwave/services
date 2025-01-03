package errs

import (
	"fmt"
	"reflect"
)

type CastError struct {
	// Type that was provided
	Got string
	// Type that was Expected
	Expected string
}

// NewCastError constructs a new CastError using a provided Expected string and any value you got instead,
// it will then use refection to return the error
func NewCastError(expected string, got interface{}) CastError {
	gotType := "nil"
	if got != nil {
		gotType = reflect.TypeOf(got).String()
	}

	return CastError{
		Got:      gotType,
		Expected: expected,
	}
}

func (e CastError) Error() string {
	return fmt.Sprintf("CastError: expected: '%s', got: '%s'", e.Expected, e.Got)
}
