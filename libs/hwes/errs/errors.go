package errs

import "errors"

var ErrAlreadyExists = errors.New("cannot create an already existing aggregate")
