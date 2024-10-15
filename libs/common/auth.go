package common

import (
	"context"
	"errors"
	"fmt"
	"hwutil"
	"telemetry"

	"github.com/coreos/go-oidc"
	zlog "github.com/rs/zerolog/log"
	"golang.org/x/oauth2"
)

var (
	onlyFakeAuthEnabled      bool
	oauthConfig              *oauth2.Config
	verifier                 *oidc.IDTokenVerifier
	DEFAULT_OAUTH_ISSUER_URL = "https://accounts.helpwave.de/realms/helpwave"
	DEFAULT_OAUTH_CLIENT_ID  = "helpwave-services"
)

func GetOAuthIssuerUrl() string {
	issuerUrl := hwutil.GetEnvOr("OAUTH_ISSUER_URL", DEFAULT_OAUTH_ISSUER_URL)
	if issuerUrl != DEFAULT_OAUTH_ISSUER_URL {
		zlog.Warn().Str("OAUTH_ISSUER_URL", issuerUrl).Msg("using custom OAuth issuer url")
	}
	return issuerUrl
}

func GetOAuthClientId() string {
	clientId := hwutil.GetEnvOr("OAUTH_CLIENT_ID", DEFAULT_OAUTH_CLIENT_ID)
	if clientId != DEFAULT_OAUTH_CLIENT_ID {
		zlog.Warn().Str("OAUTH_CLIENT_ID", clientId).Msg("using custom OAuth client id")
	}
	return clientId
}

func getOAuthConfig(ctx context.Context) *oauth2.Config {
	log := zlog.Ctx(ctx)

	if oauthConfig == nil {
		log.Fatal().Msg("getOAuthConfig called but auth is not set up, please enable auth for this service")
	}
	return oauthConfig
}

func getIDTokenVerifier(ctx context.Context) *oidc.IDTokenVerifier {
	log := zlog.Ctx(ctx)

	if verifier == nil {
		log.Fatal().Msg("getIDTokenVerifier called but auth is not set up, please enable auth for this service")
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

	// Subject: preferred_username
	PreferredUsername string `json:"preferred_username"`

	// Subject: organization
	Organization *OrganizationTokenClaim `json:"organization"`
}

type OrganizationTokenClaim struct {
	Id   string `json:"id"`
	Name string `json:"name"`
}

func (t IDTokenClaims) AsExpected() error {
	if len(t.Sub) == 0 {
		return errors.New("sub missing in id token")
	}

	if len(t.Email) == 0 {
		return errors.New("email missing in id token")
	}

	if len(t.Name) == 0 {
		return errors.New("name missing in id token")
	}

	if len(t.PreferredUsername) == 0 {
		return errors.New("preferred_username missing in id token")
	}

	if t.Organization == nil {
		return errors.New("organization missing in id token")
	}

	if len(t.Organization.Id) == 0 {
		return errors.New("organization.id missing in id token")
	}

	if len(t.Organization.Name) == 0 {
		return errors.New("organization.name missing in id token")
	}

	return nil
}

// When isAuthSetUp is true, getOAuthConfig and getIDTokenVerifier can be accessed safely
func isAuthSetUp() bool {
	return oauthConfig != nil && verifier != nil
}

// setupAuth sets up auth, such that getIDTokenVerifier and getOAuthConfig work
// optionally, this can be skipped by enabling only fake tokens (for testing)
func setupAuth(ctx context.Context, fakeOnly bool) {
	log := zlog.Ctx(ctx)

	if fakeOnly {
		log.Error().Msg("only setting up auth for fake tokens. Never do this in production!")
		onlyFakeAuthEnabled = true
		return
	}

	provider, err := oidc.NewProvider(context.Background(), GetOAuthIssuerUrl())
	if err != nil {
		log.Fatal().Err(err).Send()
	}

	oauthConfig = &oauth2.Config{
		ClientID: GetOAuthClientId(),
		Endpoint: provider.Endpoint(),
	}

	log.Debug().Msg(telemetry.Formatted(oauthConfig))

	verifier = provider.Verifier(&oidc.Config{ClientID: oauthConfig.ClientID})
}

// VerifyIDToken verifies the correctness of the accessToken and returns its claim.
// The claim is checked to be as expected.
// Service must be set up with auth!
func VerifyIDToken(ctx context.Context, token string) (*IDTokenClaims, error) {
	// Verify() verifies formal validity, proper signing, usage of the correct keys, ...
	// and still exposes .Claims() for us to access non-standard ID token claims
	idToken, err := getIDTokenVerifier(ctx).Verify(context.Background(), token)
	if err != nil {
		return nil, fmt.Errorf("getIDTokenVerifier: verify failed: %w", err)
	}

	// now get the claims
	claims := IDTokenClaims{}
	if err = idToken.Claims(&claims); err != nil {
		return nil, fmt.Errorf("getIDTokenVerifier: could not get claims: %w", err)
	}

	// and check that they are in the expected format
	if err = claims.AsExpected(); err != nil {
		return nil, fmt.Errorf("getIDTokenVerifier: claims are not as expected: %w", err)
	}

	return &claims, nil
}

func GetAuthCodeURL(ctx context.Context) string {
	return getOAuthConfig(ctx).AuthCodeURL("")
}
