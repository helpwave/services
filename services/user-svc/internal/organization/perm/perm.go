package perm

// Direct Relations

const (
	InviteUser         = "user"
	InviteOrganization = "organization"
)

const (
	OrganizationMember = "member"
	OrganizationLeader = "leader"
)

// Permissions

const (
	OrganizationCanUserGet          = "get"
	OrganizationCanUserUpdate       = "update"
	OrganizationCanUserDelete       = "delete"
	OrganizationCanUserInviteMember = "invite_member"
	OrganizationCanUserRemoveMember = "remove_member"
)
