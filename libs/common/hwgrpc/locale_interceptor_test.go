package hwgrpc_test

import (
	"context"
	"fmt"
	"hwlocale"
	"testing"

	"common/hwgrpc"

	"google.golang.org/grpc/metadata"
)

func TestLocaleInterceptor(t *testing.T) {
	testCases := map[string][]string{
		"de":     {"de"},
		"en":     {"en"},
		"de,en":  {"de", "en"},
		"en,de":  {"en", "de"},
		"123":    {},
		"de,123": {"de"},
	}

	for acceptLanguageHeader, expectedLocalesStrings := range testCases {
		t.Run(fmt.Sprintf("Test localeInterceptor with accept-language header of '%s'", acceptLanguageHeader),
			func(t *testing.T) {
				ctx := context.Background()

				md := metadata.New(map[string]string{
					"accept-language": acceptLanguageHeader,
				})
				ctx = metadata.NewIncomingContext(ctx, md)

				ctx = hwgrpc.LocaleInterceptor(ctx)

				localesStrings := hwlocale.GetLocalesStrings(ctx)

				for i, localeString := range localesStrings {
					if localeString != expectedLocalesStrings[i] {
						t.Errorf("expected %s got %s", expectedLocalesStrings, localesStrings)
					}
				}
			})
	}
}
