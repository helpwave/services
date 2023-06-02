package task_svc

func (r *UpdateTaskRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if r.Name != nil {
		m["name"] = *r.Name
	}

	if r.Description != nil {
		m["description"] = *r.Description
	}

	return m
}

func (r *UpdateSubTaskRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if r.Name != nil {
		m["name"] = *r.Name
	}

	return m
}

func (x *UpdatePatientRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if x.HumanReadableIdentifier != nil {
		m["human_readable_identifier"] = x.HumanReadableIdentifier
	}

	return m
}

func (x *UpdateWardRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if x.Name != nil {
		m["name"] = x.Name
	}

	return m
}

func (x *UpdateRoomRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if x.Name != nil {
		m["name"] = x.Name
	}

	return m
}

func (r *UpdateBedRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	/* Empty for later extension and use */

	return m
}
