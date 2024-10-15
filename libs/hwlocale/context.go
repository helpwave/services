package hwlocale

import (
	"context"
	"hwutil"

	"golang.org/x/text/language"
)

type key struct{}

// WithLocales constructs a new context, which carries the provided Tags
// Also see GetLocalesTags and GetLocalesStrings
func WithLocales(ctx context.Context, tags []language.Tag) context.Context {
	return context.WithValue(ctx, key{}, tags)
}

// GetLocalesTags can be used to access the request's user-agent's language preferences (Accept-Language)
func GetLocalesTags(ctx context.Context) []language.Tag {
	res, ok := ctx.Value(key{}).([]language.Tag)
	if !ok {
		return []language.Tag{}
	}
	return res
}

// GetLocalesStrings is a wrapper around GetLocalesTags
func GetLocalesStrings(ctx context.Context) []string {
	return hwutil.Map(GetLocalesTags(ctx), func(tag language.Tag) string {
		return tag.String()
	})
}
