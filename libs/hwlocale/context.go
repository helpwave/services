package hwlocale

import (
	"context"
	"golang.org/x/text/language"
	"hwutil"
)

type key struct{}

func WithLocales(ctx context.Context, tags []language.Tag) context.Context {
	return context.WithValue(ctx, key{}, tags)
}

func GetLocalesTags(ctx context.Context) []language.Tag {
	res, ok := ctx.Value(key{}).([]language.Tag)
	if !ok {
		return []language.Tag{}
	}
	return res
}

func GetLocalesStrings(ctx context.Context) []string {
	return hwutil.Map(GetLocalesTags(ctx), func(tag language.Tag) string {
		return tag.String()
	})
}
