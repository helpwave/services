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

func PersonalOrganizationName(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{MessageID: "PersonalOrganizationName"},
	}
}

func PersonalOrganizationShortName(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: lazy.Bundle(ctx),
		Config: &i18n.LocalizeConfig{MessageID: "PersonalOrganizationShortName"},
	}
}
