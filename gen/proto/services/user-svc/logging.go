package user_svc

import (
	"logging"
)

func (x *CreateUserRequest) LoggableFields() map[string]interface{} {
	m := logging.StructToMap(x)
	m["password"] = logging.OmitAll(x.Password)
	return m
}
