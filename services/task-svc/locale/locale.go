package locale

import (
	"context"
	"embed"
	"github.com/nicksnyder/go-i18n/v2/i18n"
	"hwlocale"
)

//go:embed locale.*.toml
var localeFS embed.FS

var bundle *i18n.Bundle

func Bundle(ctx context.Context) *i18n.Bundle {
	if bundle == nil {
		bundle = hwlocale.NewLocaleBundle(ctx, &localeFS)
	}
	return bundle
}

func InvalidRoomIdError(ctx context.Context) hwlocale.Locale {
	return hwlocale.Locale{
		Bundle: Bundle(ctx),
		Config: &i18n.LocalizeConfig{MessageID: "InvalidRoomIdError"},
	}
}
