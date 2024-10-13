package common

import (
	"common/locale"
	"context"
	"encoding/base64"
	"errors"
	"fmt"
	"github.com/dapr/dapr/pkg/proto/runtime/v1"
	daprd "github.com/dapr/go-sdk/service/grpc"
	"github.com/go-playground/validator/v10"
	"github.com/golang/protobuf/proto" //nolint:staticcheck
	"github.com/google/uuid"
	prometheusGrpcProvider "github.com/grpc-ecosystem/go-grpc-middleware/providers/prometheus"
	"github.com/grpc-ecosystem/go-grpc-middleware/v2/interceptors/auth"
	"github.com/grpc-ecosystem/go-grpc-middleware/v2/metadata"
	"github.com/rs/zerolog"
	zlog "github.com/rs/zerolog/log"
	"go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc"
	otelCodes "go.opentelemetry.io/otel/codes"
	"golang.org/x/text/language"
	"google.golang.org/genproto/googleapis/rpc/errdetails"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/reflection"
	"google.golang.org/grpc/status"
	"hwlocale"
	"hwutil"
	"net"
	"reflect"
	"sort"
	"strconv"
	"strings"
	"telemetry"
)

type claimsKey struct{}

type userIDKey struct{}
type organizationIDKey struct{}

// StartNewGRPCServer creates and starts a new GRPC server on addr or panics.
// Using registerServerHook you are able to register your
// service server implementation with this grpc server.
// It will register a SIGINT trap and clean up everything from Setup() using Shutdown() and this function
// Afterward, code execution is handed back to you, where you can do additional clean up,
// e.g. closing the database pool.
//
// Example:
//
//	common.StartNewGRPCServer(addr, func(server *daprd.Server) {
//		grpcServer := server.GrpcServer()
//		api.RegisterMyServiceServer(grpcServer, &myServiceServer{})
//	})
//	// cleanup after yourself here
func StartNewGRPCServer(ctx context.Context, addr string, registerServerHook func(*daprd.Server)) {
	log := zlog.Ctx(ctx)

	chain := DefaultInterceptorChain()
	statsHandler := grpc.StatsHandler(otelgrpc.NewServerHandler())

	listener, err := net.Listen("tcp", addr)
	if err != nil {
		log.Fatal().Str("addr", addr).Err(err).Send()
	}

	// dapr/grpc service
	service := daprd.NewServiceWithListener(listener, chain, statsHandler).(*daprd.Server)
	server := service.GrpcServer()

	if err := service.AddHealthCheckHandler("", func(ctx context.Context) error {
		// We need to implement this. Just return nil == everything OK
		return nil
	}); err != nil {
		log.Fatal().Err(err).Send()
	}

	registerServerHook(service)

	if Mode == DevelopmentMode {
		reflection.Register(server)
		log.Warn().Msg("grpc reflection enabled")
	}

	interrupted, err := hwutil.RunUntilInterrupted(ctx, func() error {
		log.Info().Str("addr", addr).Msg("starting grpc service")
		return server.Serve(listener)
	})

	if interrupted {
		log.Warn().Msg("SIGINT received, shutting down")
	} else {
		log.Error().Str("addr", addr).Err(err).Msg("could not start grpc server")
	}

	// Shut down service
	log.Info().Msg("shutting down dapr/grpc service")
	if err := service.GracefulStop(); err != nil {
		log.Error().Err(err).Msg("failed shutting down service, it is what it is")
	} else {
		log.Info().Msg("grpc server shut down")
	}

	// Shut down Setup()'s resources
	Shutdown(nil)
}

// DefaultInterceptors returns the slice of default Interceptors for the GRPC service
// Also see DefaultInterceptorChain
//
//	chain := grpc.ChainUnaryInterceptor(common.DefaultInterceptors()...)
func DefaultInterceptors() []grpc.UnaryServerInterceptor {

	// register new metrics collector with prometheus
	metrics := prometheusGrpcProvider.NewServerMetrics()
	telemetry.PrometheusRegistry().MustRegister(metrics)

	interceptors := []grpc.UnaryServerInterceptor{
		metrics.UnaryServerInterceptor(),
		loggingUnaryInterceptor,
		errorQualityControlInterceptor,
		localeInterceptor,
		authUnaryInterceptor,
		validateUnaryInterceptor,
		handlerSpanInterceptor,
	}
	return interceptors
}

