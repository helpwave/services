package fga

import (
	"authz"
	"github.com/google/uuid"
)

type User struct{ uuid.UUID }

func (u User) String() string { return "user:" + u.String() }

type Team struct{ uuid.UUID }

func (t Team) String() string { return "team:" + t.String() }

type TeamInvite struct{ uuid.UUID }

func (t TeamInvite) String() string { return "team_invite:" + t.String() }

var TeamCanInviteMember = authz.NewRelation[User, Team]("can_invite_member")
var TeamIsLead = authz.NewRelation[User, Team]("lead")
var TeamIsMember = authz.NewRelation[User, Team]("member")

var TeamInviteIsUser = authz.NewRelation[User, TeamInvite]("user")
var TeamInviteIsTeam = authz.NewRelation[Team, TeamInvite]("team")
