package commonperm

import (
	"common/auth"
	"context"

	"hwauthz"

	"github.com/google/uuid"
)

type User uuid.UUID

func (t User) Type() hwauthz.ObjectType { return "user" }
func (t User) ID() string               { return uuid.UUID(t).String() }

func UserFromCtx(ctx context.Context) User {
	userID := auth.MustGetUserID(ctx)
	return User(userID)
}

type Organization uuid.UUID

func (p Organization) Type() hwauthz.ObjectType { return "organization" }
func (p Organization) ID() string               { return uuid.UUID(p).String() }

func OrganizationFromCtx(ctx context.Context) Organization {
	organizationID := auth.MustGetOrganizationID(ctx)
	return Organization(organizationID)
}
