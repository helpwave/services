package auth_svc

import (
	"logging"
)

func (x *RefreshTokenRequest) LoggableFields() map[string]interface{} {
	m := make(map[string]interface{})
	m["refreshToken"] = logging.OmitAll(x.RefreshToken)
	return m
}
