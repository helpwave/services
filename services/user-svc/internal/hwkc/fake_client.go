package hwkc

import (
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"hwutil"
	"strconv"
)

type FakeClient struct{}

func NewFakeClient() *FakeClient {
	zlog.Warn().Msg("create fake hwkc client")
	return &FakeClient{}
}

func (c *FakeClient) GetUserById(userID uuid.UUID) (*User, error) {
	return &User{
		ID: hwutil.PtrTo(userID.String()),
	}, nil
}

func (c *FakeClient) GetOrganizationsOfUserById(userID uuid.UUID) ([]*Organization, error) {
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

func (c *FakeClient) CreateOrganization(name, displayName string, isPersonal bool) (*Organization, error) {
	return &Organization{
		ID:          hwutil.PtrTo(uuid.NewString()),
		Name:        hwutil.PtrTo(name),
		DisplayName: hwutil.PtrTo(displayName),
		Attributes: OrganizationAttributes{
			IsPersonal: []string{strconv.FormatBool(isPersonal)},
		},
	}, nil
}

func (c *FakeClient) UpdateOrganization(organizationID uuid.UUID, organization Organization) error {
	return nil
}

func (c *FakeClient) DeleteOrganization(organizationID uuid.UUID) error {
	return nil
}

func (c *FakeClient) AddUserToOrganization(userID, organizationID uuid.UUID) error {
	return nil
}

func (c *FakeClient) RemoveUserFromOrganization(userID, organizationID uuid.UUID) error {
	return nil
}
