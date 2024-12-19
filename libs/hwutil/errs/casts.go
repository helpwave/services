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
	return CastError{
		Got:      reflect.TypeOf(got).String(),
		Expected: expected,
	}
}

func (e CastError) Error() string {
	return fmt.Sprintf("CastError: expected: '%s', got: '%s'", e.Expected, e.Got)
}
