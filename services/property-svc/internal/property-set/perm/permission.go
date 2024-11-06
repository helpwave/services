package perm

import (
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type PropertySet uuid.UUID

func (t PropertySet) Type() hwauthz.ObjectType { return "property_set" }
func (t PropertySet) ID() string               { return uuid.UUID(t).String() }

// Direct Relations

const PropertySetOrganization hwauthz.Relation = "organization"

// Permissions

const OrganizationCanUserCreatePropertySet hwauthz.Permission = "create_property_set"

const (
	PropertySetCanUserGet hwauthz.Permission = "get"
)
