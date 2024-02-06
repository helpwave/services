package task_svc

import (
	pb "gen/proto/services/task_svc/v1"
)

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
