package common

import (
	"common/auth"
	"context"
	"github.com/coreos/go-oidc"
	zlog "github.com/rs/zerolog/log"
	"golang.org/x/oauth2"
	"telemetry"
)

// to avoid ambiguity please read: https://wiki.helpwave.de/doc/keycloak-jedzCcERwF

// setupAuth sets up auth, such that GetIDTokenVerifier and GetOAuthConfig work
// optionally, this can be skipped by enabling only fake tokens (for testing)
func setupAuth(ctx context.Context, fakeOnly bool) {
	log := zlog.Ctx(ctx)

	if fakeOnly {
		log.Error().Msg("only setting up auth for fake tokens. Never do this in production!")
		auth.OnlyFakeAuthEnabled = true
		return
	}

	provider, err := oidc.NewProvider(context.Background(), auth.GetOAuthIssuerUrl())
	if err != nil {
		log.Fatal().Err(err).Send()
	}

	auth.OauthConfig = &oauth2.Config{
		ClientID: auth.GetOAuthClientId(),
		Endpoint: provider.Endpoint(),
	}

	log.Debug().Msg(telemetry.Formatted(auth.OauthConfig))

	auth.Verifier = provider.Verifier(&oidc.Config{ClientID: auth.OauthConfig.ClientID})
}
