package api

import "logging"

func (r *CreateUserRequest) LoggableFields() map[string]interface{} {
	m := logging.StructToMap(r)
	m["password"] = logging.OmitAll(r.Password)
	return m
}
