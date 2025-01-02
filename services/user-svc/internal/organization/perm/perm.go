package perm

import (
	"crypto/sha256"
	"hwauthz"

	"github.com/google/uuid"
)

// Types

type Email string

func (t Email) Type() hwauthz.ObjectType { return "email" }
func (t Email) ID() string {
	hasher := sha256.New()
	hasher.Write([]byte(t))
	return string(hasher.Sum(nil))
}

type Invite uuid.UUID

func (t Invite) Type() hwauthz.ObjectType { return "invite" }
func (t Invite) ID() string               { return uuid.UUID(t).String() }

// Direct Relations

const (
	InviteInvitee      = "invitee"
	InviteOrganization = "organization"
)

// Permissions

const (
	OrganizationCanUserGet          = "get"
	OrganizationCanUserUpdate       = "update"
	OrganizationCanUserDelete       = "delete"
	OrganizationCanUserGetMembers   = "get_members"
	OrganizationCanUserInviteMember = "invite_member"
	OrganizationCanUserRemoveMember = "remove_member"
	InviteCanUserView               = "view"
	InviteCanUserAccept             = "accept"
	InviteCanUserDeny               = "deny"
	InviteCanUserCancel             = "cancel"
)
