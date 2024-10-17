package auth

import (
	"context"
	"encoding/base64"
	"errors"
	"fmt"
	"github.com/coreos/go-oidc"
	"github.com/google/uuid"
	zlog "github.com/rs/zerolog/log"
	"golang.org/x/oauth2"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"hwutil"
)

var (
	DEFAULT_OAUTH_ISSUER_URL = "https://accounts.helpwave.de/realms/helpwave"

	DEFAULT_OAUTH_CLIENT_ID = "helpwave-services"
	OnlyFakeAuthEnabled     bool
	InsecureFakeTokenEnable = false
	OauthConfig             *oauth2.Config
	Verifier                *oidc.IDTokenVerifier
)

type ClaimsKey struct{}
type UserIDKey struct{}
type OrganizationIDKey struct{}

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

// IsAuthSetUp is true, GetOAuthConfig and GetIDTokenVerifier can be accessed safely
func IsAuthSetUp() bool {
	return OauthConfig != nil && Verifier != nil
}

func GetOAuthConfig(ctx context.Context) *oauth2.Config {
	log := zlog.Ctx(ctx)

	if OauthConfig == nil {
		log.Fatal().Msg("GetOAuthConfig called but auth is not set up, please enable auth for this service")
	}
	return OauthConfig
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
func VerifyIDToken(ctx context.Context, token string) (*IDTokenClaims, error) {
	// Verify() verifies formal validity, proper signing, usage of the correct keys, ...
	// and still exposes .Claims() for us to access non-standard ID token claims
	idToken, err := GetIDTokenVerifier(ctx).Verify(context.Background(), token)
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

// VerifyFakeToken accepts a Base64 encoded json structure with the schema of IDTokenClaims
func VerifyFakeToken(ctx context.Context, token string) (*IDTokenClaims, error) {
	log := zlog.Ctx(ctx)

	plainToken, err := base64.StdEncoding.DecodeString(token)
	if err != nil {
		return nil, fmt.Errorf("VerifyFakeToken: cant decode fake token: %w", err)
	}

	claims := IDTokenClaims{}
	if err := hwutil.ParseValidJson(plainToken, &claims); err != nil {
		return nil, fmt.Errorf("VerifyFakeToken: cant parse json: %w", err)
	}

	if err = claims.AsExpected(); err != nil {
		return nil, fmt.Errorf("VerifyFakeToken: claims not as expected: %w", err)
	}

	log.Warn().Interface("claims", claims).Msg("fake token was verified")

	return &claims, err
}

func ContextWithUserID(ctx context.Context, userID uuid.UUID) context.Context {
	return context.WithValue(ctx, UserIDKey{}, userID)
}

func ContextWithOrganizationID(ctx context.Context, organizationID uuid.UUID) context.Context {
	return context.WithValue(ctx, OrganizationIDKey{}, organizationID)
}

// GetAuthClaims extracts AccessTokenClaims from the request context, if they exist
// They are checked to be as expected and the token it was extracted from was valid.
// If an error is returned, no access token was extracted for this request.
// This either means no token was supplied by the client, or Auth was not set up in Setup.
func GetAuthClaims(ctx context.Context) (*IDTokenClaims, error) {
	res, ok := ctx.Value(ClaimsKey{}).(*IDTokenClaims)
	if !ok || res == nil {
		return nil, status.Error(codes.Unauthenticated, "authentication required")
	} else {
		return res, nil
	}
}

func GetUserID(ctx context.Context) (uuid.UUID, error) {
	res, ok := ctx.Value(UserIDKey{}).(uuid.UUID)
	if !ok {
		return uuid.UUID{}, status.Error(codes.Internal, "userID not in context, set up auth")
	} else {
		return res, nil
	}
}

func GetOrganizationID(ctx context.Context) (uuid.UUID, error) {
	res, ok := ctx.Value(OrganizationIDKey{}).(uuid.UUID)
	if !ok {
		return uuid.UUID{}, status.Error(codes.Internal, "organizationID not in context, set up auth")
	} else {
		return res, nil
	}
}
