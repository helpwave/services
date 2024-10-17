package hwerr

import (
	"context"
	"hwlocale"

	zlog "github.com/rs/zerolog"
	"google.golang.org/genproto/googleapis/rpc/errdetails"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/protoadapt"
)

// NewStatusError builds a new Status Error
// - TODO: add Error Reason
// - msg is developer-facing and must be in english
// - for a user-facing message use locale
// - additional details can be added
// For more information on details see: https://cloud.google.com/apis/design/errors#error_details
// and https://cloud.google.com/apis/design/errors#error_payloads
func NewStatusError(
	ctx context.Context,
	code codes.Code,
	msg string,
	locale hwlocale.Locale,
	details ...protoadapt.MessageV1,
) error {
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

// LocalizedMessage returns a LocalizedMessage Error Detail as per
// https://cloud.google.com/apis/design/errors#error_details
// Also see NewStatusError, which constructs a LocalizedMessage for you
func LocalizedMessage(ctx context.Context, locale hwlocale.Locale) *errdetails.LocalizedMessage {
	str, tag := hwlocale.LocalizeWithTag(ctx, locale)
	return &errdetails.LocalizedMessage{
		Locale:  tag.String(),
		Message: str,
	}
}