func DefaultInterceptorChain() grpc.ServerOption {
	return grpc.ChainUnaryInterceptor(DefaultInterceptors()...)
}

func authUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	ctx, span, log := telemetry.StartSpan(ctx, "auth_interceptor")
	defer span.End()

	if isUnaryRPCForDaprInternal(info) || hwutil.Contains(skipAuthForMethods, info.FullMethod) {
		log.Debug().
			Str("method", info.FullMethod).
			Msg("skipping auth func, RPC targeted at some internal gRPC service or method")
		return next(ctx, req)
	}

	ctx, err := authFunc(ctx)
	if err != nil {
		return nil, fmt.Errorf("authUnaryInterceptor: authFn failed: %w", err)
	}

	ctx, err = handleOrganizationIDForAuthFunc(ctx)
	if err != nil {
		return nil, fmt.Errorf("authUnaryInterceptor: cant handle organization: %w", err)
	}

	return next(ctx, req)
}

// isUnaryRPCForDaprInternal will resolve to true when the incoming RPC is targeted to some Dapr internal "sidecar -> app" gRPC service
func isUnaryRPCForDaprInternal(info *grpc.UnaryServerInfo) bool {
	_, isAppCallbackServer := info.Server.(runtime.AppCallbackServer)
	_, isAppCallbackHealthCheckServer := info.Server.(runtime.AppCallbackHealthCheckServer)
	return isAppCallbackServer || isAppCallbackHealthCheckServer
}

func authFunc(ctx context.Context) (context.Context, error) {
	log := zlog.Ctx(ctx)

	if !isAuthSetUp() && !onlyFakeAuthEnabled {
		log.Trace().Msg("skipping auth middleware, as auth is not set up")
		// skip injecting claims into context
		return ctx, nil
	}

	// get token from gRPC metadata
	token, err := auth.AuthFromMD(ctx, "bearer")

	if err != nil {
		log.Trace().Err(err).Msg("no valid auth header found")
		return nil, status.Errorf(codes.Unauthenticated, "no auth token: %v", err)
	}

	var claims *IDTokenClaims

	if onlyFakeAuthEnabled {
		log.Warn().
			Msg("only fake auth is enabled! no attempt verifying token. falling back to fake token instead")
		claims, err = VerifyFakeToken(ctx, token)
	} else {
		// verify token -> if fakeToken is used claims will be nil and we will get an error
		claims, err = VerifyIDToken(ctx, token)
	}

	// If InsecureFakeTokenEnable is true and Mode is development,
	// we accept unverified Base64 encoded json structure in the schema of IDTokenClaims as well.
	// This allows the client to pass self-defined "Fake ID Token Claims" without going through our auth provider.
	// ONLY FOR NON-PUBLIC DEVELOPMENT AND STAGING ENVIRONMENTS
	if claims == nil && err != nil && InsecureFakeTokenEnable {
		log.Warn().Msg("could not verify token, falling back to fake token instead")
		claims, err = VerifyFakeToken(ctx, token)
	}

	if err != nil || claims == nil {
		return nil, status.Errorf(codes.Unauthenticated, "invalid auth token: %v", err)
	}

	ctx = context.WithValue(ctx, claimsKey{}, claims)

	// parse userID
	userID, err := uuid.Parse(claims.Sub)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "invalid userID")
	}

	// attach userID to context, so we can get it in a handler using GetUserID()
	ctx = ContextWithUserID(ctx, userID)

	// attach userID to current span (should be the auth interceptor span)
	telemetry.SetSpanStr(ctx, "user.id", userID.String())

	// Append userID to the logger and attach it to the context
	ctx = log.With().
		Ctx(ctx).
		Str("userID", userID.String()).
		Logger().
		WithContext(ctx)

	return ctx, nil
}

