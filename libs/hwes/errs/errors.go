package errs

import (
	"errors"
	"fmt"

	"github.com/google/uuid"
)

var (
	ErrAlreadyExists       = errors.New("cannot create an already existing aggregate")
	ErrOrganizationMissing = errors.New("organization is missing from event")
	ErrCommitterMissing    = errors.New("committer is missing from event")
	ErrPayloadMissing      = errors.New("payload is empty")
)

type NotFoundError uuid.UUID

func (e NotFoundError) Error() string {
	return fmt.Sprintf("record with id %s not found", uuid.UUID(e).String())
}
