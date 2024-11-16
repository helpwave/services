package perm

import (
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type Task uuid.UUID

func (t Task) Type() string { return "task" }
func (t Task) ID() string   { return uuid.UUID(t).String() }

// Direct Relations

const TaskPatient hwauthz.Relation = "patient"

// Permissions

const PatientCanUserCreateTask hwauthz.Permission = "create_task"

const (
	TaskCanUserGet           hwauthz.Permission = "get"
	TaskCanUserUpdate        hwauthz.Permission = "update"
	TaskCanUserUpdateSubtask hwauthz.Permission = "update_subtask"
	TaskCanUserAssign        hwauthz.Permission = "assign"
	TaskCanUserCreateSubtask hwauthz.Permission = "create_subtask"
	TaskCanUserDeleteSubtask hwauthz.Permission = "delete_subtask"
	TaskCanUserDelete        hwauthz.Permission = "delete"
)
