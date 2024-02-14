package hwlocale

import (
	"context"
	"google.golang.org/genproto/googleapis/rpc/errdetails"
)

// TODO: move somewhere else
func LocalizedMessage(ctx context.Context, locale Locale) *errdetails.LocalizedMessage {
	str, tag := LocalizeWithTag(ctx, locale)
	return &errdetails.LocalizedMessage{
		Locale:  tag.String(),
		Message: str,
	}
}
