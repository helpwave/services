package spicedb

import (
	"context"

	"github.com/google/uuid"
	"hwauthz"
	"hwauthz/commonPerm"
)

func AddUserToOrganization(
	ctx context.Context,
	authz hwauthz.AuthZ,
	userID, organizationID uuid.UUID,
	leader bool,
) error {
	permUser := commonPerm.User(userID)
	permOrg := commonPerm.Organization(organizationID)

	var role hwauthz.Relation = commonPerm.OrganizationMember
	if leader {
		role = commonPerm.OrganizationLeader
	}

	rel := hwauthz.NewRelationship(permUser, role, permOrg)
	backRel := hwauthz.NewRelationship(permOrg, commonPerm.UserOrganization, permUser)
	if _, err := authz.Create(rel).Create(backRel).Commit(ctx); err != nil {
		return err
	}
	return nil
}
