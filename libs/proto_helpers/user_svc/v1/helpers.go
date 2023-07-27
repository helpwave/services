package user_svc

import (
	"gen/proto/libs/events/v1"
	pb "gen/proto/services/user_svc/v1"
)

func UpdatesMapForUpdateOrganizationRequest(r *pb.UpdateOrganizationRequest) map[string]interface{} {
	m := make(map[string]interface{})

	if r.LongName != nil {
		m["long_name"] = *r.LongName
	}

	if r.ShortName != nil {
		m["short_name"] = *r.ShortName
	}

	if r.ContactEmail != nil {
		m["contact_email"] = *r.ContactEmail
	}

	if r.AvatarUrl != nil {
		m["avatar_url"] = *r.AvatarUrl
	}

	if r.IsPersonal != nil {
		m["is_personal"] = *r.IsPersonal
	}

	return m
}

func UpdatesMapForUserUpdatedEvent(e *events.UserUpdatedEvent) map[string]interface{} {
	m := make(map[string]interface{})

	m["email"] = e.Email
	m["nickname"] = e.Nickname
	m["name"] = e.Name

	return m
}