func ContextWithUserID(ctx context.Context, userID uuid.UUID) context.Context {
	return context.WithValue(ctx, userIDKey{}, userID)
}

func ContextWithOrganizationID(ctx context.Context, organizationID uuid.UUID) context.Context {
	return context.WithValue(ctx, organizationIDKey{}, organizationID)
}

// handleOrganizationIDForAuthFunc is a part of our auth middleware.
// The claims are signed. Therefore, we can match the user provided
// organizationID from the headers against the organizationIDs inside the claim.
func handleOrganizationIDForAuthFunc(ctx context.Context) (context.Context, error) {
	log := zlog.Ctx(ctx)
	organizationIDStr, err := OrganizationIDFromMD(ctx)

	var organizationID uuid.UUID
	if err == nil {
		// organizationID in header, using header
		organizationID, err = uuid.Parse(organizationIDStr)
		if err != nil {
			return nil, status.Errorf(codes.Internal, "invalid organizationID")
		}
	} else if InstanceOrganizationID != nil {
		// no organizationID in header but in envs, using env
		log.Trace().Msg("no valid organization header found, falling back to environment organization id")
		organizationID = *InstanceOrganizationID
	} else {
		// no organizationID in header or env, error
		log.Trace().Err(err).Msg("no valid organization header found")
		return nil, err
	}

	claims, err := GetAuthClaims(ctx)
	if err != nil {
		return nil, fmt.Errorf("handleOrganizationIDForAuthFunc: could not get auth claims: %w", err)
	}

	// If InsecureFakeTokenEnable is true,
	// we accept all organizations that the fake id token presents to us.
	// ONLY FOR NON-PUBLIC DEVELOPMENT AND STAGING ENVIRONMENTS
	if !hwutil.Contains(claims.Organizations, organizationID) && !InsecureFakeTokenEnable {
		log.Info().Str("organizationID", organizationID.String()).Msg("organization in header was not part of claims")
		return nil, status.Errorf(codes.Unauthenticated, "no access to this organization")
	}

	ctx = ContextWithOrganizationID(ctx, organizationID)

	// Append organizationID to the logger
	loggerWithOrganizationID := log.With().Str("organizationID", organizationID.String()).Logger()
	return loggerWithOrganizationID.WithContext(ctx), nil
}

// VerifyFakeToken accepts a Base64 encoded json structure with the schema of IDTokenClaims
func VerifyFakeToken(ctx context.Context, token string) (*IDTokenClaims, error) {
	log := zlog.Ctx(ctx)

	plainToken, err := base64.StdEncoding.DecodeString(token)
	if err != nil {
		return nil, fmt.Errorf("VerifyFakeToken: cant decode fake token: %w", err)
	}

	claims := IDTokenClaims{}
	if err := hwutil.ParseValidJson(plainToken, &claims); err != nil {
		return nil, fmt.Errorf("VerifyFakeToken: cant parse json: %w", err)
	}

	if err = claims.AsExpected(); err != nil {
		return nil, fmt.Errorf("VerifyFakeToken: claims not as expected: %w", err)
	}

	log.Warn().Interface("claims", claims).Msg("fake token was verified")

	return &claims, err
}

// GetAuthClaims extracts AccessTokenClaims from the request context, if they exist
// They are checked to be as expected and the token it was extracted from was valid.
// If an error is returned, no access token was extracted for this request.
// This either means no token was supplied by the client, or Auth was not set up in Setup.
func GetAuthClaims(ctx context.Context) (*IDTokenClaims, error) {
	res, ok := ctx.Value(claimsKey{}).(*IDTokenClaims)
	if !ok || res == nil {
		return nil, status.Error(codes.Unauthenticated, "authentication required")
	} else {
		return res, nil
	}
}

