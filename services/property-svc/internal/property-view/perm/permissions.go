package perm

import (
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type Ward uuid.UUID

func (t Ward) Type() hwauthz.ObjectType { return "ward" }
func (t Ward) ID() string               { return uuid.UUID(t).String() }

type Task uuid.UUID

func (t Task) Type() hwauthz.ObjectType { return "task" }
func (t Task) ID() string               { return uuid.UUID(t).String() }

type Patient uuid.UUID

func (t Patient) Type() hwauthz.ObjectType { return "patient" }
func (t Patient) ID() string               { return uuid.UUID(t).String() }

// Permissions

const OrganizationCanUserAlterRootPropertyRules hwauthz.Permission = "can_user_alter_root_property_rules"

const (
	WardCanUserUpdate    hwauthz.Permission = "update"
	TaskCanUserUpdate    hwauthz.Permission = "update"
	PatientCanUserUpdate hwauthz.Permission = "update"
)
