package commonPerm

import (
	"common/auth"
	"context"

	"github.com/google/uuid"
)

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