func GetUserID(ctx context.Context) (uuid.UUID, error) {
	res, ok := ctx.Value(userIDKey{}).(uuid.UUID)
	if !ok {
		return uuid.UUID{}, status.Error(codes.Unauthenticated, "userID not in context, set up auth")
	} else {
		return res, nil
	}
}

func GetOrganizationID(ctx context.Context) (uuid.UUID, error) {
	res, ok := ctx.Value(organizationIDKey{}).(uuid.UUID)
	if !ok {
		return uuid.UUID{}, status.Error(codes.Internal, "organizationID not in context, set up auth")
	} else {
		return res, nil
	}
}

// localeInterceptor parses the Accept-Language header.
// Also see hwlocale.WithLocales, hwlocale.GetLocalesTags and hwlocale.GetLocalesStrings
func localeInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	log := zlog.Ctx(ctx)

	metaData := metadata.ExtractIncoming(ctx)

	langHeader := metaData.Get("accept-language")
	tags, ok := parseLocales(langHeader)
	if !ok {
		log.Warn().Str("langHeader", langHeader).Msg("invalid accept-language header received")
	}

	return next(hwlocale.WithLocales(ctx, tags), req)
}

// parseLocales parses an HTTP Accept-Language Header Value into a descending-sorted language.Tag slice wrt. priority.
// The bool indicates success.
// See: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Language
// and: https://datatracker.ietf.org/doc/html/rfc2616#section-14.4
func parseLocales(langHeader string) ([]language.Tag, bool) {
	type langT struct {
		tag language.Tag
		q   float32
	}
	langs := make([]langT, 0)

	parts := strings.Split(langHeader, ",")
	for _, part := range parts {
		qWeightParts := strings.Split(part, ";q=")
		var q float32 = 1.0 // default q-weight
		lang := strings.TrimSpace(qWeightParts[0])

		if len(qWeightParts) != 1 {
			if parsed, err := strconv.ParseFloat(strings.TrimSpace(qWeightParts[1]), 32); err != nil {
				// invalid header, stop parsing
				return []language.Tag{}, false
			} else {
				q = float32(parsed)
			}
		}
		if tag, err := language.Parse(lang); err != nil {
			continue // maybe we just don't know the language
		} else {
			langs = append(langs, langT{tag: tag, q: q})
		}
	}

	// no priority queue needed, as we deal with small lengths
	sort.SliceStable(langs, func(i, j int) bool {
		return langs[i].q > langs[j].q
	})
	return hwutil.Map(langs, func(lang langT) language.Tag {
		return lang.tag
	}), true
}

// handlerSpanInterceptor opens and closes a span around the next in the chain
// it should only be used as the last element in the interceptor chain before the handler
func handlerSpanInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "handler")
	res, err := next(ctx, req)
	if err != nil {
		span.SetStatus(otelCodes.Error, err.Error())
	}
	span.End()
	return res, err
}

