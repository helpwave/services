package hwlocale

import (
	"context"
	"embed"
	"hwutil"
	"strings"

	"github.com/BurntSushi/toml"
	"github.com/nicksnyder/go-i18n/v2/i18n"
	"github.com/rs/zerolog"
	"golang.org/x/text/language"
)

// Locale is a tuple of an *i18n.Bundle and *i18n.LocalizeConfig.
// This way we bind a Config to the Bundle, which is able to process it.
// All hwlocale functions should only use this type instead of raw i18n.LocalizeConfigs
type Locale struct {
	Bundle *i18n.Bundle
	Config *i18n.LocalizeConfig
}

// NewLocaleBundle constructs a new LocaleBundle, optionally with an embedded file-system.
// At the fsys' root there must be files with the pattern "locale.<LANG>.toml", where LANG is a BCP 47 tag (e.g., "en")
// The format of which is akin to this struct: https://github.com/nicksnyder/go-i18n/blob/v2.4.0/v2/i18n/message.go
func NewLocaleBundle(ctx context.Context, fsys *embed.FS) *i18n.Bundle {
	log := zerolog.Ctx(ctx)

	bundle := i18n.NewBundle(FallbackLanguage(ctx))
	bundle.RegisterUnmarshalFunc("toml", toml.Unmarshal)

	if fsys != nil {
		loadFileSystem(ctx, bundle, *fsys)
	} else {
		log.Info().Msg("not loading locale files for service")
	}

	return bundle
}

// FallbackLanguage returns the set fallback language from the environment
func FallbackLanguage(ctx context.Context) language.Tag {
	str := hwutil.GetEnvOr("FALLBACK_LANGUAGE", "en")
	tag, err := language.Parse(str)
	if err != nil {
		zerolog.Ctx(ctx).Fatal().
			Err(err).
			Msg("FALLBACK_LANGUAGE could not be parsed")
	}

	return tag
}

// Localizer builds a Bundle-Localizer. Optional overrideTags can be set to specify the languages to use
func Localizer(ctx context.Context, bundle *i18n.Bundle, overrideTags ...string) *i18n.Localizer {
	locales := overrideTags
	if len(locales) == 0 {
		locales = GetLocalesStrings(ctx)
	}
	return i18n.NewLocalizer(bundle, locales...)
}

func LocalizeWithTag(ctx context.Context, locale Locale, overrideTags ...string) (string, language.Tag) {
	bundle := locale.Bundle
	config := locale.Config

	l := Localizer(ctx, bundle, overrideTags...)
	s, tag, err := l.LocalizeWithTag(config)
	log := zerolog.Ctx(ctx).With().
		Interface("config", config).
		Strs("locales", GetLocalesStrings(ctx)).
		Logger()
	if err != nil {
		log.Info().Err(err).Msg("missing translation")
	}
	if s == "" {
		log.Error().Msg("missing string")
	}
	return s, tag
}

func Localize(ctx context.Context, locale Locale, overrideTags ...string) string {
	s, _ := LocalizeWithTag(ctx, locale, overrideTags...)
	return s
}

func English(ctx context.Context, locale Locale) string {
	return Localize(ctx, locale, language.English.String())
}

func loadFileSystem(ctx context.Context, bundle *i18n.Bundle, fsys embed.FS) {
	log := zerolog.Ctx(ctx)

	dir, err := fsys.ReadDir(".")
	if err != nil {
		log.Fatal().Err(err).Msg("could not read localeFS")
	}
	for _, e := range dir {
		name := e.Name()
		if e.Type().IsRegular() &&
			strings.HasPrefix(name, "locale.") &&
			strings.HasSuffix(name, ".toml") {
			log.Debug().Msg("loading " + e.Name())
			if _, err := bundle.LoadMessageFileFS(fsys, e.Name()); err != nil {
				log.Fatal().Err(err).Str("file", e.Name()).Msg("could not load locale file")
			}
		} else {
			log.Debug().Msg("skipping " + e.Name())
		}
	}
}
