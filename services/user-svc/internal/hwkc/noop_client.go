package hwkc

import (
	"context"
	"hwutil"
	"strconv"

	"github.com/google/uuid"
)

// NoOpClient implements IClient for testing and development.
// It is not backed by a real Keycloak instance.
// The returned data is either hardcoded or are derived by the input arguments.
// Actions like deletes or updates are no-ops
// Implements IClient
type NoOpClient struct{}

func NewNoOpClient() *NoOpClient {
	return &NoOpClient{}
}

func (c *NoOpClient) GetUserById(_ context.Context, userID uuid.UUID) (*User, error) {
	return &User{
		ID: hwutil.PtrTo(userID.String()),
	}, nil
}

func (c *NoOpClient) GetOrganizationsOfUserById(_ context.Context, userID uuid.UUID) ([]*Organization, error) {
	return []*Organization{
		{
			ID:          hwutil.PtrTo(uuid.NewString()),
			Name:        hwutil.PtrTo("fake"),
			DisplayName: hwutil.PtrTo("fake"),
			Attributes: OrganizationAttributes{
				IsPersonal: []string{strconv.FormatBool(true)},
			},
		},
	}, nil
}

func (c *NoOpClient) CreateOrganization(
	_ context.Context,
	name,
	displayName string,
	isPersonal bool,
) (*Organization, error) {
	return &Organization{
		ID:          hwutil.PtrTo(uuid.NewString()),
		Name:        hwutil.PtrTo(name),
		DisplayName: hwutil.PtrTo(displayName),
		Attributes: OrganizationAttributes{
			IsPersonal: []string{strconv.FormatBool(isPersonal)},
		},
	}, nil
}

func (c *NoOpClient) UpdateOrganization(_ context.Context, organizationID uuid.UUID, organization Organization) error {
	return nil
}

func (c *NoOpClient) DeleteOrganization(_ context.Context, organizationID uuid.UUID) error {
	return nil
}

func (c *NoOpClient) AddUserToOrganization(_ context.Context, userID, organizationID uuid.UUID) error {
	return nil
}

func (c *NoOpClient) RemoveUserFromOrganization(_ context.Context, userID, organizationID uuid.UUID) error {
	return nil
}
