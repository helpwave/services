package common

import (
	"context"
	"errors"
	"github.com/coreos/go-oidc"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"golang.org/x/oauth2"
	"hwutil"
	"logging"
)

var (
	oauthConfig              *oauth2.Config
	verifier                 *oidc.IDTokenVerifier
	DEFAULT_OAUTH_ISSUER_URL = "https://auth.helpwave.de"
)

func getOAuthConfig() *oauth2.Config {
	if oauthConfig == nil {
		zlog.Fatal().Msg("getOAuthConfig called but auth is not set up, please enable auth for this service")
	}
	return oauthConfig
}

func getIDTokenVerifier() *oidc.IDTokenVerifier {
	if verifier == nil {
		zlog.Fatal().Msg("getIDTokenVerifier called but auth is not set up, please enable auth for this service")
	}
	return verifier
}

// to avoid ambiguity please read: https://wiki.helpwave.de/doc/keycloak-jedzCcERwF

// IDTokenClaims as we expect them from our auth provider
// Make sure to keep in sync with claims when adding values
type IDTokenClaims struct {
	// Subject: User ID
	Sub string `json:"sub"`

	// Claim: email
	Email string `json:"email"`

	// Subject: name
	Name string `json:"name"`

	// Subject: nickname
	Nickname string `json:"nickname"`

	// Claim: organizations
	Organizations []uuid.UUID `json:"organizations"`
}

func (t IDTokenClaims) AsExpected() error {
	if len(t.Sub) == 0 {
		return errors.New("sub missing in id token")
	}

	if len(t.Email) == 0 {
		return errors.New("email missing in id token")
	}

	return nil
}

func isAuthSetUp() bool {
	return oauthConfig != nil && verifier != nil
}

func setupAuth() {
	issuerUrl := hwutil.GetEnvOr("OAUTH_ISSUER_URL", DEFAULT_OAUTH_ISSUER_URL)
	if issuerUrl != DEFAULT_OAUTH_ISSUER_URL {
		zlog.Warn().Str("OAUTH_ISSUER_URL", issuerUrl).Msg("using custom OAuth issuer url")
	}

	provider, err := oidc.NewProvider(context.Background(), issuerUrl)

	if err != nil {
		zlog.Fatal().Err(err).Send()
	}

	// We are doing this if/else to fail when
	// InsecureFakeTokenEnable is false and env OAUTH_CLIENT_ID is not set
	var clientId string
	if InsecureFakeTokenEnable {
		clientId = "fake_oauth_client_id"
	} else {
		clientId = hwutil.MustGetEnv("OAUTH_CLIENT_ID")
	}

	oauthConfig = &oauth2.Config{
		ClientID: clientId,
		Endpoint: provider.Endpoint(),
	}

	zlog.Debug().Msg(logging.Formatted(oauthConfig))

	verifier = provider.Verifier(&oidc.Config{ClientID: oauthConfig.ClientID})
}

// VerifyIDToken verifies the correctness of the accessToken and returns its claim.
// The claim is checked to be as expected.
// Service must be set up with auth!
func VerifyIDToken(token string) (*IDTokenClaims, error) {
	// Verify() verifies formal validity, proper signing, usage of the correct keys, ...
	// and still exposes .Claims() for us to access non-standard ID token claims
	idToken, err := getIDTokenVerifier().Verify(context.Background(), token)
	if err != nil {
		return nil, err
	}

	// now get the claims
	claims := IDTokenClaims{}
	if err = idToken.Claims(&claims); err != nil {
		return nil, err
	}

	// and check that they are in the expected format
	if err = claims.AsExpected(); err != nil {
		return nil, err
	}

	return &claims, nil
}

func GetAuthCodeURL() string {
	return getOAuthConfig().AuthCodeURL("")
}
