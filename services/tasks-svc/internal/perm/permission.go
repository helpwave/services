package perm

import (
	"github.com/google/uuid"
	"hwauthz"
)

// Types

type Task uuid.UUID

func (t Task) Type() string { return "task" }
func (t Task) ID() string   { return uuid.UUID(t).String() }

type User uuid.UUID

func (t User) Type() string { return "user" }
func (t User) ID() string   { return uuid.UUID(t).String() }

type Patient uuid.UUID

func (p Patient) Type() string { return "patient" }
func (p Patient) ID() string   { return uuid.UUID(p).String() }

// Direct Relations

const TaskAssignee hwauthz.Relation = "assignee"
const TaskPatient hwauthz.Relation = "patient"

// Permission

const CanUserViewTask hwauthz.Permission = "view"
const CanUserUpdateTask hwauthz.Permission = "update_task"
const CanUserCreateSubtaskOnTask hwauthz.Permission = "create_subtask"
const CanUserDeleteSubtaskOnTask hwauthz.Permission = "delete_subtask"
const CanUserUpdateSubtaskOnTask hwauthz.Permission = "update_subtask"
const CanUserAssignTask hwauthz.Permission = "assign"
const CanUserCompleteSubtask hwauthz.Permission = "assign"
