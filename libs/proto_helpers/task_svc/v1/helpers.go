package task_svc

import (
	pb "gen/proto/services/task_svc/v1"
)

func UpdatesMapForUpdateTaskRequest(r *pb.UpdateTaskRequest) map[string]interface{} {
	m := make(map[string]interface{})

	if r.Name != nil {
		m["name"] = *r.Name
	}

	if r.Description != nil {
		m["description"] = *r.Description
	}

	if r.DueAt != nil {
		m["due_at"] = r.DueAt.AsTime()
	}

	if r.Public != nil {
		m["public"] = *r.Public
	}

	return m
}

func UpdatesMapForUpdateTaskTemplateRequest(r *pb.UpdateTaskTemplateRequest) map[string]interface{} {
	m := make(map[string]interface{})

	if r.Name != nil {
		m["name"] = *r.Name
	}

	if r.Description != nil {
		m["description"] = *r.Description
	}

	return m
}

func UpdatesMapForUpdateTaskTemplateSubTaskRequest(r *pb.UpdateTaskTemplateSubTaskRequest) map[string]interface{} {
	m := make(map[string]interface{})

	if r.Name != nil {
		m["name"] = *r.Name
	}

	return m
}

func UpdatesMapForUpdateWardRequest(r *pb.UpdateWardRequest) map[string]interface{} {
	m := make(map[string]interface{})

	if r.Name != nil {
		m["name"] = r.Name
	}

	return m
}
