package perm

import (
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type TaskTemplate uuid.UUID

func (t TaskTemplate) Type() string { return "task_template" }
func (t TaskTemplate) ID() string   { return uuid.UUID(t).String() }

// Direct Relations

const TaskTemplateOwner hwauthz.Relation = "owner"

// Permissions

const (
	TaskTemplateCanUserGet    hwauthz.Permission = "get"
	TaskTemplateCanUserUpdate hwauthz.Permission = "update"
	TaskTemplateCanUserDelete hwauthz.Permission = "delete"
)
