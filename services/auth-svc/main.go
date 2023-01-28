package main

import (
	"common"
	"context"
	_ "embed"
	"emergency-room-svc/api"
	"errors"
	"hwutil"
	"logging"
	"net/http"
	"text/template"

	daprcmn "github.com/dapr/go-sdk/service/common"
	zlog "github.com/rs/zerolog/log"
)

const ServiceName = "auth-svc"

//go:embed TokenResponse.html
var ResponseTemplateRaw string

var ResponseTemplate *template.Template

// Version is set at compile time
var Version string

func main() {
	common.Setup(ServiceName, Version, true)

	var err error
	ResponseTemplate, err = template.New("response").Parse(ResponseTemplateRaw)

	if err != nil {
		zlog.Fatal().Err(err).Send()
	}

	go runHttpServer()
	runDaprService()
}

func runDaprService() {
	addr := ":" + hwutil.GetEnvOr("PORT", "8080")
	service := common.NewDaprService(addr)

	common.MustAddHWInvocationHandler(service, "/v1/auth-request", authRequestHandler)
	common.MustAddHWInvocationHandler(service, "/v1/refresh-token", refreshTokenHandler)

	zlog.Info().Str("addr", addr).Msg("starting dapr service")
	common.MustStartService(service)
}

func runHttpServer() {
	addr := ":" + hwutil.GetEnvOr("HTTP_PORT", "8081")

	http.HandleFunc("/callback", authRequestCallbackHandler)

	zlog.Info().Str("addr", addr).Msg("starting http server")
	if err := http.ListenAndServe(addr, nil); err != http.ErrServerClosed {
		zlog.Fatal().Err(err).Send()
	}
}

func authRequestHandler(ctx context.Context, _ *daprcmn.InvocationEvent) (*common.Response, error) {
	log, _ := common.GetHandlerLogger("authRequestHandler", ctx)

	url := common.GetAuthCodeURL()
	log.Info().Msg(url)

	var response common.Response = api.PrelimAuthRequestResponseV1(url)
	return &response, nil
}

func refreshTokenHandler(ctx context.Context, in *daprcmn.InvocationEvent) (*common.Response, error) {
	log, _ := common.GetHandlerLogger("refreshTokenHandler", ctx)

	refreshToken := string(in.Data)

	if refreshToken == "" {
		return nil, errors.New("refresh token missing")
	}

	token, err := common.RefreshToken(refreshToken)
	if err != nil {
		log.Warn().Err(err).Send()
		return nil, err
	}

	var resp common.Response = api.TokenResponseV1{
		AccessToken:  token.AccessToken,
		RefreshToken: token.RefreshToken,
		Exp:          token.Expiry.Unix(),
	}

	return &resp, nil
}

func authRequestCallbackHandler(w http.ResponseWriter, r *http.Request) {
	code := r.URL.Query().Get("code")

	if code == "" {
		err := "code missing"
		zlog.Warn().Msg(err)
		http.Error(w, err, http.StatusBadRequest)
		return
	}

	zlog.Info().Str("code", code).Send()

	token, err := common.ExchangeCodeForTokens(code)
	if err != nil {
		zlog.Error().Str("code", code).Err(err).Send()
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	zlog.Trace().Msgf("token: %s", logging.Formatted(token))

	if _, err = common.VerifyAccessToken(token.AccessToken); err != nil {
		msg := "could not verify access token"
		zlog.Error().Err(err).Msg(msg)
		http.Error(w, msg, http.StatusUnauthorized)
		return
	}

	// Note: we deliberately don't validate the refresh token:
	// 1. the spec does not require this from us
	// 2. the token is signed using HS256, which relies on a secret,
	//    which KC obviously won't expose to this service

	type Response struct {
		AccessToken    string
		AccessTokenExp int64
		RefreshToken   string
	}

	respStruct := Response{
		AccessToken:    token.AccessToken,
		AccessTokenExp: token.Expiry.Unix(),
		RefreshToken:   token.RefreshToken,
	}

	err = ResponseTemplate.Execute(w, respStruct)
	if err != nil {
		zlog.Error().Err(err).Send()
		http.Error(w, "error forming response", http.StatusInternalServerError)
		return
	}
}
