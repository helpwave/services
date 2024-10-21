package auth

import (
	"context"
	"encoding/base64"
	"errors"
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
	DEFAULT_OAUTH_ISSUER_URL = "https://accounts.helpwave.de/realms/helpwave"

	DEFAULT_OAUTH_CLIENT_ID = "helpwave-services"
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

func GetOAuthIssuerUrl() string {
	issuerUrl := hwutil.GetEnvOr("OAUTH_ISSUER_URL", DEFAULT_OAUTH_ISSUER_URL)
	if issuerUrl != DEFAULT_OAUTH_ISSUER_URL {
		zlog.Warn().
			Str("OAUTH_ISSUER_URL", issuerUrl).
			Msg("using custom OAuth issuer url")
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
	if err := hwutil.ParseValidJson(plainToken, &claims); err != nil {
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

func GetUserID(ctx context.Context) (uuid.UUID, error) {
	res, ok := ctx.Value(userIDKey{}).(uuid.UUID)
	if !ok {
		return uuid.UUID{}, status.Error(codes.Internal, "userID not in context, set up auth")
	} else {
		return res, nil
	}
}

func GetOrganizationID(ctx context.Context) (uuid.UUID, error) {
	res, ok := ctx.Value(organizationIDKey{}).(uuid.UUID)
	if !ok {
		return uuid.UUID{}, status.Error(codes.Internal, "organizationID not in context, set up auth")
	} else {
		return res, nil
	}
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

	provider, err := oidc.NewProvider(context.Background(), GetOAuthIssuerUrl())
	if err != nil {
		log.Fatal().Err(err).Send()
	}

	oauthConfig = &oauth2.Config{
		ClientID: GetOAuthClientId(),
		Endpoint: provider.Endpoint(),
	}

	log.Debug().Msg(telemetry.Formatted(oauthConfig))

	Verifier = provider.Verifier(&oidc.Config{ClientID: oauthConfig.ClientID})

	authSetupDone = true
}
