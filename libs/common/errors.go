package common

import (
	"context"
	"hwlocale"

	"common/hwerr"

	"common/locale"

	"google.golang.org/genproto/googleapis/rpc/errdetails"
	"google.golang.org/grpc/codes"
)

// SingleInvalidFieldError builds a NewStatusError
func SingleInvalidFieldError(ctx context.Context, field, msg string, locale hwlocale.Locale) error {
	return hwerr.NewStatusError(ctx,
		codes.InvalidArgument,
		msg,
		locale,
		&errdetails.BadRequest{
			FieldViolations: []*errdetails.BadRequest_FieldViolation{
				{
					Field:       field,
					Description: hwlocale.Localize(ctx, locale),
				},
			},
		},
	)
}

func UnparsableConsistencyError(ctx context.Context, field string) error {
	return SingleInvalidFieldError(ctx, field, "consistency not parsable", locale.InvalidFieldError(ctx))
}
