package hwgrpc

import (
	"context"
	"telemetry"
	"time"

	"common/auth"

	"github.com/google/uuid"
	grpcAuth "github.com/grpc-ecosystem/go-grpc-middleware/v2/interceptors/auth"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func UnaryAuthInterceptor(ctx context.Context, req any, _ *grpc.UnaryServerInfo, next grpc.UnaryHandler) (any, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwgrpc.UnaryAuthInterceptor")
	defer span.End()

	ctx, err := authInterceptor(ctx)
	if err != nil {
		return nil, err
	}

	return next(ctx, req)
}

func StreamAuthInterceptor(req any, stream grpc.ServerStream, _ *grpc.StreamServerInfo, next grpc.StreamHandler) error {
	ctx, span, _ := telemetry.StartSpan(stream.Context(), "hwgrpc.StreamAuthInterceptor")
	defer span.End()
	stream = WrapServerStream(stream, ctx)

	ctx, err := authInterceptor(stream.Context())
	if err != nil {
		return err
	}

	stream = WrapServerStream(stream, ctx)
	return next(req, stream)
}

// authInterceptor is the main authentication middleware. It validates the OIDC token
// parsed and injects the OIDC claims for later usage
func authInterceptor(ctx context.Context) (context.Context, error) {
	_, span, log := telemetry.StartSpan(ctx, "hwgrpc.authInterceptor")
	defer span.End()

	// get token from gRPC metadata
	token, err := grpcAuth.AuthFromMD(ctx, "bearer")
	if err != nil {
		log.Trace().Err(err).Msg("no valid auth header found")
		return nil, status.Errorf(codes.Unauthenticated, "no auth token: %v", err)
	}

	var (
		claims       *auth.IDTokenClaims
		tokenExpires *time.Time
	)

	if auth.IsOnlyFakeAuthEnabled() {
		log.Warn().
			Msg("only fake auth is enabled! no attempt verifying token. falling back to fake token instead")
		claims, tokenExpires, err = auth.VerifyFakeToken(ctx, token)
	} else {
		// verify token -> if fakeToken is used claims will be nil and we will get an error
		claims, tokenExpires, err = auth.VerifyIDToken(ctx, token)
	}

	// If auth.IsInsecureFakeTokenEnabled() is true and Mode is development,
	// we accept unverified Base64 encoded json structure in the schema of IDTokenClaims as well.
	// This allows the client to pass self-defined "Fake ID Token Claims" without going through our auth provider.
	// ONLY FOR NON-PUBLIC DEVELOPMENT AND STAGING ENVIRONMENTS
	if claims == nil && err != nil && auth.IsInsecureFakeTokenEnabled() {
		log.Warn().Msg("could not verify token, falling back to fake token instead")
		claims, tokenExpires, err = auth.VerifyFakeToken(ctx, token)
	}

	if err != nil || claims == nil || tokenExpires == nil {
		return nil, status.Errorf(codes.Unauthenticated, "invalid auth token: %v", err)
	}

	// attach claims to the context, so we can get it in a handler using GetAuthClaims()
	ctx = auth.ContextWithAuthClaims(ctx, claims)

	// attach token expires time to the context
	ctx = auth.ContextWithTokenExpires(ctx, tokenExpires)

	// parse userID
	userID, err := uuid.Parse(claims.Sub)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "invalid userID")
	}

	// attach userID to the context, so we can get it in a handler using GetUserID()
	ctx = auth.ContextWithUserID(ctx, userID)

	// attach userID to the current span (should be the auth interceptor span)
	telemetry.SetSpanStr(ctx, "user.id", userID.String())

	// Append userID to the logger and attach it to the context
	ctx = log.With().
		Ctx(ctx).
		Str("userID", userID.String()).
		Logger().
		WithContext(ctx)

	return ctx, nil
}
