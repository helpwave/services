package common

import (
	"context"
	"github.com/coreos/go-oidc"
	"golang.org/x/oauth2"
	"hwutil"
	"logging"
	"strings"

	zlog "github.com/rs/zerolog/log"
)

// to avoid ambiguity please read: https://wiki.helpwave.de/doc/keycloak-jedzCcERwF

// AccessTokenClaims as we expect them from keycloak
// To add a claim to this struct please add
// a client scope (and mapping) to the client in keycloak first
type AccessTokenClaims struct {
	// TODO
}

func (a AccessTokenClaims) AsExpected() error {
	return nil // TODO
}

// verifier and oauthConfig are set in setupKeycloak
var verifier *oidc.IDTokenVerifier
var oauthConfig *oauth2.Config

func getOAuthConfig() *oauth2.Config {
	if oauthConfig == nil {
		zlog.Fatal().Msg("getOAuthConfig called but keycloak not set up, please enable auth for this service")
	}
	return oauthConfig
}

func getVerifier() *oidc.IDTokenVerifier {
	if verifier == nil {
		zlog.Fatal().Msg("getVerifier called but keycloak not set up, please enable auth for this service")
	}
	return verifier
}

// GetAuthCodeURL is usually not of interest for resource providers (i.e. services other than auth-svc).
// It generates a URL for the end-user to browse to, to start the OIDC token dance.
// Service must be set up with auth!
func GetAuthCodeURL() string {
	return getOAuthConfig().AuthCodeURL("") // FIXME: add CSRF token
}

// ExchangeCodeForTokens is usually not of interest for resource providers (i.e. services other than auth-svc).
// It exchanges an auth code for an initial access/refresh token pair (+ an ID token).
// The access token is not verified yet.
// Service must be set up with auth!
func ExchangeCodeForTokens(code string) (*oauth2.Token, error) {
	return getOAuthConfig().Exchange(context.Background(), code)
}

// VerifyAccessToken verifies the correctness of the accessToken and returns its claim.
// The claim is checked to be as expected.
// Service must be set up with auth!
func VerifyAccessToken(accessToken string) (*AccessTokenClaims, error) {
	// technically this method is meant to be used to verify identity tokens,
	// but we use it for access tokens instead as keycloak uses similar JWTs for access tokens
	//
	// Verify() verifies formal validity, proper signing, usage of the correct keys, ...
	// and still exposes .Claims() for us to access non-standard ID token claims
	idToken, err := getVerifier().Verify(context.Background(), accessToken)
	if err != nil {
		return nil, err
	}

	// now get the claims
	claims := AccessTokenClaims{}
	if err = idToken.Claims(&claims); err != nil {
		return nil, err
	}

	// and check that they are in the expected format
	if err = claims.AsExpected(); err != nil {
		return nil, err
	}

	return &claims, nil
}

// RefreshToken is usually not of interest for resource providers (i.e. services other than auth-svc).
// It requests a new access token using refresh token.
// The resulting token MUST NOT be modified!
func RefreshToken(refreshToken string) (*oauth2.Token, error) {
	token := &oauth2.Token{
		RefreshToken: refreshToken,
	}

	// by not providing an AccessToken, the oauth2.Token will be invalid
	// immediately causing a refresh using the provided refreshToken
	token, err := getOAuthConfig().TokenSource(context.Background(), token).Token()
	if err != nil {
		return nil, err
	}

	_, err = VerifyAccessToken(token.AccessToken)
	if err != nil {
		return nil, err
	}

	return token, nil
}

func KeycloakBaseURL() string {
	return strings.TrimRight(hwutil.MustGetEnv("KEYCLOAK_URL"), "/")
}

func KeycloakRealm() string {
	return hwutil.MustGetEnv("KEYCLOAK_REALM")
}

func OidcURL() string {
	return KeycloakBaseURL() + "/realms/" + KeycloakRealm()
}

// setupKeycloak mainly sets up the provider
// for oauth clients (i.e. auth-svc) it also sets up oauthConfig
func setupKeycloak() {
	provider, err := oidc.NewProvider(context.Background(), OidcURL())
	if err != nil {
		zlog.Fatal().Err(err).Send()
	}

	if hwutil.HasEnv("CLIENT_ID") {
		oauthConfig = &oauth2.Config{
			ClientID:     hwutil.MustGetEnv("CLIENT_ID"),
			ClientSecret: hwutil.MustGetEnv("CLIENT_SECRET"),
			RedirectURL:  hwutil.GetEnvOr("CALLBACK_URL", ""),
			Endpoint:     provider.Endpoint(),

			// as per OIDC spec the openid scope MUST be set!
			Scopes: []string{oidc.ScopeOpenID},
		}
		zlog.Debug().Msg(logging.Omit(logging.Formatted(oauthConfig), oauthConfig.ClientSecret))
	} else {
		zlog.Debug().Msg("CLIENT_ID not set, skipped oauth client setup")
	}

	// we have to SkipClientIDCheck due to
	// https://github.com/keycloak/keycloak/issues/12415
	// this is ok as long as we are the only client
	// (even if not client scoping should do the rest)
	//
	// there is a workaround available if we need it:
	// https://red.ht/3XU0BEX
	verifier = provider.Verifier(&oidc.Config{SkipClientIDCheck: true})
}
