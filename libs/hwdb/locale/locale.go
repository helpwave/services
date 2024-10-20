package locale

import (
	"context"
	"embed"
	"hwlocale"

	"github.com/nicksnyder/go-i18n/v2/i18n"
)

//go:embed locale.*.toml
var localeFS embed.FS
var lazy = hwlocale.NewLazyLocaleBundle(&localeFS)

func GenericError(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{MessageID: "GenericError"},
	}
}

func InvalidArgsError(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{MessageID: "InvalidArgsError"},
	}
}

func MissingFieldsError(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{MessageID: "MissingFieldsError"},
	}
}
