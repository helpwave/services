package ward_svc

func (x *UpdateWardRequest) UpdatesMap() map[string]interface{} {
	m := make(map[string]interface{})

	if x.Name != nil {
		m["name"] = x.Name
	}

	return m
}
