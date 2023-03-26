package api

import (
	"task-svc/internal/room/models"
)

func (req *UpdateTaskRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if req.Name != nil {
		m["name"] = *req.Name
	}

	if req.Description != nil {
		m["description"] = *req.Description
	}

	return m
}

func (req *UpdatePatientRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if req.HumanReadableIdentifier != nil {
		m["human_readable_identifier"] = req.HumanReadableIdentifier
	}

	return m
}

func (req *UpdateWardRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if req.Name != nil {
		m["name"] = req.Name
	}

	return m
}

func (req *UpdateRoomRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if req.Name != nil {
		m["name"] = req.Name
	}

	return m
}

func BedsToBedsOfRoom(beds []models.Bed) []*BedOfRoom {
	var bedsOfRoom []*BedOfRoom
	for _, bed := range beds {
		bedsOfRoom = append(bedsOfRoom, &BedOfRoom{Id: bed.ID.String()})
	}
	return bedsOfRoom
}
