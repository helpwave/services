package hwlocale

import (
	"context"
	"github.com/nicksnyder/go-i18n/v2/i18n"
	"google.golang.org/genproto/googleapis/rpc/errdetails"
)

func LocalizedMessage(ctx context.Context, bundle *i18n.Bundle, config *i18n.LocalizeConfig) *errdetails.LocalizedMessage {
	str, tag := LocalizeWithTag(ctx, bundle, config)
	return &errdetails.LocalizedMessage{
		Locale:  tag.String(),
		Message: str,
	}
}
