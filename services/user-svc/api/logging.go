package api

import "logging"

func (r *CreateUserRequest) LoggableFields() map[string]interface{} {
	m := logging.StructToMap(r)
	m["password"] = logging.OmitAll(r.Password)
	return m
}

func (r *UpdateUserRequest) LoggableFields() map[string]interface{} {
	m := logging.StructToMap(r)
	if r.Email != nil {
		m["email"] = logging.OmitAll(*r.Email)
	}
	if r.Password != nil {
		m["password"] = logging.OmitAll(*r.Password)
	}
	return m
}
