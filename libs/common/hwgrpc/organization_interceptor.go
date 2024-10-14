package hwgrpc

import (
	"common/auth"
	"context"
	"errors"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"telemetry"
)

func UnaryOrganizationInterceptor(ctx context.Context, req any, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (any, error) {
	ctx, err := organizationInterceptor(ctx)
	if err != nil {
		return nil, err
	}

	return next(ctx, req)
}

func StreamOrganizationInterceptor(req any, stream grpc.ServerStream, info *grpc.StreamServerInfo, next grpc.StreamHandler) error {
	ctx, err := organizationInterceptor(stream.Context())
	if err != nil {
		return err
	}

	stream = NewWrapperStream(stream, WithContext(ctx))
	return next(req, stream)
}

// organizationInterceptor parses and injects the organization id of the OIDC claims into the current context
// This is a separate function to allow endpoints to not fail when an organization id is not provided
func organizationInterceptor(ctx context.Context) (context.Context, error) {
	log := zlog.Ctx(ctx)

	claims, err := auth.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	if len(claims.Organization.Id) == 0 {
		return ctx, errors.New("organization.id missing in id token")
	}

	// parse organizationID
	organizationID, err := uuid.Parse(claims.Organization.Id)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "invalid organizationID")
	}

	// attach organizationID to the context, so we can get it in a handler using GetOrganizationID()
	ctx = auth.ContextWithOrganizationID(ctx, organizationID)

	// attach organizationID to the current span
	telemetry.SetSpanStr(ctx, "user.organization.id", organizationID.String())

	// Append organizationID to the logger and attach it to the context
	ctx = log.With().
		Ctx(ctx).
		Str("organizationID", organizationID.String()).
		Logger().
		WithContext(ctx)

	return ctx, nil
}
