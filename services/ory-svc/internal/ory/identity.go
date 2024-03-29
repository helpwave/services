package ory

import (
	"github.com/google/uuid"
	"github.com/mitchellh/mapstructure"
	ory "github.com/ory/client-go"
	"hwutil"
)

type OryIdentityTraits struct {
	Email    string
	Name     string
	Nickname string
}

func NewOryIdentityTraitsFromIdentity(identity *ory.Identity) (OryIdentityTraits, error) {
	var oryIdentityTraits OryIdentityTraits
	err := mapstructure.Decode(identity.Traits, &oryIdentityTraits)
	return oryIdentityTraits, err
}

type OryIdentityMetadataPublic struct {
	Organizations []string `json:"organizations"`
}

func NewOryIdentityMetadataPublicFromIdentity(identity *ory.Identity) (OryIdentityMetadataPublic, error) {
	var oryIdentityMetadataPublic OryIdentityMetadataPublic
	err := mapstructure.Decode(identity.GetMetadataPublic(), &oryIdentityMetadataPublic)
	return oryIdentityMetadataPublic, err
}

func (o OryIdentityMetadataPublic) GetOrganizationsAsUUID() ([]uuid.UUID, error) {
	return hwutil.MapWithErr(o.Organizations, func(organizationID string) (uuid.UUID, error) {
		return uuid.Parse(organizationID)
	})
}
