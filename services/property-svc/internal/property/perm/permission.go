package perm

import (
	"common/auth"
	"context"
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type Property uuid.UUID

func (t Property) Type() string { return "property" }
func (t Property) ID() string   { return uuid.UUID(t).String() }

type User uuid.UUID

func (t User) Type() string { return "user" }
func (t User) ID() string   { return uuid.UUID(t).String() }

func UserFromCtx(ctx context.Context) User {
	userID := auth.MustGetUserID(ctx)
	return User(userID)
}

type Organization uuid.UUID

func (p Organization) Type() string { return "organization" }
func (p Organization) ID() string   { return uuid.UUID(p).String() }

func OrganizationFromCtx(ctx context.Context) Organization {
	organizationID := auth.MustGetOrganizationID(ctx)
	return Organization(organizationID)
}

// Direct Relations

const PropertyOrganization hwauthz.Relation = "organization"

// Permissions

const OrganizationCanUserCreateProperty hwauthz.Permission = "create_property"

const (
	PropertyCanUserGet    hwauthz.Permission = "get"
	PropertyCanUserUpdate hwauthz.Permission = "update"
)
