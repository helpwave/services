package ory

import (
	"common"
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

func createIdToken(identity *ory.Identity) (*common.IDTokenClaims, error) {
	oryIdentityTraits, err := NewOryIdentityTraitsFromIdentity(identity)
	if err != nil {
		return nil, err
	}

	oryIdentityMetadataPublic, err := NewOryIdentityMetadataPublicFromIdentity(identity)
	if err != nil {
		return nil, err
	}

	// NOTICE: Due to the fact that the claims inside the id token are now under full control of us,
	// we could fetch the organizations directly from the user-svc
	organizationIDs, err := oryIdentityMetadataPublic.GetOrganizationsAsUUID()
	if err != nil {
		return nil, err
	}

	return &common.IDTokenClaims{
		Sub:           identity.GetId(),
		Email:         oryIdentityTraits.Email,
		Name:          oryIdentityTraits.Name,
		Nickname:      oryIdentityTraits.Nickname,
		Organizations: organizationIDs,
	}, nil
}
