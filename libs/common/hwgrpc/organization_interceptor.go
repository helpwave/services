package hwgrpc

import (
	"context"
	"errors"
	"telemetry"

	"common/auth"

	"github.com/google/uuid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func UnaryOrganizationInterceptor(
	ctx context.Context,
	req any,
	_ *grpc.UnaryServerInfo,
	next grpc.UnaryHandler,
) (any, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwgrpc.UnaryOrganizationInterceptor")
	defer span.End()

	ctx, err := organizationInterceptor(ctx)
	if err != nil {
		return nil, err
	}

	return next(ctx, req)
}

func StreamOrganizationInterceptor(
	req any,
	stream grpc.ServerStream,
	_ *grpc.StreamServerInfo,
	next grpc.StreamHandler,
) error {
	ctx, span, _ := telemetry.StartSpan(stream.Context(), "hwgrpc.StreamOrganizationInterceptor")
	defer span.End()
	stream = WrapServerStream(stream, ctx)

	ctx, err := organizationInterceptor(stream.Context())
	if err != nil {
		return err
	}

	stream = WrapServerStream(stream, ctx)
	return next(req, stream)
}

// organizationInterceptor parses and injects the organization id of the OIDC claims into the current context
// This is a separate function to allow endpoints to not fail when an organization id is not provided
func organizationInterceptor(ctx context.Context) (context.Context, error) {
	ctx, span, log := telemetry.StartSpan(ctx, "hwgrpc.organizationInterceptor")
	defer span.End()

	claims, err := auth.GetAuthClaims(ctx)
	if err != nil {
		return nil, err
	}

	if len(claims.Organization.Id) == 0 {
		return nil, errors.New("organization.id missing in id token")
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
