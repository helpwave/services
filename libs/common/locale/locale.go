package locale

import (
	"context"
	"embed"
	"hwlocale"

	"github.com/nicksnyder/go-i18n/v2/i18n"
)

// be demure with new locales here, and favor an individual service's locale .go,
// as every change to common requires a re-build and re-deployment of ALL services

//go:embed locale.*.toml
var localeFS embed.FS
var lazy = hwlocale.NewLazyLocaleBundle(&localeFS)

func GenericError(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{
			MessageID: "GenericError",
		},
	}
}

func GenericInvalidArgsError(ctx context.Context, pluralCount int) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{
			MessageID:   "GenericInvalidArgsError",
			PluralCount: pluralCount,
		},
	}
}

func InvalidFieldError(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{
			MessageID: "InvalidFieldError",
		},
	}
}

func RequiredError(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{
			MessageID: "RequiredError",
		},
	}
}

func PermissionDeniedError(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{
			MessageID: "PermissionDenied",
		},
	}
}
