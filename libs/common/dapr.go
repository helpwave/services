package common

import (
	"context"
	"encoding/json"
	"errors"
	"github.com/gorilla/mux"
	"github.com/rs/zerolog"
	"github.com/rs/zerolog/log"
	"logging"
	"net/http"
	"regexp"

	daprcmn "github.com/dapr/go-sdk/service/common"
	daprd "github.com/dapr/go-sdk/service/http"
)

const TraceParentKey = "traceparent"
const AuthHeaderKey = "authorization"

// injectSelectedHeadersIntoContextMiddleware reads the traceparent and authorization headers
// and adds them to the request context
func injectSelectedHeadersIntoContextMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		traceparent := r.Header.Get("traceparent")
		ctx := context.WithValue(r.Context(), TraceParentKey, traceparent)

		authorization := r.Header.Get("authorization")
		ctx = context.WithValue(r.Context(), AuthHeaderKey, authorization)

		next.ServeHTTP(w, r.WithContext(ctx))
	})
}

// NewDaprService returns a new dapr service, but:
//   - you can get an instrumented logger in each handler using GetHandlerLogger
//   - you can get the traceparent header in each handler using GetTraceParent
//     this is needed if you call another service!
//   - you can get auth claims using GetAuthClaims
func NewDaprService(addr string) daprcmn.Service {
	router := mux.NewRouter()
	router.Use(injectSelectedHeadersIntoContextMiddleware)

	return daprd.NewServiceWithMux(addr, router)
}

func GetTraceParent(ctx context.Context) (string, bool) {
	tp := ctx.Value(TraceParentKey)
	if tp != nil {
		traceParent, ok := tp.(string)
		return traceParent, ok
	}
	return "", false
}

func extractAuthToken(ctx context.Context, logCtx context.Context) (string, error) {
	authHeaderRaw := ctx.Value(AuthHeaderKey)
	if authHeaderRaw == nil {
		return "", errors.New("authorization required")
	}
	authHeader, ok := authHeaderRaw.(string)
	if !ok {
		log.
			Ctx(logCtx).
			Error().
			Msgf("could not convert auth header into string: '%v'", logging.Formatted(authHeaderRaw))
		return "", errors.New("could not parse authorization header")
	}

	log.Ctx(logCtx).Trace().Str("auth_header", authHeader).Send()

	regex := regexp.MustCompile(`^Bearer ([a-zA-Z0-9._-]+)$`)

	var err error
	var token string

	if len(authHeader) == 0 {
		err = errors.New("authorization required")
	} else {
		matches := regex.FindStringSubmatch(authHeader)
		if len(matches) != 2 {
			err = errors.New("authorization header invalid")
		} else {
			token = matches[1]
		}
	}

	if err != nil {
		log.Ctx(logCtx).Warn().Err(err).Send()
	}
	return token, err
}

func GetAuthClaims(ctx context.Context, logCtx context.Context) (*AccessTokenClaim, error) {
	token, err := extractAuthToken(ctx, logCtx)
	if err != nil {
		return nil, err
	}

	return ValidateAccessToken(token)
}

func GetHandlerLogger(handlerName string, requestContext context.Context) (zerolog.Logger, context.Context) {
	builder := log.With().Str("handler", handlerName)

	if requestContext != nil {
		tp, ok := GetTraceParent(requestContext)
		if ok {
			builder = builder.Str("span", tp)
		}
	}

	logger := builder.Logger()
	logContext := logger.WithContext(requestContext)

	return logger, logContext
}

func MustAddServiceInvocationHandler(service daprcmn.Service, name string, fn daprcmn.ServiceInvocationHandler) {
	if err := service.AddServiceInvocationHandler(name, fn); err != nil {
		log.Fatal().Err(err).Msgf("failed to register %s", name)
	}
}

func MustStartService(service daprcmn.Service) {
	if err := service.Start(); err != nil && err != http.ErrServerClosed {
		log.Fatal().Err(err).Send()
	}
}

func ToContentJson(response interface{}, url string) (*daprcmn.Content, error) {
	data, err := json.Marshal(response)
	if err != nil {
		return nil, err
	}

	return &daprcmn.Content{
		Data:        data,
		ContentType: "application/json",
		DataTypeURL: url,
	}, nil
}
