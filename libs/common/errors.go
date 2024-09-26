package common

import (
	"common/locale"
	"context"
	"google.golang.org/genproto/googleapis/rpc/errdetails"
	"google.golang.org/grpc/codes"
	"hwlocale"
)

// SingleInvalidFieldError builds a NewStatusError
func SingleInvalidFieldError(ctx context.Context, field, msg string, locale hwlocale.Locale) error {
	return NewStatusError(ctx,
		codes.InvalidArgument,
		msg,
		locale,
		&errdetails.BadRequest{
			FieldViolations: []*errdetails.BadRequest_FieldViolation{
				{
					Field:       field,
					Description: hwlocale.Localize(ctx, locale),
				},
			}},
	)
}

func UnparsableConsistencyError(ctx context.Context, field string) error {
	return SingleInvalidFieldError(ctx, field, "consistency not parsable", locale.InvalidFieldError(ctx))
}
