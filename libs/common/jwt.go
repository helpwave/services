package common

import (
	"context"
	"crypto/ecdsa"
	"errors"
	"fmt"
	"github.com/golang-jwt/jwt/v4"
	"github.com/google/uuid"
	"time"

	zerolog "github.com/rs/zerolog/log"
)

const Admin = "admin"

const devPrivateKey = `-----BEGIN EC PRIVATE KEY-----
MHcCAQEEINbeLv3X0Lwy03t4n8DOo8V5tOFcMW00kjiopeUi4xAnoAoGCCqGSM49
AwEHoUQDQgAEteZmZdBkEXr+MruFSHYDs75ArTDxouUDFsC1WEmAkbfh7zUp6ybM
9a54lQNkHZ2uW7pQ+9JkqTzvYU+pt7uAMg==
-----END EC PRIVATE KEY-----
`

const devPublicKey = `-----BEGIN PUBLIC KEY-----
MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEteZmZdBkEXr+MruFSHYDs75ArTDx
ouUDFsC1WEmAkbfh7zUp6ybM9a54lQNkHZ2uW7pQ+9JkqTzvYU+pt7uAMg==
-----END PUBLIC KEY-----
`

const refreshTokenDuration = time.Hour * 24 * 7
const accessTokenDuration = time.Minute * 10

var tokenPrivateKey *ecdsa.PrivateKey
var tokenPublicKey *ecdsa.PublicKey // nolint:unused

func SetupTokenSecrets(mode string, privateKey string, publicKey string) {
	if privateKey == "" || publicKey == "" {
		if mode == ProductionMode {
			zerolog.Fatal().Msg("could not find jwt-private.pem and/or jwt-public.pem")
		} else {
			privateKey = devPrivateKey
			publicKey = devPublicKey
			zerolog.Warn().Msg("using the dev keys for JWTs")
		}
	}

	private, err := jwt.ParseECPrivateKeyFromPEM([]byte(privateKey))
	if err != nil {
		zerolog.Fatal().Err(err).Msg("could not parse private key")
	}
	tokenPrivateKey = private

	public, err := jwt.ParseECPublicKeyFromPEM([]byte(publicKey))
	if err != nil {
		zerolog.Fatal().Err(err).Msg("could not parse public key")
	}
	tokenPublicKey = public
}

type UserOrOrgClaim struct {
	ID   uuid.UUID `json:"id"`
	Role string    `json:"role"`
}

type TokenClaim struct {
	Exp          time.Time      `json:"exp"`
	ID           uuid.UUID      `json:"id"`
	User         UserOrOrgClaim `json:"user"`
	Organization UserOrOrgClaim `json:"organization"`
}

func (claim TokenClaim) Valid() error {
	if claim.Exp.Before(time.Now()) {
		return jwt.ErrTokenExpired
	}
	return nil
}

type RefreshTokenClaim struct {
	Type string `json:"type"`
	TokenClaim
}

func (claim RefreshTokenClaim) Valid() error {
	if claim.Type != "refresh" {
		return errors.New("not a refresh token")
	}
	return claim.TokenClaim.Valid()
}

type AccessTokenClaim struct {
	Type string `json:"type"`
	TokenClaim
}

func (claim AccessTokenClaim) Valid() error {
	if claim.Type != "access" {
		return errors.New("not an access token")
	}
	return claim.TokenClaim.Valid()
}

func IssueRefreshToken(logCtx context.Context, user UserOrOrgClaim, org UserOrOrgClaim) (string, RefreshTokenClaim, error) {
	id := uuid.New()
	exp := time.Now().Add(refreshTokenDuration)

	claims := RefreshTokenClaim{
		Type: "refresh",
		TokenClaim: TokenClaim{
			Exp:          exp,
			ID:           id,
			User:         user,
			Organization: org,
		},
	}

	token := jwt.NewWithClaims(jwt.SigningMethodES256, claims)
	signedString, err := token.SignedString(tokenPrivateKey)
	if err != nil {
		return "", claims, err
	}

	zerolog.Ctx(logCtx).Info().
		Str("user_id", claims.User.ID.String()).
		Str("refresh_token_id", claims.ID.String()).
		Str("exp", claims.Exp.String()).
		Msg("issued new refresh token")

	return signedString, claims, nil
}

func ValidateRefreshToken(tokenString string) (*RefreshTokenClaim, error) {
	token, err := jwt.ParseWithClaims(tokenString, &RefreshTokenClaim{}, func(token *jwt.Token) (interface{}, error) {
		if _, ok := token.Method.(*jwt.SigningMethodECDSA); !ok {
			return nil, fmt.Errorf("unexpected signing method: %v", token.Header["alg"])
		}
		return tokenPublicKey, nil
	})

	if err != nil {
		return nil, err
	}

	if claims, ok := token.Claims.(*RefreshTokenClaim); ok && token.Valid {
		return claims, nil
	} else {
		return claims, errors.New("invalid refresh token")
	}
}

func IssueAccessToken(logCtx context.Context, user UserOrOrgClaim, org UserOrOrgClaim, refreshTokenId uuid.UUID) (string, AccessTokenClaim, error) {
	id := uuid.New()
	exp := time.Now().Add(accessTokenDuration)

	claims := AccessTokenClaim{
		Type: "access",
		TokenClaim: TokenClaim{
			Exp: exp,
			ID:  id,
			User: UserOrOrgClaim{
				ID:   user.ID,
				Role: user.Role,
			},
			Organization: UserOrOrgClaim{
				ID:   org.ID,
				Role: org.Role,
			},
		},
	}

	token := jwt.NewWithClaims(jwt.SigningMethodES256, claims)
	signedString, err := token.SignedString(tokenPrivateKey)
	if err != nil {
		return "", claims, err
	}

	zerolog.Ctx(logCtx).Info().
		Str("user_id", claims.User.ID.String()).
		Str("refresh_token_id", refreshTokenId.String()).
		Str("access_token_id", claims.ID.String()).
		Str("exp", claims.Exp.String()).
		Msg("issued new access token")

	return signedString, claims, nil
}

func ValidateAccessToken(tokenString string) (*AccessTokenClaim, error) {
	token, err := jwt.ParseWithClaims(tokenString, &AccessTokenClaim{}, func(token *jwt.Token) (interface{}, error) {
		if _, ok := token.Method.(*jwt.SigningMethodECDSA); !ok {
			return nil, fmt.Errorf("unexpected signing method: %v", token.Header["alg"])
		}
		return tokenPublicKey, nil
	})

	if err != nil {
		return nil, err
	}

	if claims, ok := token.Claims.(*AccessTokenClaim); ok && token.Valid {
		return claims, nil
	} else {
		return nil, errors.New("invalid access token")
	}
}
