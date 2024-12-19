package errs

import "fmt"

type InvalidMapFieldError struct {
	FieldName string
	Cause     error
}

func NewInvalidMapFieldError(fieldName string, cause error) InvalidMapFieldError {
	return InvalidMapFieldError{
		FieldName: fieldName,
		Cause:     cause,
	}
}

func (e InvalidMapFieldError) Unwrap() error {
	return e.Cause
}

func (e InvalidMapFieldError) Error() string {
	if e.Cause != nil {
		return fmt.Errorf("InvalidMapFieldError: %q is invalid: '%w'", e.FieldName, e.Cause).Error()
	} else {
		return fmt.Sprintf("InvalidMapFieldError:  %q is invalid'", e.FieldName)
	}
}