// errorQualityControlInterceptor logs violations to https://cloud.google.com/apis/design/errors#error_payloads
func errorQualityControlInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	res, err := next(ctx, req)

	// no error, no error quality to control
	if err == nil {
		return res, err
	}

	log := zlog.Ctx(ctx)

	statusError, ok := status.FromError(err)
	if !ok {
		log.Warn().
			Err(err).
			Str("type", reflect.TypeOf(err).String()).
			Msg("non-status error was returned")
		return res, NewStatusError(ctx, codes.Internal, err.Error(), locale.GenericError(ctx))
	}

	hasLocalizedMessage := false
	hasBadRequest := false
	hasPreconditionFailure := false
	hasErrorInfo := false
	hasResourceInfo := false
	hasQuotaFailure := false

	for _, detail := range statusError.Details() {
		if _, ok := detail.(*errdetails.LocalizedMessage); ok {
			hasLocalizedMessage = true
		}
		if _, ok := detail.(*errdetails.BadRequest); ok {
			hasBadRequest = true
		}
		if _, ok := detail.(*errdetails.PreconditionFailure); ok {
			hasPreconditionFailure = true
		}
		if _, ok := detail.(*errdetails.ErrorInfo); ok {
			hasErrorInfo = true
		}
		if _, ok := detail.(*errdetails.ResourceInfo); ok {
			hasResourceInfo = true
		}
		if _, ok := detail.(*errdetails.QuotaFailure); ok {
			hasQuotaFailure = true
		}
	}

	if !hasLocalizedMessage {
		log.Warn().Err(err).Msg("status error does not have a LocalizedMessage")

		var err2 error
		statusError, err2 = statusError.WithDetails(LocalizedMessage(ctx, locale.GenericError(ctx)))
		if statusError != nil {
			err = statusError.Err()
		} else {
			log.Error().
				Err(err2).
				Msg("there was an error while creating the generic fallback statusError")
			return res, err // respond with original error
		}
	}

	switch statusError.Code() {
	case codes.InvalidArgument:
		fallthrough
	case codes.OutOfRange:
		if !hasBadRequest {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a BadRequest detail, but none found")
		}
	case codes.FailedPrecondition:
		if !hasPreconditionFailure {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a PreconditionFailure detail, but none found")
		}
	case codes.Unauthenticated:
		fallthrough
	case codes.PermissionDenied:
		fallthrough
	case codes.Aborted:
		if !hasErrorInfo {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a ErrorInfo detail, but none found")
		}
	case codes.NotFound:
		fallthrough
	case codes.AlreadyExists:
		if !hasResourceInfo {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a ResourceInfo detail, but none found")
		}
	case codes.ResourceExhausted:
		if !hasQuotaFailure {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a QuotaFailure detail, but none found")
		}
	}

	return res, err
}

func validateUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (res interface{}, err error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "validate_interceptor")
	defer func() {
		if err != nil {
			span.SetStatus(otelCodes.Error, err.Error())
		}
		span.End()
	}()

	log := zlog.Ctx(ctx)

	err = hwutil.Validate(req)

	// no error, go to next in chain
	if err == nil {
		log.Info().Msg("input validation ok")
		return next(ctx, req)
	}

	// validate either returns an InvalidValidationError (in case there was an issue with the setup)
	// or ValidationErrors (in case the input has validation issues)

	var internalErr *validator.InvalidValidationError

	if errors.As(err, &internalErr) {
		return nil, NewStatusError(ctx, codes.Internal, err.Error(), locale.GenericError(ctx))
	}

	var valErrs validator.ValidationErrors

	if errors.As(err, &valErrs) {
		br := &errdetails.BadRequest{FieldViolations: make([]*errdetails.BadRequest_FieldViolation, 0)}

		for _, valErr := range valErrs {
			br.FieldViolations = append(br.FieldViolations, &errdetails.BadRequest_FieldViolation{
				Field:       valErr.Field(), // TODO: use json key
				Description: validateFieldErrDescription(ctx, valErr),
			})
		}

		return nil, NewStatusError(
			ctx,
			codes.InvalidArgument,
			err.Error(),
			locale.GenericInvalidArgsError(ctx, len(valErrs)),
			br,
		)
	}

	log.Error().
		Err(err).
		Str("type", reflect.TypeOf(err).String()).
		Msg("validate returned unexpected error")

	return nil, NewStatusError(ctx, codes.Internal, err.Error(), locale.GenericError(ctx))
}

func validateFieldErrDescription(ctx context.Context, fieldErr validator.FieldError) string {
	log := zlog.Ctx(ctx)
	var l hwlocale.Locale
	switch fieldErr.Tag() {
	case "required":
		l = locale.RequiredError(ctx)
	// TODO: add more tags
	default:
		log.Warn().Str("tag", fieldErr.Tag()).Msg("tag unhandled, falling back to InvalidFieldError description")
		l = locale.InvalidFieldError(ctx)
	}

	return hwlocale.Localize(ctx, l)
}

