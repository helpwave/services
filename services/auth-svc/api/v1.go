package api

import (
	"common"
	daprcmn "github.com/dapr/go-sdk/service/common"
)

type PrelimAuthRequestResponseV1 string

func (r PrelimAuthRequestResponseV1) ToContent() (*daprcmn.Content, error) {
	return &daprcmn.Content{
		Data:        []byte(r),
		ContentType: "text/plain",
		DataTypeURL: "types.helpwave.de/auth-svc/PrelimAuthRequestResponseV1",
	}, nil
}

type TokenResponseV1 struct {
	AccessToken  string `json:"access_token"`
	RefreshToken string `json:"refresh_token"`
	Exp          int64  `json:"exp"`
}

func (r TokenResponseV1) ToContent() (*daprcmn.Content, error) {
	return common.ToContentJson(r, "types.helpwave.de/auth-svc/TokenResponseV1")
}
