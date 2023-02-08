package api

import "logging"

func (r *RefreshTokenRequest) LoggableFields() map[string]interface{} {
	m := make(map[string]interface{})
	m["refreshToken"] = logging.OmitAll(r.RefreshToken)
	return m
}