func loggingUnaryInterceptor(ctx context.Context, req interface{}, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (interface{}, error) {
	ctx, span, log := telemetry.StartSpan(ctx, "logging_interceptor")
	defer span.End()

	metaData := metadata.ExtractIncoming(ctx)

	// Add request information
	builder := log.
		With().
		Str("handler", info.FullMethod)

	omitBody := false

	// additional information for pub/sub events
	// TODO: make sure this is picked up in otel propagation
	if req, ok := req.(*runtime.TopicEventRequest); ok {
		if traceparent, ok := req.GetExtensions().Fields["traceparent"]; ok {
			builder = builder.Str("traceparent", traceparent.GetStringValue())
		}
		builder = builder.Str("eventID", req.Id)

		// at this point in the chain we have no control about what data may be logged for events,
		// so we can't log anything for privacy and/or legal reasons, the event handler can log though
		omitBody = true
	}

	// this is the logger that should be used for this request
	log = builder.Logger()

	// context, with new logger attached
	ctx = log.WithContext(ctx)

	log.Trace().Interface("metaData", redactMetadata(metaData)).Send()

	logBody := req

	// custom map instead, if implemented
	if loggable, ok := req.(telemetry.Loggable); ok {
		logBody = loggable.LoggableFields()
	}
	if !omitBody {
		log.Debug().Interface("body", logBody).Type("bodyType", req).Send()
	}

	// Call next in chain
	res, err := next(ctx, req)

	// We are back! Now evaluate response

	if err != nil {
		statusError := status.Convert(err)
		code := statusError.Code().String()
		message := statusError.Message()
		details := statusError.Details()

		log.
			WithLevel(resolveLogLevelForError(err)).
			Err(err).
			Str("code", code).
			Interface("details", details).
			Msg(message)
	} else {
		log.
			Info().
			Str("code", codes.OK.String()).
			Msg("Ok")
	}

	// pass results back up the interceptor chain
	return res, err
}

// resolveLogLevelForError is primary used to raise the log level on specific errors
func resolveLogLevelForError(err error) zerolog.Level {
	statusError := status.Convert(err)
	if statusError.Code() == codes.Internal {
		return zerolog.ErrorLevel
	}

	return zerolog.WarnLevel
}

func redactMetadata(m metadata.MD) metadata.MD {
	if arr := m["authorization"]; arr != nil {
		for i := range arr {
			arr[i] = telemetry.OmitAll(arr[i])
		}
	}
	return m
}

// OrganizationIDFromMD retrieves the user defined organizationID
// from the metadata of the request
func OrganizationIDFromMD(ctx context.Context) (string, error) {
	val := metadata.ExtractIncoming(ctx).Get("X-Organization")
	if val == "" {
		return "", status.Errorf(codes.Unauthenticated, "organization header missing")
	}
	return val, nil
}

// NewStatusError builds a new Status Error
// - TODO: add Error Reason
// - msg is developer-facing and must be in english
// - for a user-facing message use locale
// - additional details can be added
// For more information on details see: https://cloud.google.com/apis/design/errors#error_details
// and https://cloud.google.com/apis/design/errors#error_payloads
func NewStatusError(ctx context.Context, code codes.Code, msg string, locale hwlocale.Locale, details ...proto.Message) error {
	log := zlog.Ctx(ctx)
	statusNoDetails := status.New(code, msg)

	if locale.Bundle == nil || locale.Config == nil {
		log.Warn().Msg("creating Status Error without valid locale")
	} else {
		details = append(details, LocalizedMessage(ctx, locale))
	}

	s, err := statusNoDetails.WithDetails(details...)
	if err != nil {
		log.Warn().
			Err(err).
			Msg("could not add details to status error")
		return statusNoDetails.Err()
	}
	return s.Err()
}

// LocalizedMessage returns a LocalizedMessage Error Detail as per https://cloud.google.com/apis/design/errors#error_details
// Also see NewStatusError, which constructs a LocalizedMessage for you
func LocalizedMessage(ctx context.Context, locale hwlocale.Locale) *errdetails.LocalizedMessage {
	str, tag := hwlocale.LocalizeWithTag(ctx, locale)
	return &errdetails.LocalizedMessage{
		Locale:  tag.String(),
		Message: str,
	}
}
