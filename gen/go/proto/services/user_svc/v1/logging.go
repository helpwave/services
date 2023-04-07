package user_svc

import (
	"logging"
)

func (x *CreateUserRequest) LoggableFields() map[string]interface{} {
	m := logging.StructToMap(x)
	m["password"] = logging.OmitAll(x.Password)
	return m
}

func (x *UpdateUserRequest) LoggableFields() map[string]interface{} {
	m := logging.StructToMap(x)
	if x.Email != nil {
		m["email"] = logging.OmitAll(*x.Email)
	}
	if x.Password != nil {
		m["password"] = logging.OmitAll(*x.Password)
	}
	return m
}
