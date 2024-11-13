package hwtesting

import (
	"context"
	zlog "github.com/rs/zerolog/log"
	"github.com/stillya/testcontainers-keycloak"
	"github.com/testcontainers/testcontainers-go"
	"github.com/testcontainers/testcontainers-go/wait"
)

const ImageKeycloak = "quay.io/phasetwo/phasetwo-keycloak:25.0.1"
const KeycloakAdminUser = "admin"
const KeycloakAdminPassword = "admin"
const KeycloakRealm = "helpwave"
const KeycloakClientID = "storytesting"

func startKeycloak(ctx context.Context) (endpoint string, teardown func()) {
	container, err := keycloak.Run(ctx,
		ImageKeycloak,
		testcontainers.WithWaitStrategy(wait.ForListeningPort("8080/tcp")),
		// keycloak.WithContextPath("/auth"),
		// keycloak.WithRealmImportFile("../testdata/realm-export.json"),
		keycloak.WithAdminUsername(KeycloakAdminUser),
		keycloak.WithAdminPassword(KeycloakAdminPassword),
	)

	if err != nil {
		zlog.Fatal().Err(err).Msg("could not start keycloak")
	}
	endpoint, err = container.GetAuthServerURL(ctx)
	if err != nil {
		zlog.Fatal().Err(err).Msg("could not start keycloak")
	}
	return endpoint, func() {
		if err := container.Terminate(ctx); err != nil {
			zlog.Fatal().Err(err).Msg("could not stop keycloak")
		}
	}
}

func SetKeycloakEnv(endpoint string) {
	/*
		OAUTH_KC_CLIENT_SECRET
		OAUTH_KC_REALM
		OAUTH_ISSUER_URL
		OAUTH_CLIENT_ID
	*/
}
