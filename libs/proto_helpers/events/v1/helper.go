package events

import (
	"gen/proto/libs/events/v1"
)

func UpdatesMapForUserUpdatedEvent(e *events.UserUpdatedEvent) map[string]interface{} {
	m := make(map[string]interface{})

	if e.Email != nil {
		m["email"] = e.Email
	}

	if e.Nickname != nil {
		m["nickname"] = e.Nickname
	}

	if e.Name != nil {
		m["name"] = e.Name
	}

	return m
}
