package perm

import (
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type Ward uuid.UUID

func (t Ward) Type() string { return "ward" }
func (t Ward) ID() string   { return uuid.UUID(t).String() }

// Direct Relations

const WardOrganization hwauthz.Relation = "organization"

// Permissions

const OrganizationCanUserCreateWard hwauthz.Permission = "create_ward"

const (
	WardCanUserGet        hwauthz.Permission = "get"
	WardCanUserUpdate     hwauthz.Permission = "update"
	WardCanUserDelete     hwauthz.Permission = "delete"
	WardCanUserCreateRoom hwauthz.Permission = "create_room"
)
