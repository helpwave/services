package perm

import (
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type Property uuid.UUID

func (t Property) Type() string { return "property" }
func (t Property) ID() string   { return uuid.UUID(t).String() }

// Direct Relations

const PropertyOrganization hwauthz.Relation = "organization"

// Permissions

const OrganizationCanUserCreateProperty hwauthz.Permission = "create_property"

const (
	PropertyCanUserGet    hwauthz.Permission = "get"
	PropertyCanUserUpdate hwauthz.Permission = "update"
)
