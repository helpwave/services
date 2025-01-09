package auth

import (
	"context"
	"encoding/base64"
	"fmt"
	"hwutil"
	"telemetry"
	"time"

	"github.com/coreos/go-oidc"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"golang.org/x/oauth2"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// to avoid ambiguity please read: https://wiki.helpwave.de/doc/keycloak-jedzCcERwF

var (
	DefaultOAuthIssuerURL   = "https://accounts.helpwave.de/realms/helpwave"
	DefaultOAuthClientID    = "helpwave-services"
	onlyFakeAuthEnabled     bool
	insecureFakeTokenEnable = false
	oauthConfig             *oauth2.Config
	Verifier                *oidc.IDTokenVerifier
	authSetupDone           bool
	// FakeTokenValidFor fakes the validity of a fake token.
	// A fake token cannot expire by itself because a
	// fake token just contains the payload.
	FakeTokenValidFor = time.Second * 30
)

type (
	claimsKey         struct{}
	tokenExpiresKey   struct{}
	userIDKey         struct{}
	organizationIDKey struct{}
)

func GetOAuthIssuerURL() string {
	issuerURL := hwutil.GetEnvOr("OAUTH_ISSUER_URL", DefaultOAuthIssuerURL)
	if issuerURL != DefaultOAuthIssuerURL {
		zlog.Warn().
			Str("OAUTH_ISSUER_URL", issuerURL).
			Msg("using custom OAuth issuer url")
	}
	return issuerURL
}

func GetOAuthClientID() string {
	clientID := hwutil.GetEnvOr("OAUTH_CLIENT_ID", DefaultOAuthClientID)
	if clientID != DefaultOAuthClientID {
		zlog.Warn().Str("OAUTH_CLIENT_ID", clientID).Msg("using custom OAuth client id")
	}
	return clientID
}

func IsOnlyFakeAuthEnabled() bool {
	return onlyFakeAuthEnabled
}

func IsInsecureFakeTokenEnabled() bool {
	return insecureFakeTokenEnable
}

// IsAuthSetUp is true, GetOAuthConfig and GetIDTokenVerifier can be accessed safely
func IsAuthSetUp() bool {
	return oauthConfig != nil && Verifier != nil
}

func GetOAuthConfig(ctx context.Context) *oauth2.Config {
	log := zlog.Ctx(ctx)

	if oauthConfig == nil {
		log.Fatal().Msg("GetOAuthConfig called but auth is not set up, please enable auth for this service")
	}
	return oauthConfig
}

func GetIDTokenVerifier(ctx context.Context) *oidc.IDTokenVerifier {
	log := zlog.Ctx(ctx)

	if Verifier == nil {
		log.Fatal().Msg("GetIDTokenVerifier called but auth is not set up, please enable auth for this service")
	}
	return Verifier
}

// IDTokenClaims as we expect them from our auth provider
// Make sure to keep in sync with claims when adding values
type IDTokenClaims struct {
	// Subject: User ID
	Sub string `json:"sub" validate:"uuid,required"`

	// Claim: email
	Email string `json:"email" validate:"email,required"`

	// Subject: name
	Name string `json:"name" validate:"required"`

	// Subject: preferred_username
	PreferredUsername string `json:"preferred_username" validate:"required"`

	// Subject: organization
	Organization *OrganizationTokenClaim `json:"organization" validate:"required"`
}

type OrganizationTokenClaim struct {
	ID   string `json:"id" validate:"required,uuid"`
	Name string `json:"name" validate:"required"`
}

func (t IDTokenClaims) AsExpected() error {
	return hwutil.Validate(t)
}

// VerifyIDToken verifies the correctness of the accessToken and returns its claim.
// The claim is checked to be as expected.
// Service must be set up with auth!
// When the token gets successfully verified, the function returns the token claims as the first return param
// and the time when the token expires as the second return param.
func VerifyIDToken(ctx context.Context, token string) (*IDTokenClaims, *time.Time, error) {
	// Verify() verifies formal validity, proper signing, usage of the correct keys, ...
	// and still exposes .Claims() for us to access non-standard ID token claims
	idToken, err := GetIDTokenVerifier(ctx).Verify(context.Background(), token)
	if err != nil {
		return nil, nil, fmt.Errorf("getIDTokenVerifier: verify failed: %w", err)
	}

	// now get the claims
	claims := IDTokenClaims{}
	if err = idToken.Claims(&claims); err != nil {
		return nil, nil, fmt.Errorf("getIDTokenVerifier: could not get claims: %w", err)
	}

	// and check that they are in the expected format
	if err = claims.AsExpected(); err != nil {
		return nil, nil, fmt.Errorf("getIDTokenVerifier: claims are not as expected: %w", err)
	}

	return &claims, &idToken.Expiry, nil
}

// VerifyFakeToken accepts a Base64 encoded json structure with the schema of IDTokenClaims
// When the token gets successfully verified, the function returns the token claims as the first return param
// and the time when the token expires as the second return param.
func VerifyFakeToken(ctx context.Context, token string) (*IDTokenClaims, *time.Time, error) {
	log := zlog.Ctx(ctx)

	plainToken, err := base64.StdEncoding.DecodeString(token)
	if err != nil {
		return nil, nil, fmt.Errorf("VerifyFakeToken: cant decode fake token: %w", err)
	}

	claims := IDTokenClaims{}
	if err := hwutil.ParseValidJSON(plainToken, &claims); err != nil {
		return nil, nil, fmt.Errorf("VerifyFakeToken: cant parse json: %w", err)
	}

	if err = claims.AsExpected(); err != nil {
		return nil, nil, fmt.Errorf("VerifyFakeToken: claims not as expected: %w", err)
	}

	log.Warn().Interface("claims", claims).Msg("fake token was verified")

	expiry := time.Now().Add(FakeTokenValidFor)
	return &claims, &expiry, err
}

func ContextWithAuthClaims(ctx context.Context, claims *IDTokenClaims) context.Context {
	return context.WithValue(ctx, claimsKey{}, claims)
}

func ContextWithTokenExpires(ctx context.Context, tokenExpires *time.Time) context.Context {
	return context.WithValue(ctx, tokenExpiresKey{}, tokenExpires)
}

func ContextWithUserID(ctx context.Context, userID uuid.UUID) context.Context {
	return context.WithValue(ctx, userIDKey{}, userID)
}

func ContextWithOrganizationID(ctx context.Context, organizationID uuid.UUID) context.Context {
	return context.WithValue(ctx, organizationIDKey{}, organizationID)
}

// GetAuthClaims extracts AccessTokenClaims from the request context, if they exist
// They are checked to be as expected and the token it was extracted from was valid.
// If an error is returned, no access token was extracted for this request.
// This either means no token was supplied by the client, or Auth was not set up in Setup.
func GetAuthClaims(ctx context.Context) (*IDTokenClaims, error) {
	res, ok := ctx.Value(claimsKey{}).(*IDTokenClaims)
	if !ok || res == nil {
		return nil, status.Error(codes.Unauthenticated, "authentication required")
	} else {
		return res, nil
	}
}

// SessionValidUntil returns time.Time when the session gets marked as expired
func SessionValidUntil(ctx context.Context) (time.Time, error) {
	res, ok := ctx.Value(tokenExpiresKey{}).(*time.Time)
	if !ok {
		return time.Now(), status.Error(codes.Internal, "tokenExpires not in context, set up auth")
	} else {
		return *res, nil
	}
}

// MaybeGetUserID can be used instead of MustGetUserID
func MaybeGetUserID(ctx context.Context) *uuid.UUID {
	res, ok := ctx.Value(userIDKey{}).(uuid.UUID)
	if !ok {
		return nil
	}
	return &res
}

// MustGetUserID panics, if context does not contain the userIDKey,
// which should have been set in the auth middleware
// Also see MaybeGetUserID, if you can not ensure that
func MustGetUserID(ctx context.Context) uuid.UUID {
	res := MaybeGetUserID(ctx)
	if res == nil {
		panic("MustGetUserID called, but userID not in context, set up auth for this handler!")
	}
	return *res
}

// MaybeGetOrganizationID can be used instead of MustGetOrganizationID
func MaybeGetOrganizationID(ctx context.Context) *uuid.UUID {
	res, ok := ctx.Value(organizationIDKey{}).(uuid.UUID)
	if !ok {
		return nil
	}
	return &res
}

// MustGetOrganizationID panics, if context does not contain the organizationIDKey,
// which should have been set in the auth middleware
// Also see MaybeGetOrganizationID, if you can not ensure that
func MustGetOrganizationID(ctx context.Context) uuid.UUID {
	res := MaybeGetOrganizationID(ctx)
	if res == nil {
		panic("MustGetOrganizationID called, but organizationID not in context, set up auth for this handler!")
	}
	return *res
}

// SetupAuth sets up auth, such that GetIDTokenVerifier and GetOAuthConfig work
// optionally, this can be skipped by enabling only fake tokens (for testing)
func SetupAuth(ctx context.Context, fakeOnly bool, passedInsecureFakeTokenEnable bool) {
	log := zlog.Ctx(ctx)

	if authSetupDone {
		log.Warn().Msg("SetupAuth was called more then once, early return")
		return
	}

	if fakeOnly {
		log.Error().Msg("only setting up auth for fake tokens. Never do this in production!")
		onlyFakeAuthEnabled = true
		return
	}

	insecureFakeTokenEnable = passedInsecureFakeTokenEnable

	provider, err := oidc.NewProvider(context.Background(), GetOAuthIssuerURL())
	if err != nil {
		log.Fatal().Err(err).Send()
	}

	oauthConfig = &oauth2.Config{
		ClientID: GetOAuthClientID(),
		Endpoint: provider.Endpoint(),
	}

	log.Debug().Msg(telemetry.Formatted(oauthConfig))

	Verifier = provider.Verifier(&oidc.Config{ClientID: oauthConfig.ClientID})

	authSetupDone = true
}
