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

func UserFromCtx(ctx context.Context) (User, error) {
	userID, err := auth.GetUserID(ctx)
	if err != nil {
		return User{}, err
	}
	return User(userID), nil
}

type Organization uuid.UUID

func (p Organization) Type() string { return "organization" }
func (p Organization) ID() string   { return uuid.UUID(p).String() }

func OrganizationFromCtx(ctx context.Context) (Organization, error) {
	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return Organization{}, err
	}
	return Organization(organizationID), nil
}

// Direct Relations

const PropertyOrganization hwauthz.Relation = "organization"

// Permissions

const OrganizationCanUserCreateProperty hwauthz.Permission = "create_property"

const (
	PropertyCanUserGet    hwauthz.Permission = "get"
	PropertyCanUserUpdate hwauthz.Permission = "update"
)
