package hwgrpc

import (
	"context"
	"hwlocale"
	"hwutil"
	"sort"
	"strconv"
	"strings"
	"telemetry"

	"github.com/grpc-ecosystem/go-grpc-middleware/v2/metadata"
	"github.com/rs/zerolog/log"
	"golang.org/x/text/language"
	"google.golang.org/grpc"
)

func UnaryLocaleInterceptor(
	ctx context.Context,
	req any,
	_ *grpc.UnaryServerInfo,
	next grpc.UnaryHandler,
) (any, error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwgrpc.UnaryLocaleInterceptor")
	defer span.End()

	return next(localeInterceptor(ctx), req)
}

func StreamLocaleInterceptor(
	req any,
	stream grpc.ServerStream,
	_ *grpc.StreamServerInfo,
	next grpc.StreamHandler,
) error {
	ctx, span, _ := telemetry.StartSpan(stream.Context(), "hwgrpc.StreamLocaleInterceptor")
	defer span.End()
	stream = WrapServerStream(stream, ctx)

	ctx = localeInterceptor(stream.Context())
	stream = WrapServerStream(stream, ctx)
	return next(req, stream)
}

// localeInterceptor parses the Accept-Language header.
// Also see hwlocale.WithLocales, hwlocale.GetLocalesTags and hwlocale.GetLocalesStrings
func localeInterceptor(ctx context.Context) context.Context {
	metaData := metadata.ExtractIncoming(ctx)

	langHeader := metaData.Get("accept-language")
	tags, ok := parseLocales(langHeader)
	if !ok {
		log.Warn().Str("langHeader", langHeader).Msg("invalid accept-language header received")
	}

	return hwlocale.WithLocales(ctx, tags)
}

// parseLocales parses an HTTP Accept-Language Header Value into a descending-sorted language.Tag slice wrt. priority.
// The bool indicates success.
// See: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Language
// and: https://datatracker.ietf.org/doc/html/rfc2616#section-14.4
func parseLocales(langHeader string) ([]language.Tag, bool) {
	type langT struct {
		tag language.Tag
		q   float32
	}
	langs := make([]langT, 0)

	parts := strings.Split(langHeader, ",")
	for _, part := range parts {
		qWeightParts := strings.Split(part, ";q=")
		var q float32 = 1.0 // default q-weight
		lang := strings.TrimSpace(qWeightParts[0])

		if len(qWeightParts) != 1 {
			if parsed, err := strconv.ParseFloat(strings.TrimSpace(qWeightParts[1]), 32); err != nil {
				// invalid header, stop parsing
				return []language.Tag{}, false
			} else {
				q = float32(parsed)
			}
		}
		if tag, err := language.Parse(lang); err != nil {
			continue // maybe we just don't know the language
		} else {
			langs = append(langs, langT{tag: tag, q: q})
		}
	}

	// no priority queue needed, as we deal with small lengths
	sort.SliceStable(langs, func(i, j int) bool {
		return langs[i].q > langs[j].q
	})
	return hwutil.Map(langs, func(lang langT) language.Tag {
		return lang.tag
	}), true
}
