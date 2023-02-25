package api

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
