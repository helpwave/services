package perm

import (
	"github.com/google/uuid"
	"hwauthz"
)

// TODO: One global permission file does not scale, it forces all services to be re-deployed when one changes

type Task uuid.UUID

func (t Task) Type() string { return "task" }
func (t Task) ID() string   { return uuid.UUID(t).String() }

type User uuid.UUID

func (t User) Type() string { return "user" }
func (t User) ID() string   { return uuid.UUID(t).String() }

type Patient uuid.UUID

func (p Patient) Type() string { return "patient" }
func (p Patient) ID() string   { return uuid.UUID(p).String() }

func NewCanUserViewTaskPermission(user User, task Task) hwauthz.Permission {
	return hwauthz.NewPermission(user, "view", task)
}

func NewCanUserUpdateTaskPermission(user User, task Task) hwauthz.Permission {
	return hwauthz.NewPermission(user, "update_task", task)
}

func NewCanUserCreateSubtaskOnTaskPermission(user User, task Task) hwauthz.Permission {
	return hwauthz.NewPermission(user, "create_subtask", task)
}

func NewCanUserDeleteSubtaskOnTaskPermission(user User, task Task) hwauthz.Permission {
	return hwauthz.NewPermission(user, "delete_subtask", task)
}

func NewCanUserUpdateSubtaskOnTaskPermission(user User, task Task) hwauthz.Permission {
	return hwauthz.NewPermission(user, "update_subtask", task)
}

func NewCanUserAssignTaskPermission(user User, task Task) hwauthz.Permission {
	return hwauthz.NewPermission(user, "assign", task)
}

func NewCanUserCompleteSubtaskPermission(user User, task Task) hwauthz.Permission {
	return hwauthz.NewPermission(user, "assign", task)
}
