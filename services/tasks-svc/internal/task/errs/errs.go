package errs

import (
	"fmt"

	"github.com/google/uuid"
)

type SubtaskNotInTaskError struct {
	Subtask uuid.UUID
	Task    uuid.UUID
}

func (e SubtaskNotInTaskError) Error() string {
	return fmt.Sprintf("subtask %q not found in task %q",
		e.Subtask.String(), e.Task.String())
}
